%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

global = {
  \time 9/8
  \key g \major
  \accidentalStyle piano
}

rightHand = \relative g' {
  \global
  g8 b d  b g d' b g g' |
  fs4\prall d8  a' fs d  a' fs d |
  g8 d b  f' d b  f' d b |
  e8 c a  fs a c  e d c |
  d8 b g  e g b  d c b |
  c8 a fs  d fs a  c b a |
  b8 c d  e b g'  e b g' |
  a,8 b cs  d a fs'  d a fs' |
  
  \barNumberCheck 9
  g,4.~\mordent g8 a g  fs g e |
  fs8 g fs  e fs d  a' b c |
  b8 c b  a b g  e' fs g |
  cs,8 d cs  b cs a  g' a b |
  a8 g fs  e fs d  a d cs |
  d4.\mordent r4 r8 r4 r8 |
  a8 cs e  cs a e'  cs a g' |
  fs4.\prall d r4 r8 |
  
  \barNumberCheck 17
  g,8 b d  b g d'  b g f' |
  e c a  a' e c  a b c |
  d8 b g  g' d b  g a b |
  \tag layout {
    c2.~\startTrillSpan c4.~ |
    c2.~ c4. |
    b2.~\stopTrillSpan \startTrillSpan b4.~ |
    b2.~ b4.~ |
  }
  \tag midi {
    \repeat unfold 9 { c16\pp d } |
    \repeat unfold 7 { c16 d } c4 |
    \repeat unfold 9 { b16 c } |
    \repeat unfold 7 { b16 c } b4~\mf |
  }
  b8\stopTrillSpan e d  c d b  a b g |
  
  \barNumberCheck 25
  a8 c b  a b g  fs g e |
  fs4\prall d8  a'4\prall fs8  d'4\prall fs,8 |
  g8 b d  b g d'  b g g' |
  d8 fs a  fs d a'  fs d c' |
  b8 a g  fs g a  d, g fs |
  g8 fs e  d c b  a b c |
  b8 a g  fs g a  d, g fs |
  g8 d b  g4. r4 r8 \fermataOverBarline |
  \bar "|."
}

leftHand = \relative d {
  \clef bass
  \global
  R1*9/8 |
  d8 fs a  fs d a'  fs d c' |
  b4\prall g8  d' b g  d' b g |
  c8 e c  a c a  fs g a |
  b8 d b  g b g  e fs g |
  a c a fs  a fs  d e fs |
  g4.~\mordent g8 fs e  d e cs |
  fs4.~\mordent fs8 e d  cs d b |
  
  \barNumberCheck 9
  e8 fs g  a e cs' a e cs' |
  d4.~\mordent d8 d, e  fs e d |
  g4.~\mordent g8 e fs  g fs e |
  a4.~\mordent a8 g fs  e d cs |
  d8 e fs  g a b  a4 a,8 |
  d8 fs a  fs d a'  fs d d' |
  cs4.\prall a r4 r8 |
  d,8 fs a  fs d a'  fs d c' |
  
  \barNumberCheck 17
  b4.\prall g r4 r8 |
  c,4.~\mordent c8 d e  fs, g a |
  b4.~\mordent b8 c d  e, fs g |
  a8 c e  a e c  a b c |
  d fs a  d a fs  d e fs |
  g b d  g d b  g a b |
  e,8 g b e b g  e fs g |
  \tag layout {
    c,2.~\startTrillSpan c4.~ |
    
    \barNumberCheck 25
    c2.~ c4.~ |
  }
  \tag midi {
    \repeat unfold 9 { c16\pp d } |
    \repeat unfold 7 { c16 d } c4~\mf |
  }
  c8\stopTrillSpan d fs  a fs d  c b a |
  b8 g b  d b g  d' b g |
  fs8 d fs  a fs d  a' fs d |
  g8 a b  a b c  b c d |
  e,4.~ e4 e'8  fs e d |
  g4\mordent b,8  e d c  d4\mordent d,8 |
  g4.~ g8 b d  g4. \fermataUnderBarline |
}

inventionTenMusic = \score { 
  \header {
    opus = "BWV 781"
  }
  \keepWithTag layout
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 10"
  } <<
    \new Staff = "upper" \rightHand
    \new Staff = "lower" \leftHand
  >>
  \layout {}
}

\include "articulate.ly"

inventionTenMidi = \book {
  \bookOutputName "invention-no10-G-maj"
  \score { 
    \articulate <<
      \keepWithTag midi
      <<
        \new Staff = "upper" \rightHand
        \new Staff = "lower" \leftHand
      >>
    >>
    \midi {
      \tempo 4. = 116
    }
  }
}
