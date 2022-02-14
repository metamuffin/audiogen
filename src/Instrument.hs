module Instrument where

import Freqs
import Note

type Instrument = Freq -> Sound

iScale :: Sound -> Instrument -> Instrument
iScale so ins fre x = so x * ins fre x

fadeHyp :: Duration -> Sound
fadeHyp d x = 1 / (1 + x')
  where
    x' = x * 5 / d

fadeParExp :: Duration -> Sound
fadeParExp d x = (x' ^ 2) * exp (- x')
  where
    x' = x * 5 / d

powerSeriesSin :: Instrument
powerSeriesSin d x = ks
  where
    ks = (/ 2) $ sum $ map k [0 .. 8]
    k n = sin (x * d * 2 ^ n) / 2 ^ n

testing :: Instrument
testing d x = ks
  where
    ks = (/ 2) $ sum $ map k [0 .. 8]
    k n = sin (x * d * 2 ^ n) / 2 ^ n

harmonicSeriesSin :: Instrument
harmonicSeriesSin d x = ks
  where
    ks = (* 0.1) $ sum $ map k [1 .. 8]
    k n = sin (x * d * n) / n
