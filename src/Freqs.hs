module Freqs where
import Note

type Freq = Double

noteFreq :: Double -> Double
noteFreq n = 440 * 2**(n / 12)

powerSeriesSin :: Double -> Sound
powerSeriesSin d x = ks * (1 / (1 + x * 10))
  where
    ks = (/ 2) $ sum $ map k [0 .. 8]
    k n = sin (x * d * 2 ^ n) / 2 ^ n

harmonicSeriesSin :: Double -> Sound
harmonicSeriesSin d x = ks
  where
    ks = (* 0.1) $ sum $ map k [1 .. 8]
    k n = sin (x * d * n) / n


x# n = x * 2**(n/12) 
x€ n = x / 2**(n/12)

r :: Double
r = 0
a3 = noteFreq (-12)
b3 = noteFreq (-10)
c4 = noteFreq (-9)
d4 = noteFreq (-7)
e4 = noteFreq (-5)
f4 = noteFreq (-4)
g4 = noteFreq (-2)
a4 = noteFreq 0
b4 = noteFreq 2
c5 = noteFreq 3
d5 = noteFreq 5
e5 = noteFreq 7
f5 = noteFreq 8
g5 = noteFreq 10
a5 = noteFreq 12
b5 = noteFreq 14
c6 = noteFreq 15
d6 = noteFreq 17
e6 = noteFreq 19
f6 = noteFreq 21
g6 = noteFreq 23




