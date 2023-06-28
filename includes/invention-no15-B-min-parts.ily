%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "midi-title.ily"

global = {
  \time 4/4
  \key b \minor
  \accidentalStyle piano
  
  % make eighth notes beam together only two
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = 1,1,1,1
}

rightHand = \relative b' {
  \global
  \set Score.tempoHideNote = ##t
  r8 b16 as b8 fs g\prall fs b fs |
  fs8\prall e cs' e,  e\prall d16 cs  d e fs e |
  fs8\mordent r r16 a gs a  b cs b gs  a b a fs |
  gs16 a gs fs  es gs fs es  cs'8 fs,16 es  fs a gs b |
  a16 b cs d  gs,8.\prall fs16  fs8  fs'16 es  fs8 cs |
  d8\prall cs fs cs  cs\prall b gs' b, |
  b8\prall a16 gs  a b a es  fs8 fs'16 es  fs8 cs |
  d16 e d b  e b fs' b,  g' a g e  a e b' d, |
  
  \barNumberCheck 9
  cs16 d cs a  d a e' a,  fs' g fs d  g d a' d, |
  b'16 c b e,  a b a d,  g a g cs,  fs g fs d |
  e8 g,16\prall fs g8 e'  fs, d' e, cs' |
  d8 r r16 fs, e fs  g a g e  fs g fs d |
  e16 fs e d  cs e d cs  d8 a'  d16 cs b d |
  cs16 b a gs  a8 e fs\prall e a e |
  e8\prall d b' d,  d\prall cs16 b  cs ds e ds |
  a'16 fs g a  gs as b as  e' cs d e  ds es fs es |
  
  \barNumberCheck 17
  b'16 gs a b,  cs ds e ds  a' fs g a,  b cs d cs |
  g'16 e fs cs  d e fs d  e fs e cs  d e d b |
  cs16 d cs b  as b cs as  fs8 b16 as  b8 fs |
  g8\prall fs b fs  fs\prall e cs' e, |
  e8\prall d16 cs  d fs e g  \tempo 4 = 82 fs8. d'16  \tempo 4 = 72 
    as8.\prall b16 |
  b1\fermata |
  \bar "|."
}

leftHand = \relative b, {
  \clef bass
  \global
  b8 r d r e r d r |
  cs8 r as r b r g r |
  fs8 fs'16 es  fs8 cs d\prall cs fs cs |
  cs8\prall b gs' b,  b\prall a16 gs  a8 b |
  cs8 b cs cs,  fs8. gs16  a16 b gs a |
  b16 cs b gs  a b a fs  gs a gs fs  es gs fs es |
  fs8 fs'16 es  fs8 cs  d d'16 cs  d e d as |
  b8 a g fs  e e, fs g |
  
  \barNumberCheck 9
  a8 g' fs e  d d, e fs |
  g8 g' fs b  e, a d, d'~ |
  d16 e d b  cs d cs a  d cs b a  g fs g a |
  d,8 d'16 cs d8 a b\prall a d a |
  a8\prall g e' g,  g\prall fs16 e  fs gs a gs |
  a8 e  d16 cs b a  d e d b  cs d cs a |
  b16 cs b a  gs b a gs  a8 a' g fs |
  e8 e' d cs  b b, a gs |
  
  \barNumberCheck 17
  fs8 fs'16 g  a8 b  e, e,16 fs  g8 a |
  d,8 b''16 as  b8 fs g\prall fs b fs |
  fs8\prall e cs' e,  e\prall d16 cs  d b cs d |
  e16 fs e cs  d e d b  cs d cs b  as cs b as |
  b8 b'16 as b8 g  d16 fs e g  fs8 fs, |
  b1\fermata |
}

inventionFifteenMusic = 
\score { 
  \header {
    opus = "BWV 786"
  }
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 15"
  } <<
    \new Staff = "upper" \rightHand
    \new Staff = "lower" \leftHand
  >>
  \layout {}
}

\include "articulate.ly"

inventionFifteenMidi = 
\score { 
  \header {
    midiOutputFile = "invention-no15-B-min" % see midi-title.ily
  }
  \articulate {
    <<
      \new Staff = "upper" \rightHand
      \new Staff = "lower" \leftHand
    >>
  }
  \midi {
    \tempo 4 = 92
  }
}
