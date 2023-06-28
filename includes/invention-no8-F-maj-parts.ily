%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "midi-title.ily"

global = {
  \time 3/4
  \key f \major
  \accidentalStyle piano
}

rightHand = \relative f' {
  \global
  \set Score.tempoHideNote = ##t
  r8 f8 a f c' f, |
  f'8 e16 d  c d c bf  a bf a g |
  \parenthesize f8 a c a f' c |
  \repeat unfold 3 { a'16 c bf c } |
  \repeat unfold 3 { f,16 a g a } |
  \repeat unfold 3 { d,16 f e f } |
  b,8 g d' b f' d |
  g16 a g f  e f e d  c d c bf |
  
  \barNumberCheck 9
  a8 d16 c  b c b a  g a g f |
  e16 f e d  c8 c'16 b c8 e, |
  f8 c' e, c' d, b' |
  c4 r r |
  r8 c e c g' c, |
  c'8 b16 a  g a g f  e f e d |
  c16 bf! c a' c, a' bf, a'  c, a' a, a' |
  bf,8 g bf g d' g, |
  
  \barNumberCheck 17
  g'8 f16 ef  d ef d c  bf c bf a |
  \parenthesize g8 bf d bf g' d |
  bf'8 cs, bf' cs, bf' cs, |
  d8 a f' d a' f |
  g16 f g bf  c, bf' d, bf'  e, bf' c, bf' |
  f16 e f a  b, a' cs, a'  d, a' b, a' |
  e16 d e g  a, g' b, g'  cs, g' a, g' |
  f8 d bf d g, f' |
  
  \barNumberCheck 25
  e8 c a c f, ef' |
  \repeat unfold 3 { d16 f ef f } |
  \repeat unfold 3 { bf, d c d } |
  \repeat unfold 3 { g,16 bf a bf } |
  e,8 c g' e bf' g |
  c16 d c bf  a bf a g  f g f ef |
  d8 g16 f  e f e d  c d c bf |
  a16 bf a g  f8 f'16 e f8 a, |
  
  \barNumberCheck 33
  bf8 f' \tempo 4 = 105 a, f' \tempo 4 = 90 g, e' |
  \tempo 4 = 40 <a, c f>4\fermata \tempo 4 = 120 r r |
  \bar "|."
}

leftHand = \relative f {
  \clef bass
  \global
  R2.
  r8 f a f c' f, |
  f'8 e16 d  c d c bf  a bf a g |
  f8 a c a f' c |
  \clef treble \repeat unfold 3 { a'16 c bf c } |
  \repeat unfold 3 { f,16 a g a } |
  \repeat unfold 3 { d,16 f e f } |
  \clef bass b,8 g c g e' c |
  
  \barNumberCheck 9
  f16 g f e  d e d c  b c b a |
  g8 c16 b  a b a g  f g f e |
  d16 e d c  g' f e f  g8 g, |
  r8 c e c g' c, |
  c'8 b16 a  g a g f  e f e d |
  c8 e g e c' g |
  ef'8 fs, ef' fs, ef' fs, |
  g8 f16 ef  d ef d c  bf c bf a |
  
  \barNumberCheck 17
  g8 g' bf g d' g, |
  g'8 f16 ef  d ef d c  bf c bf a |
  g16 f g e'  g, e' f, e'  g, e' e, e' |
  f,16 e f d'  f, d' e, d'  f, d' d, d' |
  bf8 g e g c, e |
  a8 f d f b, d |
  g8 e cs e a, cs |
  d,16 d' c d  g, d' a d  bf d g, d' |
  
  \barNumberCheck 25
  c,16 c' bf c  f, c' g c  a c f, c' |
  bf8 d f d bf' f |
  \repeat unfold 3 { d'16 f ef f } |
  \repeat unfold 3 { bf, d c d } |
  \repeat unfold 3 { g, bf a bf } |
  e,8 c f c a' f |
  bf16 c bf a  g a g f  e f e d |
  c8 f16 e  d e d c  bf c bf a |
  
  \barNumberCheck 33
  g16 a g f  c' bf a bf  c8 c, |
  f4\fermata r r |
}

inventionEightMusic = 
\score { 
  \header {
    opus = "BWV 779"
  }
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 8"
  } <<
    \new Staff = "upper" \rightHand
    \new Staff = "lower" \leftHand
  >>
  \layout {}
}

inventionEightMidi = 
\score { 
  \header {
    midiOutputFile = "invention-no8-F-maj" % see midi-title.ily
  }
  <<
    \new Staff = "upper" \rightHand
    \new Staff = "lower" \leftHand
  >>
  \midi {
    \tempo 4 = 120
  }
}
