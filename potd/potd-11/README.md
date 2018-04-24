# POTD 11 --- Lenses, Part 4: A Special Challenge

This last part is for those who thought the preceding parts weren’t
quite hard enough; the combinator you need to implement here is
significantly more obtuse than those previously discussed.

## Problem 1 --- Implement `zoom`

The `zoom` function takes a lens and a computation in the `State`
monad where the state type is the *target* type of the lens, and spits
out a computation in the `State` monad where the state type is now the
*source* type of the lens.  Conceptually, it lets you temporarily work
within a fragment of your overall state as if that fragment *was* your
overall state.  For example:

```.haskell
do ... -- some computation on a complicated state
   zoom myLens $ do ... -- temporarily work within a fragment of the state...
                    ... -- ...
                    ... -- ...until here
   ... -- and now we have access to the full state again, with the fragment modified properly
```

This combinator is both practically useful and deeply connected to the
true nature of lenses and state. (For those interested, it’s a
slightly obfuscated expression of the fundamental duality between the
`State` monad and the `Store` comonad.  This is one reason why lenses
are a surprisingly deep topic in programming language theory: their
underlying behavior is *literally dual to the notion of state*.)

Can you successfully implement `zoom`?

```.haskell
zoom :: Lens s t -> State t a -> State s a
```

Here is some example usage:

```.haskell
ghci> S.runState (zoom fstLens $ S.modify (\oldStr -> init oldStr ++ "!")) ("Hello.", "World.")
((),("Hello!","World."))
```
