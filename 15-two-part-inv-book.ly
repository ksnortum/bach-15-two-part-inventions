%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"

\include "includes/header-paper.ily"
\include "includes/title-page.ily"
\include "includes/invention-no1-C-maj-parts.ily"
\include "includes/invention-no2-C-min-parts.ily"
\include "includes/invention-no3-D-maj-parts.ily"
\include "includes/invention-no4-D-min-parts.ily"
\include "includes/invention-no5-Eb-maj-parts.ily"
\include "includes/invention-no6-E-maj-parts.ily"
\include "includes/invention-no7-E-min-parts.ily"
\include "includes/invention-no8-F-maj-parts.ily"
\include "includes/invention-no9-F-min-parts.ily"
\include "includes/invention-no10-G-maj-parts.ily"
\include "includes/invention-no11-G-min-parts.ily"
\include "includes/invention-no12-A-maj-parts.ily"
\include "includes/invention-no13-A-min-parts.ily"
\include "includes/invention-no14-Bb-maj-parts.ily"
\include "includes/invention-no15-B-min-parts.ily"

% Title page and table of contents

\titlePage
\pageBreak

\paper {
  tocTitleMarkup = \markup { \fill-line { \center-column { 
    \line { \huge "Table of Contents" }
    \vspace #1
  } } }
  tocItemMarkup = \tocItemWithDotsMarkup
}

\bookpart {
  \header {
    title = ##f
    subtitle = ##f
    composer = ##f
    arranger = ##f
    copyright = ##f
    tagline = ##f
  }
  \markuplist \table-of-contents
}

% Book

\tocItem \markup "Invention No. 1 in C major"
\inventionOneMusic
\pageBreak

\tocItem \markup "Invention No. 2 in C minor"
\inventionTwoMusic
\pageBreak

\tocItem \markup "Invention No. 3 in D major"
\inventionThreeMusic
\pageBreak

\tocItem \markup "Invention No. 4 in D minor"
\inventionFourMusic
\pageBreak

\tocItem \markup \concat { 
  "Invention No. 5 in E" \tiny \raise #0.75 \flat " major" 
}
\inventionFiveMusic
\pageBreak

\tocItem \markup "Invention No. 6 in E major"
\inventionSixMusic
\pageBreak

\tocItem \markup "Invention No. 7 in E minor"
\inventionSevenMusic
\pageBreak

\tocItem \markup "Invention No. 8 in F major"
\inventionEightMusic
\pageBreak

\tocItem \markup "Invention No. 9 in F minor"
\inventionNineMusic
\pageBreak

\tocItem \markup "Invention No. 10 in G major"
\inventionTenMusic
\pageBreak

\tocItem \markup "Invention No. 11 in G minor"
\inventionElevenMusic
\pageBreak

\tocItem \markup "Invention No. 12 in A major"
\inventionTwelveMusic
\pageBreak

\tocItem \markup "Invention No. 13 in A minor"
\inventionThirteenMusic
\pageBreak

\tocItem \markup \concat { 
  "Invention No. 14 in B" \tiny \raise #0.75 \flat " major" 
}
\inventionFourteenMusic
\pageBreak

\tocItem \markup "Invention No. 15 in B minor"
\inventionFifteenMusic
\pageBreak

% MIDI

\inventionOneMidi
\inventionTwoMidi
\inventionThreeMidi
\inventionFourMidi
\inventionFiveMidi
\inventionSixMidi
\inventionSevenMidi
\inventionEightMidi
\inventionNineMidi
\inventionTenMidi
\inventionElevenMidi
\inventionTwelveMidi
\inventionThirteenMidi
\inventionFourteenMidi
\inventionFifteenMidi
