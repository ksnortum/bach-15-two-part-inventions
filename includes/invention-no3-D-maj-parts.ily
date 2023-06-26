%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

global = {
  \time 3/8
  \key d \major
  \accidentalStyle piano
}

rightHand = \relative d' {
  \global
  \set Score.tempoHideNote = ##t
  \partial 8 { d16 e }
  fs16( e g fs e d) |
  a'16( g fs e fs d) |
  a'8( b cs16\mordent d) |
  cs8\prall \appoggiatura { b8 } a cs16 d |
  e16( cs fs d cs b) |
  e16( cs d b a gs) |
  e'16( cs fs d cs b) |
  e16( cs d b a gs) |
  
  \barNumberCheck 9
  cs16( b d cs b a) |
  fs'8 gs, a~ |
  a16[ b] b8.\parenthesize \prall a16 |
  a4 r8 |
  r8 e' a~ |
  a16 b,( cs ds e fs) |
  g16( fs a g fs e) |
  b'8 b, r |
  
  \barNumberCheck 17
  r8 fs b~ |
  b16 as( b cs d e) |
  fs16( e g fs e d) |
  e16( d fs e d cs) |
  d16( cs e d cs b) |
  cs8 as\prall b~ |
  b16[ cs] cs8.\prall b16 |
  b16 fs( gs as b cs) |
  
  \barNumberCheck 25
  d16( cs e d cs b) |
  g'4.~ |
  g4.~ |
  g16 e,( fs gs a b) |
  cs16( b d cs b a) |
  fs'4.~ |
  fs4.~ |
  fs16 b,( e d cs b) |
  
  \barNumberCheck 33
  cs16( b d cs b a) |
  gs8\prall e a16 b |
  cs( b d cs b a) |
  fs'8. gs,16 a gs |
  a16[ d] b8.\parenthesize \prall a16 |
  a8. cs16 d e |
  fs,8 g a\turn |
  b cs\turn d~ |
  
  \barNumberCheck 41
  d16 cs( e d cs d) |
  e16( d cs b a g) |
  fs16( e g fs e d) |
  a'16( g fs e fs d) |
  a'8 b cs16\mordent d |
  cs8\prall \appoggiatura { b8 } a d8 |
  d8 d, d' |
  d8 d, d' |
  
  \barNumberCheck 49
  d8 d, d' |
  d8 d, d'16[ e] |
  fs16( e g fs e d) |
  b'8 cs, d~ |
  d16[ e] e8.\parenthesize \prall d16 |
  d8 d, g~ |
  g16 a,( b cs d e) |
  fs16(e g fs e d) |
  
  \barNumberCheck 57
  b'8. cs,16 d cs |
  \tempo 4. = 52 d16[ g] \tempo 4. = 46 e8.\parenthesize \prall d16 |
  d4.\fermata |
  \bar "|."
}

leftHand = \relative d {
  \clef bass
  \global
  \partial 8 r8
  R4. |
  r8 r d16 e |
  fs16( e g fs e d) |
  a'16( g fs e fs d) |
  a'8 a, a' |
  a8 a, a' |
  a8 a, a' |
  a8 a, a' |
  
  \barNumberCheck 9
  a8 b cs |
  d16( cs e d cs b) |
  cs16[ d] e8 e, |
  a16 e( fs gs a b) |
  cs16( b d cs b a) |
  e'8 e, r |
  r8 b' e~ |
  e16 fs,( gs as b cs) |

  \barNumberCheck 17
  d16( cs e d cs b) |
  fs'8 fs, \clef treble e'\noBeam |
  d8 b'16 as b8 |
  cs,8 as'16 gs as8 |
  b16( a g fs e d) |
  e16( d fs e d cs) |
  \clef bass d16[ e] fs8 fs, |
  b8 fs d |
  
  \barNumberCheck 25
  b4 r8 |
  r16 b( cs ds e fs) |
  g16( fs a g fs e) |
  a4.~ |
  a4.~ |
  a16 a,( b cs d e) |
  fs16( e g fs e d) |
  gs8. e16 fs gs |
  
  \barNumberCheck 33
  a16( gs fs e d fs) |
  e16( d cs b cs a) |
  a'8 fs cs |
  d16( cs e d cs b) |
  cs16[ d] e8 e, |
  a16 cs( d e fs g) |
  a16( g b a g fs) |
  g16( fs a g fs e) |
  
  \barNumberCheck 41
  fs16( e g fs e d) |
  a'8 a, r |
  R4. |
  r8 r d16 e |
  fs16( e g fs e d) |
  a'16( g fs e fs d) |
  a'16( fs b g fs e) |
  a16( fs g e d cs) |
  
  \barNumberCheck 49
  a'16( fs b g fs e) |
  a16( fs g e d cs) |
  d8 e fs |
  g16( fs a g fs e) |
  fs16[ g] a8 a, |
  b16( a c b a g) |
  d'4.~ |
  d16 cs( b a g fs) |
  
  \barNumberCheck 57
  g16( fs a g fs e) |
  fs16[ g] a4 |
  d,4.\fermata |
}

dynamics = {
  \partial 8 { s8\mf }
  s4. * 6 |
  s4.\p |
  s4. |
  
  \barNumberCheck 9
  s4.\mf |
  s4. * 7 |
  
  \barNumberCheck 17
  s4. * 8 |
  
  \barNumberCheck 25
  s4. * 8 |
  
  \barNumberCheck 33
  s4. * 8 |
  
  \barNumberCheck 41
  s4. * 8 |
  
  \barNumberCheck 49
  s4.\p |
  s4 s8\mf |
}

inventionThreeMusic = \score { 
  \header {
    opus = "BWV 774"
  }
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 3"
  } <<
    \new Staff = "upper" \rightHand
    \new Staff = "lower" \leftHand
  >>
  \layout {}
}

\include "articulate.ly"

inventionThreeMidi = \book {
  \bookOutputName "invention-no3-D-maj"
  \score { 
    \articulate <<
      <<
        \new Staff = "upper" << \rightHand \dynamics >>
        \new Staff = "lower" << \leftHand \dynamics >>
      >>
    >>
    \midi {
      \tempo 4. = 60
    }
  }
}