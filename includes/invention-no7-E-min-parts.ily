%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "midi-title.ily"

global = {
  \time 4/4
  \key e \minor
  \accidentalStyle piano
}

rightHand = \relative b' {
  \global
  \set Score.tempoHideNote = ##t
  r8 b16 a  g fs g e  b'8\mordent b e8.\mordent fs16 |
  ds8\prall fs16 e  ds cs ds b  b'8 a16 g
    \tag layout { fs8.\prallprall e32 fs | }
    \tag midi   { fs16 g32 fs g fs e fs | }
  g8 b16 a  g fs g e  c'8. b16  a g fs e |
  fs8 a16 g  fs e fs d  b'8. a16  g fs e d |
  e16 fs e d  c b a g  c b a b  c d e fs |
  g16 fs e d  g8.\mordent g16  g fs e fs  fs8.\prall g16 |
  g8 d16 c  b a b g  
    \tag layout { 
      d'2~\startTrillSpan |
      d1~ |
      
      \barNumberCheck 9
      d8.\stopTrillSpan 
    }
    \tag midi {
      \repeat unfold 8 { d32 e } |
      \repeat unfold 15 { d32 e } d16 ~ |
      d8.
    }
    e16  cs8.\prall d16  d8 a16 g  fs e fs d |
  c'8.\mordent b16  c8. d16  b8\prall b  e8.\mordent e16 |
  e16 g fs e  d cs d b  as8 fs'16 e  d cs d b |
  e8 b'16 a!  g fs g e  as8 cs, fs as, |
  b8. cs16  cs8.\prall b16  b8 d e, d' |
  c8 a d, c'  b d g b, |
  a8 fs' g, e'  ds8\prall fs16 e  ds cs b a |
  g16 fs g b  e b a g  fs e fs a  ds a g fs |
  
  \barNumberCheck 17
  e16 ds e g  c g fs e  ds cs ds fs  b8 b |
  b4~ b16 ds e g  a,4~ a16 cs ds fs |
  g,4~ g16 b ds e  fs, a b c  ds, fs g a |
  b,8 a'~ a16 fs b fs  g8 e  c'8.\mordent c16 |
  c8\prall b g'8. g16  g a g fs  fs8.\prall e16 |
  e16 d c b  a g a fs  ds'8 fs, b8.\mordent c16 |
  \tempo 4 = 74 a8.\prall g16 
    \tag layout { fs8.\prall e16 }
    \tag midi   { \tuplet 3/2 { \tempo 4 = 64 fs32 g fs g fs g } fs16 e }
    e2\fermata |
  \bar "|."
}

leftHand = \relative e {
  \clef bass
  \global
  e8\mordent e, r4 r8 b''16 a  g fs g e |
  b'8 b, r4 r8 fs''16 e  ds cs ds b |
  e8 e, r4 r8 e'16 d  c b c a |
  d8 d, r4 r8 d'16 c  b a b g |
  c8. b16  a g fs e  a8. g16 fs e d c |
  b8. c16  b a g fs  e8 c' d d, |
  g4 r r8 g16 a  b a b g |
  d'16 cs d e  fs e fs d  g fs g a  b a b fs |
  
  \barNumberCheck 9
  g16 fs g e  a8 a, d d, r4 |
  r8 a''16 g  fs e fs d  g a g fs  e d e cs |
  fs8 as, b g  fs4 r8 b'16 a |
  g16 fs g e  d'8. e16  cs8 g'16 fs  e d e cs |
  d16 cs d b  fs'8 fs,  b16 c b a  gs fs gs e |
  a16 b a g  fs e fs d  g a g fs  e d e cs |
  ds16 cs ds b  e ds e e, 
    \tag layout {
      b'2~\startTrillSpan |
      b1~ |
  
      \barNumberCheck 17
      b2.~ b16\stopTrillSpan 
    }
    \tag midi {
      \repeat unfold 8 { b32 c } |
      \repeat unfold 16 { b32 c } |
      \repeat unfold 11 { b32 c } b16 ~ b
    }
    c'16 b a |
  g16 fs g b  e b a g  fs e fs a  ds a g fs |
  e16 ds e g  c g fs e  ds8 b r4 |
  r16 g' fs e  ds cs ds b  e d c b  a g a fs |
  g16 a g fs  e d e c  a' g a fs  b a b g |
  c2~ c16 c' b a  g fs g e|
  ds8 e b' b, e,2\fermata |
}

inventionSevenMusic = 
\score { 
  \header {
    opus = "BWV 778"
  }
  \keepWithTag layout
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 7"
  } <<
    \new Staff = "upper" \rightHand
    \new Staff = "lower" \leftHand
  >>
  \layout {}
}

\include "articulate.ly"

inventionSevenMidi = 
\score { 
  \header {
    midiOutputFile = "invention-no7-E-min" % see midi-title.ily
  }
  \articulate <<
    \keepWithTag midi
    <<
      \new Staff = "upper" \rightHand
      \new Staff = "lower" \leftHand
    >>
  >>
  \midi {
    \tempo 4 = 84
  }
}
