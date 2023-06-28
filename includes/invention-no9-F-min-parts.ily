%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "midi-title.ily"

global = {
  \time 3/4
  \key f \minor
  \accidentalStyle piano
}

rightHand = \relative c'' {
  \global
  c16 bf af g  af8 f df'4~ |
  df16 c bf a  bf8 g  e'4~ |
  e16 f g af  bf8 g16 \once \omit Accidental e  df8 c |
  bf16 af g af  bf df c bf  af g f e |
  af8 f'~ f16 g af g  f ef! df c |
  bf8 g'~ g16 af bf af  g f e d |
  c16 d e f  g af bf g  f e f e |
  f8 c~ c16 bf af g  f e af g |
  
  \barNumberCheck 9
  c16 bf af g  af8 f af'4~ |
  af16 g f e  f8 d b4~ |
  b16 c d ef  f8 d16 b af8 g~ |
  g16 f ef d  ef8 c ef'4~ |
  ef16 d c b  c8 a fs'4~ |
  fs16 g a bf  c8 a16 fs  ef8 d |
  \tag layout {
    b4.\downprall b8 c4~\prallmordent |
    \after 16. \turn c8. d16 d4.\upprall c8 |
  }
  \tag midi {
    c32 b af b c b \tuplet 3/2 { c32 b c } b8 b c32 d c d c b c16~ |
    c32 d c b c16 d c32 d ef d ef d \tuplet 3/2 { ef32 d ef } d8 c |
  }
  
  \barNumberCheck 17
  c4~ c16 d ef d  c bf af g |
  f8 d'~ d16 ef f ef  d c b a |
  g16 a b c  d ef f d  c b c b |
  g'4~ g16 f ef d  c4~ |
  c16 bf a g  a8 f ef'4~ |
  ef16 df c df  ef gf f ef  df c bf af |
  g!8 bf'~ bf16 af \once \omit Accidental g f  ef df c bf |
  af8 c ef g af4~ |
  
  \barNumberCheck 25
  af16 g f ef  df bf af'8  g4~ |
  g16 f ef df  c af gf'8  f4~ |
  f16 ef df c  bf af g af  bf4~ |
  bf16 af g f  e f g af  bf c df bf |
  c16 bf af g  af8 f  df'4~ |
  df16 c bf a  bf8 g  e'4~ |
  e16 f g af  bf8 g16 e  df8 c |
  bf16 af g af  bf df c bf  af g f e |
  \tag layout { \after 8*7/8 \turn c'8.\mordent df16 g,4.\downprall f8 | }
  \tag midi { 
    \tuplet 3/2 { c'32 bf c df c bf } c16 df af32 g f g 
      \tuplet 5/4 { af g af g af } g8. f16 | 
  }
  f2.\fermata |
  \bar "|."
}

leftHand = \relative f, {
  \clef bass
  \global
  \set Score.tempoHideNote = ##t
  f8 f'~ f16 g af g  f ef df c |
  bf8 g'~ g16 af bf af  g f e d |
  c16 d e f  g af bf g  f e f e |
  f4 r16 c d e  f g af bf |
  c16 bf af g  af8 f df'4~ |
  df16 c bf a  bf8 g \clef treble e'4~ |
  e16 f g af  bf8 g16 \once \omit Accidental e  df8 c |
  \clef bass bf16 af g af  bf df c bf  af g f e |
  
  \barNumberCheck 9
  af8 f~ f16 g af g  f ef d c |
  b8 af'~ af16 g f ef  d c b a |
  g16 a b c  d ef f d  c b c b |
  ef8 c'~ c16 d ef d  c bf a g |
  fs8 ef'~ ef16 d c bf  a g fs e |
  d16 e fs g  a bf c a  g fs g fs |
  g16 a b c  d ef f d  ef c d ef |
  f16 g af f  g d ef f  g, f' ef d |
  
  \barNumberCheck 17
  ef16 f, ef d  ef8 c af'4~ |
  af16 g f e  f8 d b'4~  |
  b16 c d ef  f8 d16 \once \omit Accidental b  af8 g |
  f16 ef d ef  f af g f  ef d c bf |
  a8 c'~ c16 bf a g  f ef df c |
  bf8 df f a bf4~ |
  bf16 af g f  g8 ef df'4~ |
  df16 c bf c  df f ef df  c bf af g |
  
  \barNumberCheck 25
  f8 f'~ f16 ef df c  bf af g bf |
  ef,8 ef'~ ef16 df c bf  af gf f af |
  df,8 df'~ df16 c bf af  g f e g |
  c,4~ c16 d e f  g af bf g |
  af16 bf c8~ c16 bf af g  f ef df c |
  bf16 c df8~ df16 c bf af  g f e d |
  c16 d e f  g af bf g  f e f e |
  f4 r16 c' d e  f e f g |
  \tempo 4 = 66 af16 g af bf  \tempo 4 = 60 c8 bf \tempo 4 = 54 c c, |
  f,2.\fermata |
}

inventionNineMusic = 
\score { 
  \header {
    opus = "BWV 780"
  }
  \keepWithTag layout
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 9"
  } <<
    \new Staff = "upper" \rightHand
    \new Staff = "lower" \leftHand
  >>
  \layout {}
}

inventionNineMidi = 
\score { 
  \header {
    midiOutputFile = "invention-no9-F-min" % see midi-title.ily
  }
  \keepWithTag midi
  <<
    \new Staff = "upper" \rightHand
    \new Staff = "lower" \leftHand
  >>
  \midi {
    \tempo 4 = 72
  }
}
