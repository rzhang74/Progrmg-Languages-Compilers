
module Infer where

import Common

import Data.Map.Strict as H (Map, insert, lookup, empty)

  {- question 1: fresh instance function -}

freshInst :: PolyTy -> FVState MonoTy
freshInst (qVars, tau) = undefined

freshInstFV :: FVState PolyTy -> FVState MonoTy
freshInstFV s = s >>= (\tau -> freshInst tau)

  {- question 2: occurs check -}

occurs :: VarId -> MonoTy -> Bool
occurs i tau = undefined

  {- question 3: unification -}

unify :: Exp -> [(MonoTy, MonoTy)] -> FVState SubstEnv
unify exp eqList = undefined

  {- question 4: type inference -}

infer :: TypeEnv -> Exp -> MonoTy -> FVState SubstEnv
infer env exp tau = undefined

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