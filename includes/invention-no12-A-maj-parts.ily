%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

global = {
  \time 12/8
  \key a \major
  \accidentalStyle piano
}

rightHand = \relative a' {
  \global
  a4\mordent a8 a4\mordent a8 
    \tag layout { b2.~\upmordent | }
    \tag midi   { a32 b \repeat unfold 9 { cs32 b } a b16.~ | }
  b16 a gs a b cs  d cs d fs e d  cs a cs e a fs  ds b ds fs a fs |
  gs16 a gs fs e ds  cs ds e ds cs b  a cs e cs a cs  fs, a cs a fs a |
  ds,8 fs ds  b16 ds fs a gs fs  e gs b e b gs  e4 r8 |
  e'4\mordent e8 e4\mordent e8  e16 a e cs a cs  e a e cs a cs |
  d4\mordent d8 d4\mordent d8  d16 b' gs d b d  gs b gs d b d |
  cs8 r r r16 d, fs a d cs  b8 r r r16 cs, es gs cs b |
  a8 r r r16 b, d fs b a  gs fs b a gs fs  es gs cs b a gs |
  
  \barNumberCheck 9
  fs8 fs' fs,  fs cs fs  
    \tag layout { gs2.~\upmordent | }
    \tag midi   { fs32 gs \repeat unfold 9 { a32 gs } fs gs16.~ | }
  gs16 fs es fs gs a  b a b d cs b  a fs a cs fs ds  bs gs bs ds fs ds |
  e16 fs e ds cs b  a b cs b a gs  fs a cs a fs a  ds, fs a fs ds fs |
  bs,8 ds fs a gs bs  cs16 e gs e cs e  gs e cs e gs e |
  cs16 e fs e cs e  fs e cs e fs as,  b d fs d b d  fs d b d fs d |
  b16 d e d b d  e d b d e gs,  a4\mordent a8 a4\mordent a8 |
  a16 ds b a fs a  b ds b a fs a  g4\mordent g8 g4\mordent g8 |
  g16 e' cs g e g  cs e cs g e g  fs8 r r  r16 gs, b d gs fs |
  
  \barNumberCheck 17
  e8 r r  r16 \clef bass fs, a cs fs e  d8 r r r16 e, gs b e d \clef treble |
  cs16 a cs e a e  cs' a cs e a fs  d fs a fs d fs  b, d fs d b d |
  gs,8 b d  fs e b  fs' e a,  e' d gs, |
  d'8 cs e,  fs16 gs a b cs d  gs, e gs b e b  gs' e b' gs e gs |
  a8 e cs  a16 d cs b e8~ e16 fs cs8 b16 a a4.\fermata |
  \bar "|."
}

leftHand = \relative a {
  \clef bass
  \global
  a16 b cs b a gs  fs gs a gs fs e  d fs a fs d fs  b, d fs d b d |
  gs,8 b gs  e fs gs  a4 r8 r4 r8 |
  e'4\mordent e8 e4\mordent e8 
    \tag layout { fs2.~\upmordent | }
    \tag midi   { e32 fs \repeat unfold 9 { gs32 fs } e fs16.~ | }
  fs16 e ds e fs gs  a gs a cs b a  gs e gs b e b  gs e gs b d b |
  cs16 d e d cs b  a b cs b a gs  fs8 fs' cs  a fs a |
  b16 cs d cs b a  gs a b a gs fs  e8 b gs  e4 r8 |
  r16 a' cs e a gs fs8 r r r16 gs, b ds gs fs es8 r r |
  r16fs, a cs fs e d8 r r r16 b, d fs b a  gs cs, es gs cs b |
  
  \barNumberCheck 9
  a16 b a gs fs e  d e fs e d cs  b d fs d b d  gs, b d b gs b |
  es,8 gs es  cs ds es  fs fs' ds  gs fs gs |
  cs,4\mordent cs8 cs4\mordent cs8 
    \tag layout { ds2.~\upmordent | }
    \tag midi   { a32 ds \repeat unfold 9 { e32 ds } e ds16.~ | }
  ds16 cs bs cs ds e  fs e fs a gs fs  e cs e gs cs gs  e cs e gs cs b |
  as fs as cs fs cs  as fs as cs fs e  d b, d fs b fs  d b d fs b a |
  gs16 e gs b e b  gs e gs b e d  cs d e d cs b  a b cs b a gs |
  fs8 a ds~ ds cs b  e16 fs g fs e d  cs d e d cs b |
  a8 e cs a4 r8  r16 d fs a d cs  b8 r r |
  
  \barNumberCheck 17
  r16 cs, e gs cs b  a8 r r  r16 b, d fs b a  gs8 r r |
  a,4\mordent a8 a4\mordent a8 
    \tag layout { b2.~\upmordent | }
    \tag midi   { a32 b \repeat unfold 9 { cs32 b } a b16.~ | }
  b16 a gs a b cs  d cs d fs e d  cs b cs e d cs  b a b d cs b |
  a16 gs a b cs a  d4\mordent d8 
    \tag layout { d2.\upmordent | }
    \tag midi   { cs32 d \repeat unfold 10 { e32 d } cs d | }
  cs16 d cs b a gs  fs fs' e d cs b  cs d e8 e,  a4.\fermata |
}

inventionTwelveMusic = \score { 
  \header {
    opus = "BWV 783"
  }
  \keepWithTag layout
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 12"
  } <<
    \new Staff = "upper" \rightHand
    \new Staff = "lower" \leftHand
  >>
  \layout {}
}

\include "articulate.ly"

inventionTwelveMidi = \book {
  \bookOutputName "invention-no12-A-maj"
  \score { 
    \articulate {
      \keepWithTag midi
      <<
        \new Staff = "upper" \rightHand
        \new Staff = "lower" \leftHand
      >>
    }
    \midi {
      \tempo 4. = 72
    }
  }
}