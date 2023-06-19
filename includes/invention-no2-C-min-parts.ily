%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

% \include "global-variables.ily"

global = {
  \time 4/4
  \key c \minor
  \accidentalStyle piano
}

rightHand = \relative c'' {
  \global
  r8 c16 b  c d ef g, af bf af f  f' ef d c |
  b16 af' g f  ef d c b  c d c d  \tag layout { d8.\trill c32 d }
                                  \tag midi   { ef32 d ef d ef d c d } |
  ef16 d c d  ef f g8  g\prall f r f |
  f8\prall ef r d  ef af,~  af16 f bf f |
  g8 ef'~  ef16 d ef bf  c ef af g  f ef d c |
  bf16 d g f  ef d c bf  af c f c  d8. d16 |
  ef16 bf c bf  g'4~  g16 bf, c bf  af'4~ |
  af16 bf, ef d  g f af g  c bf af g  f bf af bf |
  
  \barNumberCheck 9
  g16 bf af bf  ef, g f g  c, d ef f  d ef f g |
  ef16 f  g af  bf af c bf  af g f af  d,4~ |
  d16 d g d  ef c d bf  c4~  c16 g' fs a |
  c, bf c8~  c16 fs e d  bf'8. e,16  fs8. g16 |
  g8\noBeam g,16 fs  g a bf d,  \parenthesize ef f ef c  c' bf a g |
  fs16 ef' d c  bf a g fs  g a g a  \tag layout { a8.\trill g32 a }
                                    \tag midi   { bf32 a bf a bf a g a } |
  bf16 a g a  bf c d8  d\prall c r c |
  c8\prall bf r a  bf ef,~  ef16 c f c |
  
  \barNumberCheck 17
  d8 bf'~  bf16 a bf f  g bf ef d  c bf a g |
  f16 a d c  bf a g f  ef g c g  a8. a16 |
  bf16 f g f d'4~  d16 f, g f  ef'4~ |
  ef16 f, bf a  d c ef d  g f ef d  c f ef f |
  d16 c bf a  d c ef d  c bf a c f4~ |
  f16 g, c b ef d f ef  af g f ef  d g f g |
  ef16 d c b  c d ef g,  af bf af f  f' ef d c |
  b16 af' g f  ef d c b  c d c d  \tag layout { d8.\trill c32 d }
                                   \tag midi   { ef32 d ef d ef d c d } |
                                   
  \barNumberCheck 25
  ef16 d c d  ef f g8 g\prall f r f |
  f8\prall ef16 d  g f af g  g8. af16  
    \tag layout { d,8.\trill c16 | }
    \tag midi   { \tuplet 3/2 { d32 ef d ef d ef } d16 c }
  c1\fermata |
  \bar "|."
}

leftHand = \relative c' {
  \clef bass
  \global
  R1 |
  R1 |
  r8 c16 b  c d ef g,  af bf af f  f' ef d c |
  \clef treble b16 af' g f  ef d c b  c d c d  
    \tag layout { d8.\trill c32 d }
    \tag midi   { ef32 d ef d ef d c d } |
  ef16 d c d  ef f g8  g\prall f r f |
  f8\prall ef r d  ef af,~  af16 f bf f |
  g8 ef'~  ef16 d ef bf  c ef af g  f ef d c |
  bf16 d g f  ef d c bf  af c f c  d8.\prall d16 |
  
  \barNumberCheck 9
  ef16 bf c bf  g'4~  g16 bf, c bf  af'4~ |
  af16 bf, ef d  g f af g  c bf af g  f bf af bf |
  g8\noBeam \clef bass ef,16 f  g a bf d, ef f ef c  c' bf a g |
  fs ef' d c  bf a g fs  g a g a  \tag layout { a8.\trill g32 a }
                                  \tag midi   { bf32 a bf a bf a g a } |
  bf16 a g a  bf c d8  d\prall c r c |
  c8\prall bf r a  bf ef,~ ef16 c f c |
  d8 bf'~  bf16 a bf f  g bf ef d  c bf a g |
  f16 a d c  bf a g f  ef g c g  a8.\prall a16 |
  
  \barNumberCheck 17
  bf16 f g f  d'4~  d16 f, g f  ef'4~ |
  ef16 f, bf a  d c ef d  g f ef d  c f ef f |
  d16 f ef f  bf, d c d  g, a bf c  a bf c d |
  bf16 c d ef  f ef g f  ef d c ef  \clef bass a,4~ |
  a16 d, g fs  bf a c bf  ef d c bf  a d c d |
  b16 f' ef d  c bf af g  f ef d c  g'8 g, |
  c8. d16  ef f g8  g\prall f r f |
  f8\prall ef~  ef16 f ef d  c bf af g  f ef f g |
  
  \barNumberCheck 25
  c,8 c'16 b  c d ef g,  af bf af f  f' ef d c |
  b16 af' g f  ef d c b  c g af f  g8 g |
  c,1\fermata |
}

inventionTwoMusic = \score { 
  \header {
    opus = "BWV 773"
  }
  \keepWithTag layout
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 2"
  } <<
    \new Staff = "upper" \rightHand
    \new Staff = "lower" \leftHand
  >>
  \layout {}
}

\include "articulate.ly"

inventionTwoMidi = \book {
  \bookOutputName "invention-no2-C-min"
  \score { 
    \articulate {
      \keepWithTag midi
      <<
        \new Staff = "upper" \rightHand
        \new Staff = "lower" \leftHand
      >>
    }
    \midi {
      \tempo 4 = 69
    }
  }
}