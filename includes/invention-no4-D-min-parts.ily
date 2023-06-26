%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

global = {
  \time 3/8
  \key d \minor
  \accidentalStyle piano
}

rightHand = \relative d' {
  \global
  \set Score.tempoHideNote = ##t
  d16 e f g a bf |
  cs, bf' a g f e |
  f8 a d |
  g,8 cs e |
  d16 e f g a bf |
  cs, bf' a g f e |
  f16 d e f g a |
  bf,16 a' g f e d |
  
  \barNumberCheck 9
  e16 c d e f g |
  a,16 g' f e d c |
  d16 e f d e f |
  g,8 r r |
  c16 d e c d e |
  f,8 r bf~ |
  bf8 a g |
  c16 bf a g f e |
  
  \barNumberCheck 17
  f16 g g8.\parenthesize \prall f16 |
  f8 c' c |
  \tag layout { 
    c4.~\startTrillSpan |
    c4.~ |
    c4.~ |
    c16\stopTrillSpan 
  }
  \tag midi {
    \repeat unfold 6 { c32 d } |
    \repeat unfold 6 { c32 d } |
    \repeat unfold 5 { c32 d } c16~ |
    c16
  }
    bf a g f e |
  c'16 d, e fs g a |
  bf16 a g f e d |
  
  \barNumberCheck 25
  bf'16 c, d e f g |
  a16 b c d e f |
  gs,16 f' e d c b |
  c b d c b a |
  gs16 a gs fs e d |
  c16 d e fs gs a |
  d,16 c' b a gs fs |
  e fs gs a b c |
  
  \barNumberCheck 33
  fs,16 e' d c b a |
  gs16 a b c d e |
  a,16 f' e d c b |
  a'16 gs fs e a8~ |
  a16 d, b8.\parenthesize \prall a16 |
  a8. a16 bf c |
  d,8 fs a |
  bf16 g a bf c d |
  
  \barNumberCheck 41
  e,16 d' c bf a g |
  a8 f'16 e f8 |
  g,8 e' r |
  d16 e f g a bf |
  cs,16 bf' a g f e |
  f8 d g,~ |
  g16 d' cs e a, cs |
  d16 b cs8.\parenthesize \prall d16 |
  d16 c bf a g f |
  bf16 cs, d e f g |
  \tempo 4. = 68 a16 d f,8 \tempo 4. = 60 e16 d |
  d4.\fermata |
  \bar "|."
}

leftHand = \relative d {
  \clef bass
  \global
  R4. |
  R4. |
  d16 e f g a bf |
  cs, bf' a g f e |
  f8 a d |
  e,8 g cs |
  d,8 d' f, |
  g8 a bf |
  
  \barNumberCheck 9
  c,8 c' e, |
  f8 g a |
  bf16 g a bf c d |
  e, d' c bf a g |
  a16 f g a bf c |
  d,16 c' bf a g f |
  e16 c d e f g |
  a,16 g' f e d c |
  
  \barNumberCheck 17
  d16 bf c8 c, |
  f16 g a bf c d |
  e,16 d' c bf a g |
  a16 bf c d e f |
  g,16 f' e d c bf |
  a16 bf c a bf c |
  fs,8 r r |
  g16 a bf g a bf |
  
  \barNumberCheck 25
  e,8 r r |
  f8 f' d |
  b8 gs e |
  a16 gs a b c d |
  \tag layout {
    e4.~\startTrillSpan |
    e4.~ |
    e4.~ |
    e4.~ |
    
    \barNumberCheck 33
    e4.~ |
    e8\stopTrillSpan
  } 
  \tag midi {
    \repeat unfold 6 { e32 f } |
    \repeat unfold 6 { e32 f } |
    \repeat unfold 6 { e32 f } |
    \repeat unfold 6 { e32 f } |
    \repeat unfold 5 { e32 f } e16~ |
    e8
  }
    e' d |
  c8 b a |
  d8 e f |
  d8 e e, |
  a16 a, bf c d ef |
  fs, ef' d c bf a |
  g8. g16 a bf |
  
  \barNumberCheck 41
  c,8 g' c |
  f16 g a b cs d |
  e,16 d' cs b a g |
  f8 a d |
  e,8 g cs |
  d,16 e f g a bf |
  cs,16 bf' a g f e |
  f16 g a8 a, |
  bf8. c16 bf a |
  g16 bf' a g f e  |
  f16 g a8 a, |
  d,4.\fermata |
}

inventionFourMusic = \score { 
  \header {
    opus = "BWV 775"
  }
  \keepWithTag layout
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 4"
  } <<
    \new Staff = "upper" \rightHand
    \new Staff = "lower" \leftHand
  >>
  \layout {}
}

\include "articulate.ly"

inventionFourMidi = \book {
  \bookOutputName "invention-no4-D-min"
  \score {
    \articulate <<
      \keepWithTag midi
      <<
        \new Staff = "upper" \rightHand
        \new Staff = "lower" \leftHand
      >>
    >>
    \midi {
      \tempo 4. = 76
    }
  }
}