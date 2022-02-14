module TestSong where

import Note
import Freqs

testSongM ::[Note Freq]
testSongM = [
    Note 0.5 g4,Note 0.5 c5,Note 0.5 $d4€1,Note 0.5 d5,
    Note 0.5 a4,Note 0.25 $e4€1,Note 0.5 f4,Note 0.25 d5,Note 0.5 g4,
    Note 0.5 c5,Note 0.25 a4,Note 0.5 $b4€1,Note 0.25 g4,Note 0.5 d5,
    Note 0.5 g5,Note 0.5 $e5€1,Note 0.25 d5,Note 0.25 c5,Note 0.5 $b4€1,
    Note 0.5 a4,Note 0.5 $e5€1,Note 0.25 $b4€1,Note 0.25 c5, --tie
    Note 1.0 d5,Note 0.5 f4,Note 0.5 d5,Note 0.5 g4,

    Note 0.5 a4,Note 0.5 f4,Note 0.5 c5,Note 0.5 $b4€1,
    Note 0.5 g4,Note 0.5 d4,Note 0.25 f4,Note 0.25 g4,
    Note 1.0 a4,Note 0.5 c5,Note 0.25 d5,Note 0.25 c5,Note 0.5 $b4€1,
    Note 0.5 g4,Note 0.25 a4,Note 0.25 $b4€1,Note 0.25 c5,Note 0.25 d5,Note 0.5 c5,
    Note 0.5 a4,Note 0.5 g4,Note 0.5 r,Note 0.5 r
    ]
{-
testSongA = [
    Note 0.5 G2,Note 0.5 C3,Note 0.5 Bb2,Note 0.5 D3,
    Note 0.5 G2,Note 0.5 C3,Note 0.25 R,Note 0.25 Bb2,Note 0.5 D3,
    Note 0.5 G2,Note 0.5 C3,Note 0.25 R,Note 0.25 Bb2,Note 0.5 D3,
    Note 0.5 G2,Note 0.5 C3,Note 0.25 Bb2,Note 0.25 A2,Note 0.5 D3,
    Note 0.5 G2,Note 0.5 C3,Note 0.25 Bb2,Note 0.25 A2,Note 0.5 D3,
    Note 0.5 G2,Note 0.5 C3,Note 0.5 Bb2,Note 0.5 D3,

    Note 0.5 G2,Note 0.5 C3,Note 0.5 Bb2,Note 0.5 D3,
    Note 0.5 G2,Note 0.5 C3,Note 0.25 Bb2,Note 0.25 A2,Note 0.5 D3,
    Note 0.5 G2,Note 0.5 C3,Note 0.25 Bb2,Note 0.25 A2,Note 0.5 D3,
    Note 0.5 G2,Note 0.25 C3,Note 0.25 D3,Note 0.25 Bb2,Note 0.25 A2,Note 0.5 D3,
    Note 0.5 A2,Note 0.5 G2,Note 0.5 R,Note 0.5 R
    ]
-}
