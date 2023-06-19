%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

global = {
  \time 4/4
  \key ef \major
  \accidentalStyle piano
}

rightHand = \relative ef' {
  \global
  r8 ef16 d ef8 f g4\mordent af |
  r8 f16 ef f8 g af4\mordent bf |
  g8 c bf\prall af  g16 af bf af  g8 f |
  ef8 g bf ef~  ef16 c d ef  f8 ef |
  d16 ef d c  d ef c d  bf bf' a bf  g a f g |
  ef16 g f g  ef f d ef  c bf' a g  a bf g a |
  bf,16 bf' a g  a bf g a  f bf af g  f g ef f |
  d16 g f ef  d ef c d  f, ef' d c d ef c d |
  
  \barNumberCheck 9
  ef8 bf16 af bf8 c df4\mordent ef |
  r8 c16 bf c8 d ef4\mordent f |
  r8 d16 c d8 ef f4\mordent g |
  ef16 f ef d  ef f d ef  c c' bf c  af bf g af |
  f16 af g af  f g ef f  d c' b a  b c a b |
  c,16 c' bf af  bf c af bf  g c bf af  g af f g |
  e16 af g f  e f d e  g, f' e d  e f d e |
  f8 f,16 e f8 g af4\mordent bf |
  
  \barNumberCheck 17
  r8 g16 f g8 af bf4\mordent c |
  af8 df c\prall bf  a16 bf c bf  a8 g |
  f8 a c ef~  ef16 c df ef  f8 ef |
  df16 ef df c  df ef c df  bf af' g f  g af f g |
  af16 df, c bf  c df bf c  af g' f e  f g e f |
  g16 c, bf af  bf c af bf  g f' e d  e f d e |
  f8 af,16 g af8 bf c4\mordent df |
  r8 bf16 af bf8 c df4\mordent ef |
  
  \barNumberCheck 25
  c16 af' g af  f g ef f  df bf' af bf  c, df bf c |
  af16 c bf c  af bf g af  f ef' d c  d ef c d |
  ef8 ef,16 d ef8 f g4\mordent af |
  r8 f16 ef f8 g af4\mordent bf |
  g8 c bf\prall af  g16 af bf af  g8 f |
  ef8 f' ef\prall df  c16 df ef df  c8 bf |
  af8 c ef af~  af16 f g af bf8 af |
  \tag layout { 
    \appoggiatura { af8 } g8~ g32 f ef f  f4\downmordent 
  }
    \tag midi {
      af16 g16. f32 ef f  g f ef f \tuplet 3/2 { g32 f g f ef f }
    }
    ef2\fermata | 
  \bar "|."
}

leftHand = \relative ef {
  \clef bass
  \global
  ef4\mordent ef, r16 ef'' d ef  c d bf c |
  af16 c bf c  af bf g af  f ef' d c  d ef c d |
  ef,16 ef' d c  d ef c d  bf ef d c  bf c af bf |
  g16 c bf af  g af f g  c, bf' a g  a bf g a |
  bf8 bf,16 a bf8 c d4\mordent ef |
  r8 c16 bf c8 d ef4\mordent f |
  d8 g f\prall ef  d16 ef f ef  d8 c |
  bf8 d f af~  af16 f g af  bf8 af |
  
  \barNumberCheck 9
  g16 af g f  g af f g  ef ef' df ef  c df bf c |
  af16 bf af g  af bf g af  f f' ef f  d ef c d |
  bf16 c bf a  bf c af bf  g af f g  ef f d ef |
  c8 c16 b c8 d ef4\mordent f |
  r8 d16 c d8 ef f4\mordent g |
  ef8 af g\prall f  e16 f g f  e8 d |
  c8 e g bf~  bf16 g af bf  c8 bf |
  af16 bf af g  af bf g af  f f' ef f  df ef c df |
  
  \barNumberCheck 17
  bf16 df c df  bf c af bf  g f' e d  e f d e |
  f,16 f' ef df  ef f df ef  c f ef df  c df bf c |
  a16 df c bf  a bf g a  c, bf' a g  a bf g a |
  bf8 bf,16 a bf8 c df4\mordent ef |
  r8 af,16 g af8 bf c4\mordent df |
  r8 g,16 f g8 af bf4\mordent c |
  f,16 c'' bf c  af bf g af  f af g af  f g ef f |
  df16 f ef f  df ef c df  bf af' g f  g af f g |
  
  \barNumberCheck 25
  af8 ef16 d ef8 f g4\mordent af |
  r8 f16 ef f8 g af4\mordent bf |
  g16 af g f  g af f g  ef ef' d ef  c d bf c |
  af16 c bf c  af bf g af  f ef' d c  d ef c d |
  ef,16 ef' d c  d ef c d  bf ef d c  bf c af bf |
  g16 c bf af  g af f g  ef af g f  ef f df ef |
  c16 f ef df  c df bf c  f, ef' d c  d ef c d |
  ef8 g, af bf ef,2\fermata |
}

dynamics = {
  
}

inventionFiveMusic = \score { 
  \header {
    opus = "BWV 776"
  }
  \keepWithTag layout
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 5"
  } <<
    \new Staff = "upper" \rightHand
    \new Staff = "lower" \leftHand
  >>
  \layout {}
}

\include "articulate.ly"

inventionFiveMidi = \book {
  \bookOutputName "invention-no5-Eb-maj"
  \score { 
    \articulate {
      \keepWithTag midi
      <<
        \new Staff = "upper" << \rightHand \dynamics >>
        \new Staff = "lower" << \leftHand \dynamics >>
      >>
    }
    \midi {
      \tempo 4 = 84
    }
  }
}