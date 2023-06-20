# 15-two-part-inventions
LilyPond source files for Johann Sebastian Bach's 15 Two-Part Inventions.

## Requirements
LilyPond version 2.24.0 or higher.

## Producing PDFs or other outputs
You can always go to my latest release [here](https://github.com/ksnortum/15-two-part-inventions/releases/latest), or use [Frescobaldi](https://www.frescobaldi.org/), or create the PDFs from the command line.  It is assumed that `lilypond` is in the PATH of your system.

`cd` into your installation directory and type:

        lilypond 15-two-part-inv-book.ly

This should produce a PDF and fifteen MIDI files.

The PDF produced will have point-and-click info in it, which you may not want (it makes the file size much bigger).  To avoid this use the `-dno-point-and-click` command line option.  This is explained in detail [here](https://lilypond.org/doc/v2.24/Documentation/usage/command_002dline-usage).

There are also fifteen LilyPond files to create the inventions separately: `invention-no1-C-maj.ly`, `invention-no2-C-min.ly`, etc.

## Source material
I have attempted to create an "uneditted" version of the Inventions, so I used one of Bach's maniscripts, but since I am not an expert on Bach's works I referenced an early edition.  I was not prepared for the number of discrepencies between the two of them, so I also looked at a later edition.  These are documented in the `includes\header-paper.ily` file.

## Ornamentation
The ornamentation varied the most between sources.  I looked to the manuscript the most for the final say.  Realization of these ornaments in the MIDI files was done mostly by the `articulate.ly` function but some ornaments such as down- and up-mordants had to be done by hand.  In a few places, `articulate.ly` realized trills too fast and these were also manually adjusted.

## Licensing
This work is licensed under CC BY-SA 4.0. To view a copy of this license, visit [http://creativecommons.org/licenses/by-sa/4.0/](http://creativecommons.org/licenses/by-sa/4.0/).

## Questions, problems, etc.
If you have a question about these source files or how to produce a PDF, you can contact me at: **knute (at) snortum (dot) net**
