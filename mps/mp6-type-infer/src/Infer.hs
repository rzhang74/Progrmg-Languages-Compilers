
module Infer where

import Common

import Data.Map.Strict as H (Map, insert, lookup, empty, union, empty, singleton, fromList, toList, mapWithKey)

  {- question 1: fresh instance function -}

freshInst :: PolyTy -> FVState MonoTy
freshInst ([], tau) = return tau
freshInst (_, TyVar i) = return (TyVar i)
freshInst (x:xs, tau) = do t <- freshTVar
                           let newtau = liftMonoTy (substInit x (TyVar t)) tau
                           freshInst (xs, newtau)

freshInstFV :: FVState PolyTy -> FVState MonoTy
freshInstFV s = s >>= (\tau -> freshInst tau)

  {- question 2: occurs check -}

occurs :: VarId -> MonoTy -> Bool
occurs i tau = case tau of
    TyVar x -> if i == x then True else False
    TyConst _ [] -> False
    TyConst s (x:xs) -> (occurs i x) || (occurs i (TyConst s xs))


  {- question 3: unification -}

-- helper :: SubstEnv -> [(MonoTy, MonoTy)]  -> [(MonoTy, MonoTy)] 
-- helper env  = H.union sEnv1 (scRec (toList sEnv2))
--   where
--     scRec [] = sEnv2
--     scRec ((i, tau) : t) = H.insert (liftMonoTy Env1 i) (liftMonoTy sEnv1 tau) (scRec t)

unify :: Exp -> [(MonoTy, MonoTy)] -> FVState SubstEnv
unify exp [] = return H.empty
unify exp ((s,t):xs) = uni s t where
    uni a b | a == b = unify exp xs
    uni a@(TyConst _ _) b@(TyVar _) = unify exp ((b,a):xs)
    uni (TyConst "list" [t1]) (TyConst "list" [t2]) = unify exp (xs++[(t1,t2)])
    uni (TyConst "fun" [f1, f2]) (TyConst "fun" [f3, f4]) = unify exp (xs++[(f1,f3),(f2,f4)])
    uni (TyConst "pair" [p1, p2]) (TyConst "pair" [p3, p4]) = unify exp (xs++[(p1,p3),(p2,p4)])
    uni a@(TyVar v) b | not $ occurs v b = do env <- unify exp (map (\(s1,t1) -> (liftMonoTy (substInit v b) s1, liftMonoTy (substInit v b) t1)) xs)
                                              return $ H.insert v (liftMonoTy env b) env --substCompose (substInit v b) env2
    uni a b = throwError $ UnifError exp


  {- question 4: type inference -}

infer :: TypeEnv -> Exp -> MonoTy -> FVState SubstEnv
infer env e@(ConstExp c) tau = do sig <- constTySig(c)
                                  inst <- freshInst(sig)
                                  unify e [(tau, inst)]
                                  
infer env e@(VarExp c) tau = case H.lookup c env of
                                Nothing -> throwError $ LookupError c
                                Just x -> do inst <- freshInst(x)
                                             unify e [(tau, inst)]

infer env e@(LetExp c e1 e2) tau = do tau1 <- freshTau
                                      senv1 <- infer env e1 tau1
                                      senv2 <- infer (H.insert c (gen (liftEnv senv1 env) (liftMonoTy senv1 tau1)) (liftEnv senv1 env)) e2 (liftMonoTy senv1 tau) 
                                      return $ substCompose senv2 senv1

infer env e@(MonOpExp op e1) tau = do   tau1 <- freshTau
                                        senv1 <- infer env e1 tau1
                                        sig <- monopTySig(op)
                                        inst <- freshInst(sig)
                                        u <- unify e [(liftMonoTy senv1 (funTy tau1 tau), inst)]
                                        return $ substCompose senv1 u

infer env e@(BinOpExp op e1 e2) tau = do tau1 <- freshTau
                                         senv1 <- infer env e1 tau1
                                         tau2 <- freshTau
                                         senv2 <- infer (liftEnv senv1 env) e2 tau2
                                         sig <- binopTySig(op)
                                         inst <- freshInst(sig)
                                         u <- unify e [(liftMonoTy (substCompose senv2 senv1) (funTy tau1 (funTy tau2 tau)), inst)]
                                         return $ substCompose (substCompose u senv2) senv1

infer env e@(IfExp e1 e2 e3) tau =  do senv1 <- infer env e1 boolTy
                                       senv2 <- infer (liftEnv senv1 env) e2 (liftMonoTy senv1 tau)
                                       senv3 <- infer (liftEnv (substCompose senv2 senv1) env) e3 (liftMonoTy (substCompose senv2 senv1) tau)
                                       return $ substCompose (substCompose senv3 senv2) senv1

infer env e@(FunExp c e1) tau = do tau1 <- freshTau
                                   tau2 <- freshTau
                                   senv1 <- infer (H.insert c (quantifyMonoTy tau1) env) e1 tau2
                                   u <- unify e [(liftMonoTy senv1 tau, liftMonoTy senv1 (funTy tau1 tau2))]
                                   return $ substCompose u senv1

infer env e@(AppExp e1 e2) tau = do tau1 <- freshTau
                                    senv1 <- infer env e1 (funTy tau1 tau)
                                    senv2 <- infer (liftEnv senv1 env) e2 (liftMonoTy senv1 tau1)
                                    return $ substCompose senv2 senv1

infer env e@(LetRecExp c1 c2 e1 e2) tau = do tau1 <- freshTau
                                             tau2 <- freshTau
                                             senv1 <- infer (H.insert c2 (quantifyMonoTy tau1) (H.insert c1 (quantifyMonoTy (funTy tau1 tau2)) env)) e1 tau2
                                             senv2 <- infer (H.insert c1 (gen (liftEnv senv1 env) (liftMonoTy senv1 (funTy tau1 tau2))) (liftEnv senv1 env)) e2 (liftMonoTy senv1 tau)
                                             return $ substCompose senv2 senv1

inferInit :: TypeEnv -> Exp -> FVState MonoTy
inferInit env e = do
  tau <- freshTau
  sEnv <- infer env e tau
  return (liftMonoTy sEnv tau)

inferDec :: TypeEnv -> Dec -> FVState (TypeEnv, MonoTy)
inferDec env (AnonDec e') = do
  tau <- inferInit env e'
  return (env, tau)
inferDec env (LetDec x e') = do
  tau <- inferInit env (LetExp x e' (VarExp x))
  return (H.insert x (quantifyMonoTy tau) env, tau)
inferDec env (LetRec f x e') = do
  tau <- inferInit env (LetRecExp f x e' (VarExp f))
  return (H.insert f (quantifyMonoTy tau) env, tau)