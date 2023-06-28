%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"

fermataOverBarline = {
  \override Score.TextMark.self-alignment-X = #CENTER
  \textEndMark \markup { \musicglyph "scripts.ufermata" }
}

fermataUnderBarline = {
  \tweak direction #DOWN
  \textEndMark \markup { \musicglyph "scripts.dfermata" }
}
