module Lib where

import Freqs
import IO
import Instrument
import Note
import TestSong

libMain :: IO ()
libMain = putStrLn $ showSound output

--output :: Sound
--output = playSeq 0.2 $ map (powerSeries . tone) $ cycle [0, 0, 5, 5, 2, 2, 4, 0]

output :: Note Sound
output = nsConcat (map (fmap instrument) testSongM)

instrument :: Instrument
instrument = iScale (fadeParExp 0.6) $ testing [1, 1.39, 2.48, 4.47, 6.04, 8, 10, 12.5, 15.87] --((sin .) . (*)) . (* 4)
