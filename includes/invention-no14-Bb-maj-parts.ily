%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

global = {
  \time 4/4
  \key bf \major
  \accidentalStyle piano
}

rightHand = \relative bf' {
  \global
  \set Score.tempoHideNote = ##t
  r16 bf32 c d c bf16  f' d bf' f  d f32 ef d ef f16  bf, d f, af |
  g16 ef32 f g f ef16  bf' g ef' bf  g bf32 af g af bf16  ef, g c, ef |
  a,16 c32 d ef d c16  a' f c' a  ef' f,32 g a g f16  c' a f' c |
  d8 r  r16 g32 f ef f g16  c,8 r  r16 f32 ef d ef f16 |
  bf,8 r  r16 ef32 d c d ef16  a, c32 bf a bf c16  f,8 r |
  f'8 f, a c  f4 r |
  r8 f, bf d  f4 r |
  r8 g, bf c  e4 r |
  
  \barNumberCheck 9
  r16 f,32 g a g f16  c' a f' c  a' ef32 d c d ef16  a, c fs, a |
  bf8 d bf g  af f' af, f |
  g16 c,32 d ef d c16  g' ef c' g  d' af32 g f g af16  d, f b, g' |
  ef8 r  r16 c32 d ef d c16  c'8. bf16  a16 f32 g a g f16 |
  f'8. ef16  d16 bf32 c d c bf16  bf'8. af16  g16 bf32 af g af bf16 |
  ef,16 g32 f ef f g16  c, ef32 d c d ef16  a, c32 d ef d c16  
    f af,32 g f g af16 |
  g16 bf32 c d c bf16  ef g,32 f ef f g16  f a32 bf c bf a16  
    d f,32 ef d ef f16 |
  ef16 g32 a bf a g16  c16 ef,32 d c d ef16  d4  r16 bf'32 c d c bf16 |
  f'16 d bf' f  d f32 ef d ef f16  bf,16 ef bf ef  g, ef32 f g f ef16 |
  bf'16 g ef' bf  g bf32 af g af bf16  ef,8 ef'~  ef16 ef32 d c d ef16 |
  f,8 ef'~ ef16 c32 d ef d c16  \tempo 4 = 60 f d32 c bf c d16  \tempo 4 = 50
    f, bf c a |
  bf1\fermata |
  \bar "|."
}

leftHand = \relative bf {
  \clef bass
  \global
  bf8 bf, d f  bf4 r |
  r8 bf, ef g  bf4 r |
  r8 bf, c ef  a4 r |
  r16 bf32 c d c bf16  ef8 r  r16 a,32 bf c bf a16  d8 r |
  r16 g,32 a bf a g16  c16 c,32 d ef d c16  f8 f,  r16 c'' a f |
  r16 f32 g a g f16  c' a f' c  a c32 bf a bf c16  f, a c, ef |
  d16 bf32 c d c bf16  f' d bf' f  d16 f32 ef d ef f16  bf, d g, bf |
  e,16 g32 a bf a g16  e' c g' e  bf' c,32 d e d c16  g' e c' g |
  
  \barNumberCheck 9
  a8 c a f  fs a fs d |
  g16 g,32 a bf a g16  d' bf g' d  bf' af32 g f g af16  d, f bf, d |
  ef8 g ef c  b d b g |
  c16 c,32 d ef d c16  c'8. bf16  a16 f32 g a g f16  f'8. ef16 |
  d16 bf32 c d c bf16  bf'8. af16  g16 ef32 f g f ef16  ef'8. d16 |
  c16 ef32 d c d ef16  a,16 c32 bf a bf c16  f, a32 bf c bf a16 
    d f,32 ef d ef f16 |
  ef16 g32 a bf a g16  c16 ef,32 d c d ef16  d f32 g a g f16  
    bf d,32 c bf c d16 |
  c16 ef32 f g f ef16  a c,32 bf a bf c16  bf bf'32 c d c bf16  
    \clef treble f' d bf' f \clef bass |
  d16 f32 ef d ef f16  bf, d f, af  g ef32 f g f ef16  bf' g ef' bf |
  g16 bf32 af g af bf16  ef, g bf, d  c f,32 g a g f16  c' a ef' c |
  a16 c32 bf a bf c16  f, a c, ef  d bf'32 c d c bf16  f'8 f, |
  bf1\fermata |
}

inventionFourteenMusic = \score { 
  \header {
    opus = "BWV 785"
  }
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 14"
  } <<
    \new Staff = "upper" \rightHand
    \new Staff = "lower" \leftHand
  >>
  \layout {}
}

inventionFourteenMidi = \book {
  \bookOutputName "invention-no14-Bb-maj"
  \score { 
    <<
      \new Staff = "upper" \rightHand
      \new Staff = "lower" \leftHand
    >>
    \midi {
      \tempo 4 = 69
    }
  }
}