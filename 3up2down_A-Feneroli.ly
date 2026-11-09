
\version "2.26.0"
\language "english"

\header {
  title = "?3 ?2 D"
  composer = "Fedele Fenaroli (1730–1818)"
  poet = \markup {
    "RULES | Model - Exemplar/"
    \italic "Disjunct Bass Motions"
  }
  tagline = "Sanguinetti | The Art of Partimento (2012)"
}

\paper {
  #(set-paper-size "letter" 'landscape)

  left-margin = 15\mm
  right-margin = 15\mm
  top-margin = 12\mm
  bottom-margin = 12\mm

  indent = 0\mm
  short-indent = 0\mm

  ragged-right = ##f
  ragged-last = ##f
  print-page-number = ##f

  % Keep this six-measure example on one system.
  system-count = 1
}

% Absolute pitch entry throughout.
% English pitch names: fs = F-sharp.

soprano = {
  \voiceOne

  % Measure 1
  b'2 d''2 |

  % Measure 2
  c''2. e''4 |

  % Measure 3
  d''2. f''!4 |

  % Measure 4
  e''2. g''4 |

  % Measure 5
  fs''4 g''2 fs''4 |

  % Measure 6
  g''1 \bar "|."
}

alto = {
  \voiceTwo

  % Measure 1
  g'1~ |

  % Measure 2
  g'4 fs'4 a'2~ |

  % Measure 3
  a'4 g'4 b'2~ |

  % Measure 4
  b'4 a'4 c''2~ |

  % Measure 5
  c''4 b'4 a'2 |

  % Measure 6
  b'1 |
}

bass = {
  % Measure 1
  g,2 b,2 |

  % Measure 2
  a,2 c2 |

  % Measure 3
  b,2 d2 |

  % Measure 4
  c2 e2 |

  % Measure 5
  d1 |

  % Measure 6
  g,1 \bar "|."
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" {
      \clef treble
      \key g \major
      \numericTimeSignature
      \time 4/4

      <<
        \new Voice = "soprano" { \soprano }
        \new Voice = "alto" { \alto }
      >>
    }

    \new Staff = "lower" {
      \clef bass
      \key g \major
      \numericTimeSignature
      \time 4/4

      \bass
    }
  >>

  \layout {
    \context {
      \Score
      \omit BarNumber
    }
  }

  \midi {
    \tempo 4 = 72
  }
}

