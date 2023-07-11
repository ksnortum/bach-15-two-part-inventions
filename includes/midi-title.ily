\version "2.24.1"

%%%
%%% midi-title.ily - Create custom MIDI file names
%%%

%%% Usage

%{

%%% ...-1-Movement 1.midi
\score {
  \header {
    midititle = "Movement 1"
  }
  c
  \midi { }
}

%%% ...-2-Movemet 2.midi
\score {
  \header {
    title = "Movement 2"
  }
  d
  \midi { }
}

%%% completelyDifferentFile.midi
\score {
  \header {
    midiOutputFile = "completelyDifferentFile"
  }
  d
  \midi { }
}

%%% ...-4-mmt3.midi
\score {
  \header {
    title = "Movement 3"
    midiOutputSuffix = "mmt3"
  }
  d
  \midi { }
}

%%% ...-5.midi
\score {
  \header {
    title = "Movement 4"
    midiOutputSuffix = ""
  }
  d
  \midi { }
}

%}

%%% Create a binding to current module so we can get back there
#(module-define! (resolve-module '(lily)) 'mod (current-module))

%%% Change to lily module
#(set-current-module (resolve-module '(lily)))

% New convenience function to obtain midiOutputFile property from header
#(define (midi-filename-from-headers headers)
   (let ((f (ly:modules-lookup headers 'midiOutputFile)))
     (if f (markup->string f) #f)))

% New convenience function to obtain midiOutputSuffix property from header
#(define (midi-suffix-from-headers headers)
   (let ((f (ly:modules-lookup headers 'midiOutputSuffix)))
     (if f (markup->string f) #f)))

#(define-public (write-performances-midis performances basename . rest)
  (let* ((midi-ext (ly:get-option 'midi-extension))
         (n (length performances))                                      ; change: calculate highest number of digits
         (ndigits (1+ (floor (log10 n)))))                              ; used for padding counts
    (let
        loop
      ((perfs performances)
       (count (if (null? rest) 0 (car rest))))
      (if (pair? perfs)
          (let* ((perf (car perfs))
                 (performance-name (performance-name-from-headers       ; change: previously done directly in format,
                                    (ly:performance-headers perf)))     ; now we need this multiple times
                 (midi-filename (midi-filename-from-headers             ; this is new
                                 (ly:performance-headers perf)))
                 (midi-suffix (midi-suffix-from-headers                 ; this is new
                                 (ly:performance-headers perf)))
                 (suffix (or midi-suffix performance-name)))            ; this is new
            (ly:performance-write
             perf
             (if midi-filename                                          ; New case if midiOutputFile is specified            
                 (format #f "~a.~a" midi-filename midi-ext)             ; new branch then use this given file
                 (if (> n 1)                                            ; change from (> count 0) (so first file will also get count)
                     (if (equal? suffix "")                             ; New case if suffix is not specified
                         ((@ (ice-9 format) format)                     ; change: use ice-9 format to allow for variable padding
                          #f "~a-~v,'0d.~a" basename ndigits (1+ count) midi-ext) ; change: use ice-9 format to allow for variable padding, start count with 1
                         ((@ (ice-9 format) format)                     ; New branch if suffix is specified use suffix
                          #f "~a-~v,'0d-~a.~a"
                          basename ndigits (1+ count) suffix midi-ext))
                     (format #f "~a.~a" basename midi-ext)))
             performance-name)
            (loop (cdr perfs) (1+ count)))))))

%%% Done, change back to correct module
#(set-current-module mod)
