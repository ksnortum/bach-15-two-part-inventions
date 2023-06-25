%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

% \include "global-variables.ily"

global = {
  \time 4/4
  \key g \minor
  \accidentalStyle piano
}

rightHand = \relative d' {
  \global
  r16 d e fs  g a bf g  a g fs e  d c' bf a |
  g16 f e d  c bf' a g  d' c bf d  c bf a c |
  bf16 a g a  bf c d e  f8 d r d |
  ef16 d c d  ef8 e  f16 e d e  f8 fs |
  g8 d16 c  d ef f d  ef d c bf  a g' f ef |
  d16 c d e  f g a f  g f e d  cs bf' a g |
  f4~\mordent f16 g a bf  cs, d e d  cs8 c |
  b16 c d c  b8 bf  a d4\mordent cs8\prall |
  
  \barNumberCheck 9
  a8 f'4\mordent e8\prall  a,8 a'4\parenthesize \mordent 
    g8~\parenthesize \prall |
  g8 f16\prall e  f d e cs  
    \tag layout { \after 8*7/8 \turn d8.\mordent e16  e8.\upmordent d16 | }
    \tag midi { 
      \tuplet 3/2 { d32 cs d e d cs } d16 e d64 e f e 
        \tuplet 3/2 { f32 e d } e16. d32 | 
    }
  d8 c16 bf  a bf c a  bf a g f  e d' c bf |
  a16 g a b  c4~\mordent c16 a b c  d4~\mordent |
  d16 g, a b  c d ef c  d c b a  g f' ef d |
  c16 bf af g  f ef' d c  g' f ef g  f ef d f |
  ef16 d c d  ef f g af  b,8 d r f, |
  ef8 c' d, b'\turn  c16 g c d  ef4~\mordent |
  
  \barNumberCheck 17
  ef16 c d ef  f4~\mordent  f8 ef16\prall d  g8.\mordent f16 |
  ef16 d c bf  a g fs a  ef d e fs  g a bf g |
  a16 g fs e  d c' bf a  g  f e d  c bf' a g |
  d'16 c bf d  c bf a c  bf a g bf  a g fs a |
  g16 a bf c  d e fs g  a fs g a  d,4~ |
  d16 c ef d  c bf a c  fs, a bf a  g f ef g |
  cs,16 g' a bf  d, a' g\mordent fs  g2\fermata |
  \bar "|."
}

leftHand = \relative g, {
  \clef bass
  \global
  g4 r8 g'  fs16 g a g  fs8 f |
  e16 f g f  e8 ef d g4\mordent fs8 |
  g16 d e fs  g a bf g  a g f e  d c' bf a |
  g16 f ef d  c bf' a g  d' c bf d  c bf a c |
  bf16 a g a  bf c d bf  c8 ef, f\mordent f, |
  bf8 bf' a d  bf g a\mordent a, |
  d,16 a' b cs  d e f d  e d cs b  a g' f e |
  d16 c b a  g f' e d  a' g f a  g f e g |
  
  \barNumberCheck 9
  f16 e d f  e d cs e  d e f d  g a bf g |
  cs16 a b cs  d f, g a  bf e, f g  a8 a, |
  d4 r16 d e f  g a bf g  c8 c, |
  f8 ef16 d  ef f g ef  f ef d c  b af' g f |
  ef16 d c d  ef f g af  b,8 g r g |
  af16 g f g  af8 a  bf16 a g a  bf8 b |
  c16 g a b  c d ef c  d c b a  g f' ef d |
  c16 bf af g  f ef f g  c, d' ef f  g af bf g |
  af16 g f ef  d c' bf af  g f g a  bf c d bf |
  c16 bf a g  fs ef' d c  bf4~ bf16 c d ef |
  fs, g a g  fs8 f  e16 f g f  e8 ef |
  d g4\mordent fs8  d8 bf'4\mordent a8 |
  d,8 d'4\mordent c8~  c16 ef d c  bf a g bf |
  ef,4~ ef16 d c ef  a,8 d4\mordent c8 |
  bf8 a16 g  d'8\mordent d,  g2\fermata |
}

inventionElevenMusic = \score { 
  \header {
    opus = "BWV 782"
  }
  \keepWithTag layout
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 11"
  } <<
    \new Staff = "upper" \rightHand
    \new Staff = "lower" \leftHand
  >>
  \layout {}
}

\include "articulate.ly"

inventionElevenMidi = \book {
  \bookOutputName "invention-no11-G-min"
  \score { 
    \articulate {
      \keepWithTag midi
      <<
        \new Staff = "upper" \rightHand
        \new Staff = "lower" \leftHand
      >>
    }
    \midi {
      \tempo 4 = 76
    }
  }
}
