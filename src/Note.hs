module Note where

import Control.Applicative (liftA2)

type Sound = Double -> Double

data Note a = Note Double a
type NoteS = Note Sound


nsNoteAt :: [NoteS] -> Double -> (Double, NoteS)
nsNoteAt l q = k l q 0
  where
    k :: [NoteS] -> Double -> Double -> (Double, NoteS)
    k [] _ _ = (0, Note 0 (const 0))
    k (n@(Note p s) : xs) q o
      | q < p = (o, n)
      | otherwise = k xs (q - p) (o + p)

nsConcat :: [NoteS] -> NoteS
nsConcat l = Note (sum $ map nLength l) k
  where
    k :: Sound
    k q = (nSound $ snd (n q)) (q - fst (n q))
    n q = nsNoteAt l q

nLength :: Note a -> Double
nLength (Note d _) = d
nSound :: Note a -> a
nSound (Note _ s) = s

nsPar :: [NoteS] -> NoteS
nsPar = undefined


instance Functor Note where
  fmap f (Note l s) = Note l (f s)

instance Applicative Note where
  pure = undefined
  liftA2 = undefined

instance Monad Note where
  a >>= b = undefined

playSeq :: Double -> [Sound] -> Sound
playSeq d ss x = s (x `modD` d)
  where
    s = ss !! floor (x / d)

frac :: Double -> Double
frac x = x - fromInteger (floor x)

modD :: Double -> Double -> Double
modD x n = frac (x / n) * n