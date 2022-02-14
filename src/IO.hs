module IO where
import Note

sampleRate = 48000

writeSound :: FilePath -> Note Sound -> IO ()
writeSound fp = writeFile fp . showSound

showSound :: Note Sound -> String
showSound (Note len sound) = concatMap (('\n':) . hexDouble . sound . (/ sampleRate)) [0 .. (sampleRate * len)]
  

hexDouble :: Double -> String
hexDouble = hexInt16 . abs . adjustNeg . floor . (* (2^15))
  where
    adjustNeg x
      | x >= 0 = x
      | otherwise = (2^16) - abs x

hexInt16 :: Int -> String
hexInt16 = concatMap hByte . bytesSplit16

bytesSplit16 :: Int -> [Int]
bytesSplit16 = take 2 . map (`mod` 256) . iterate (`div` 256)

hByte :: Int -> String
hByte b = [hNibble (b `div` 16), hNibble (b `mod` 16)]

hNibble :: Int -> Char
hNibble 0 = '0'
hNibble 1 = '1'
hNibble 2 = '2'
hNibble 3 = '3'
hNibble 4 = '4'
hNibble 5 = '5'
hNibble 6 = '6'
hNibble 7 = '7'
hNibble 8 = '8'
hNibble 9 = '9'
hNibble 10 = 'a'
hNibble 11 = 'b'
hNibble 12 = 'c'
hNibble 13 = 'd'
hNibble 14 = 'e'
hNibble 15 = 'f'
hNibble _ = error "oh no"

