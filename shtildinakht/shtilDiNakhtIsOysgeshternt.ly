\version "2.20.0"

\include "../_common/footers.ily"
\footer_common_with_pagenum 

\paper {
  system-system-spacing.padding = #1
}

\include "shtilDiNakhtIsOysgeshternt-header.ily"
\include "shtilDiNakhtIsOysgeshternt-music.ily"
\include "shtilDiNakhtIsOysgeshternt-lyrics.ily"

\markup \vspace #0 % space between header and score

\score {
  
%MIDION%  \unfoldRepeats { %directive do this only on midigenreration

<<
  \new ChordNames
    \voice_chords
    
  \new Staff \with { midiInstrument = "Violin"
    instrumentName = "Vocal" } 
    { 
    \clef "treble"
    {
    \global
    \voice_vocal
    }  
  }
  
  \new Lyrics {
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #1
      \stanza_one
    }

  \new Staff \with {
    midiInstrument = "Clarinet"
    instrumentName = "Clarinet (B)" } 
    { 
      \transpose c b {
        \global
        \voice_clarinet
        }  
    }

  \new Staff \with {
    midiInstrument = "Acoustic Grand"
    instrumentName = "Akkordeon" }
    {
      \global
      \voice_accordion
    }
>>

  \layout { }
} 
\markup \vspace #1 % space score and table
\lyrics_tabloid
