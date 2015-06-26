#lang racket/gui

(provide options-dialog)


(define options-dialog (instantiate dialog% ("OilSim 4 DB tool options")))
(new text-field% [parent options-dialog] [label "Your name"])
(define options-dialog-panel (new horizontal-panel% [parent options-dialog]
                   [alignment '(center center)]))

(new button% [parent options-dialog-panel] [label "Cancel"])
(new button% [parent options-dialog-panel] [label "Ok"])
(when (system-position-ok-before-cancel?)
  (send options-dialog change-children reverse))
