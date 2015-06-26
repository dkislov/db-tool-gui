#lang racket/gui
(provide db-tool-text-field%)

;TODO: Need to find out solution for issue of
;class*: superclass does not provide an expected method for override
;  override name: style
;  class name: db-tool-text-field%

(define db-tool-text-field%
  (class text-field%
    (super-new)
;     (define/override (style style-list)
;       (super style '(single vertical-label))
;       )
     (define/override (vert-margin margin)
       (super vert-margin 10)
       )
))
