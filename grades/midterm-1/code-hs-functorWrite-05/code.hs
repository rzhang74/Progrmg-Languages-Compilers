data Pair a = Two a a
            | Zero
  deriving Show

instance Functor Pair where
   fmap Zero = Zero
   fmap (Two a b) = Two (fmap a) (fmap b)
