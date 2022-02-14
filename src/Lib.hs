module Lib where

import Freqs
import IO
import Note
import TestSong

libMain :: IO ()
libMain = putStrLn $ showSound output

--output :: Sound
--output = playSeq 0.2 $ map (powerSeries . tone) $ cycle [0, 0, 5, 5, 2, 2, 4, 0]

output :: Note Sound
output = nsConcat (map (fmap instrument) testSongM)

instrument :: Freq -> Sound
instrument = ((sin .) . (*)) . (* 4)
