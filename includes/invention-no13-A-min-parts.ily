%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "midi-title.ily"

global = {
  \time 4/4
  \key a \minor
  \accidentalStyle piano
}

rightHand = \relative e' {
  \global
  \set Score.tempoHideNote = ##t
  r16 e a c  b e, b' d  c8 e gs, e' |
  a,16 e a c  b e, b' d  c8 a r4 |
  r16 e' c e  a, c e, g  f8 a d f~ |
  f16 d b d  g, b d, f  e8 g c e~ |
  e16 c a c  f,8 d'~  d16 b g b  e,8 c'~ |
  c16 a f a  d,8 b'  c8 r r4 |
  r16 g c e  d g, d' f  e8 g b, g' |
  c,16 g c e  d g, d' f  e8 c g' e |
  
  \barNumberCheck 9
  c'16 a e a  c, e a, c  d8 fs a c |
  b16 g d g  b, d g, b  c8 e g b |
  a16 fs ds fs  b, ds fs, a  g8 g'~ g16 e c e |
  a,8 fs'~  fs16 d b d  g,8 e'~ e16 c a c |
  fs,16 g' fs e  ds fs b, ds  e8 r r4 |
  r16 g bf g  e g cs, e  g e cs e  a, r r8 |
  r16 f' a f  d f b, d  f d b d  g, r r8 |
  r16 e' g e  c e a, c  ds c a c  fs, r r8 |
  
  \barNumberCheck 17
  r16 d' f d  b d gs, b  d b gs b  e, r r8 |
  r16 e a c  b e, b' d  c8 a gs e |
  a16 c e c  a c fs, a  c a fs a  ds, c' b a |
  gs16 b d b  gs b d, f  gs f d f  b, f' e d |
  c16 e a e  c e a, c  ds c a c  fs, c' b a |
  gs8 b' gs e  r16 e a c  b e, b' d |
  c16 a c e  d b d f  e c e  g  f e d c |
  b16 c d e  f d gs d  b' d, c a'  f d b d |
  
  \barNumberCheck 25
  gs,16 b c a  \tempo 4 = 96 e a b gs  \tempo 4 = 80 a e c e  \tempo 4 = 60
    a,4\fermata |
  \bar "|."
}

leftHand = \relative a, {
  \clef bass
  \global
  a8 a'4 gs8  a16 e a c  b e, b' d |
  c8 a gs e  a16 e a c  b e, b' d |
  c8 a c a  d16 a f a  d, f a, c |
  b8 d g b~ b16 g e g  c, e g, b |
  a8 c  d16 f b, d  g,8 b  c16 e a, c |
  f,8 d  g16 g' f g  c,16 g' c e  d g, d' f |
  e8 c b g  c16 g c e  d g, d' f |
  e8 c r4  r16 g' e g  c, e g, b |
  
  \barNumberCheck 9
  a8 c e g  fs16 a d, fs  a, d fs, a |
  g8 b d fs  e16 g c, e  g, c e, g |
  fs8 a b ds  r16 e c e  a, c e g |
  fs16 d b d  g, b d fs  e c a c  fs, a c8~ |
  c16 b c a  b8 b,  e16 e' b g  e b g b |
  e,8 e' g bf  cs, r  r16 g'' f e |
  d8 d, f af  b, r  r16 f'' e d | 
  c8 c, e fs  a, r  r16 e'' ds cs |
  
  \barNumberCheck 17
  b8 b, d f  gs, r  r16 d'' c b |
  c8 a gs e  a16 e a c  b e, b' d |
  c e a e  c e a, c  fs, a c a  fs a ds, fs |
  e8 gs b gs  e b gs e |
  a8 c e c  a c ds, r |
  r16 b'' gs e  d b' gs d  c8 e gs, e' |
  a,8 fs' b, gs'  c, a' d, bf' |
  gs8 f d b  gs a d, e |
  
  \barNumberCheck 25
  f8 ds e e'  a,2\fermata |
}

inventionThirteenMusic = 
\score { 
  \header {
    opus = "BWV 784"
  }
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 13"
  } <<
    \new Staff = "upper" \rightHand
    \new Staff = "lower" \leftHand
  >>
  \layout {}
}

inventionThirteenMidi = 
\score { 
  \header {
    midiOutputFile = "invention-no13-A-min" % see midi-title.ily
  }
  <<
    \new Staff = "upper" \rightHand
    \new Staff = "lower" \leftHand
  >>
  \midi {
    \tempo 4 = 108
  }
}
