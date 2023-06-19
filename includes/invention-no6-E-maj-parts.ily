%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

global = {
  \time 3/8
  \key e \major
  \accidentalStyle piano
}

rightHand = \relative e'' {
  \global
  \repeat volta 2 {
    r16 e8 ds d16~ |
    d16 cs8 b a16~ |
    a16 gs8 fs gs32 a |
    gs16 b32 a b16 gs32 fs gs16 e32 ds |
    e8 fs gs |
    a8 b cs |
    ds8 e16 ds cs b |
    e8 e, r |
    
    \barNumberCheck 9
    r16 gs'8 e cs16~ |
    cs16 e32 ds e16 cs as fs~ |
    fs16 fs'8 ds b16~ |
    b16 ds32 cs ds16 b gs e~ |
    e16 e'8 cs as16~ |
    as16 gs'8 fs e16~ |
    e16 ds8 cs b16 |
    as16 e32 ds e16 as32 gs as16 b32 as |
    
    \barNumberCheck 17
    b16 ds, cs b' cs, as' |
    b8 r16 b ds fs |
    b8 r16 b fs ds |
    b16 fs ds b r8 |
  }
  \break
  
  \repeat volta 2 {
    b8 cs ds |
    e8 fs gs |
    as8 b16 as gs fs |
    b8 b, r |
    
    \barNumberCheck 25
    r16 b''8 as a16~ |
    a16 gs8 fs e16~ |
    e16 ds8 cs ds32 e |
    ds16 fs32 e fs16 ds32 cs ds16 b32 as |
    b16 ds32 cs ds16 gs32 fss gs16 cs,32 b |
    cs16 e32 ds e16 as32 gs as16 ds,32 cs | % not css!
    ds16 gs32 fss gs16 b32 as b16 ds,32 css |
    ds16 as'32 gs as16 fss32 es fss16 ds32 css |
    
    \barNumberCheck 33
    ds16 a'8 gs fs16~ |
    fs16 e32 ds e16 cs32 bs cs16 e32 ds |
    e16 gs8 fs e16~ |
    e16 ds32 cs ds16 b32 as b16 cs32 b |
    cs16 e8 ds cs16~ |
    cs16 b32 as b16 gs32 fss gs16 a32 gs |
    a16 cs32 b cs16 a32 gs a16 e'32 ds |
    e16 fss,32 es fss16 as32 gs as16 b,32 as |
    
    \barNumberCheck 41
    b16 gs' e cs as fss' |
    gs16 ds b gs r8 |
    e'8 fs gs |
    a b cs |
    ds8 e16 ds cs b |
    e8. b32 a b16 gs32 fs |
    gs16 e'8 ds d16~ |
    d16 cs8 b a16~ |
    
    \barNumberCheck 49
    a16 gs8 fs gs32 a |
    gs16 b32 a b16 gs32 fs gs16 e32 ds |
    e8 fs a |
    b8 ds fs |
    ds,8 e gs |
    a8 cs e |
    cs,8 fs a |
    b8 cs ds |
    
    \barNumberCheck 57
    e8 cs a |
    fs'4.~ |
    fs16 e ds cs b a |
    gs16 e32 ds e16 gs32 fs gs16 b32 a |
    b16 gs32 fs gs16 b32 a b16 e32 ds |
    e16 b gs e r8 \fermataOverBarline |
  }
}

leftHand = \relative e {
  \clef bass
  \global
  \repeat volta 2 {
    e8 fs gs | 
    a8 b cs |
    ds8 e16 ds cs b |
    e8 e, r |
    r16 e8 ds d16~ |
    d16 cs8 b a16~ |
    a16 gs8 fs gs32 a |
    gs16 b32 a b16 gs32 fs gs16 e32 ds |
    
    \barNumberCheck 9
    e8 cs' e |
    fs8 as cs |
    ds,,8 b' ds |
    e8 gs b |
    cs,,8 cs' e |
    fs8 gs as |
    b8 e, gs |
    fs16 cs' as cs e, cs' |
    
    \barNumberCheck 17
    ds,8 e fs |
    b,16 b'32 as b16 fs32 e fs16 ds32 cs |
    ds16 fs32 e fs16 ds32 cs ds16 b32 as |
    b4 b,8 |
  }
  
  \repeat volta 2 {
    r16 b''8 as a16~ |
    a16 gs8 fs e16~ |
    e16 ds8 cs ds32 e |
    ds16 fs32 e fs16 ds32 cs ds16 b32 as |
    
    \barNumberCheck 25
    b8 cs ds |
    e fs gs |
    as8 b16 as gs fs |
    b8 b, r |
    gs'8 b ds |
    fss, as ds |
    gs, b ds |
    ds,8 ds' cs |
    
    \barNumberCheck 33
    bs8 cs ds |
    gs,8 cs b |
    as8 b cs |
    fs,8 b ds |
    fss,8 gs as |
    ds,8 gs b |
    cs,8 r cs'~ |
    cs8 as fss |
    
    \barNumberCheck 41
    gs8 cs, ds |
    gs,8 r16 gs gs' fs~ |
    fs16 e8 ds d16~ |
    d16 cs8 b a16~ |
    a16 gs8 fs gs32 a |
    gs16 b32 a b16 gs32 fs gs16 e32 ds |
    e8 fs gs |
    a8 b cs |
    
    \barNumberCheck 49
    ds8 e16 ds cs b |
    e8. b'32 a b16 gs32 fs |
    gs16 cs8 a fs16~ |
    fs16 a32 gs a16 fs ds b~ |
    b16 b'8 gs e16~ |
    e16 gs32 fs gs16 e cs a~ |
    a16 a'8 fs ds16~ |
    ds16 cs'8 b a16~ |
    
    \barNumberCheck 57
    a16 gs8 fs e16 |
    ds16 a'32 gs a16 ds,32 cs ds16 gs32 fs |
    gs8 a b |
    e,8 r16 e'16 b gs |
    e16 b' gs e b gs |
    e4 e'8 \fermataUnderBarline |
  }
}

inventionSixMusic = \score { 
  \header {
    opus = "BWV 777"
  }
  \keepWithTag layout
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 6"
  } <<
    \new Staff = "upper" \rightHand
    \new Staff = "lower" \leftHand
  >>
  \layout {}
}

inventionSixMidi = \book {
  \bookOutputName "invention-no6-E-maj"
  \score { 
    \keepWithTag midi
    <<
      \new Staff = "upper" \rightHand
      \new Staff = "lower" \leftHand
    >>
    \midi {
      \tempo 8 = 104
    }
  }
}