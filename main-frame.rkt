#lang racket/gui
(provide main-frame)

(require "options-dialog.rkt"
         "db-tool-text-field.rkt")

(define APPLICATION_TITLE "DB tool GUI")
(define APPLICATION_WIDTH 300)
(define APPLICATION_HEIGHT 200)

(define GROUPBOX_TITLE "")

(define TEXT_FILED_TABLE_LABEL "DB table")
(define TEXT_FILED_PATH_LABEL "Path")
(define TEXT_FILED_NAMESPACE_LABEL "Namespace")


;Application main window
(define main-frame (new frame%
                    [label APPLICATION_TITLE]
                    [width APPLICATION_WIDTH]
                    [height APPLICATION_HEIGHT]
                    [style '(no-resize-border)]
                    ))
(define menu-bar (new menu-bar%
                      (parent main-frame)))

(define menu-options-item (new menu%
     (label "&File")
     (parent menu-bar)
     ))

(define group-box-panel (new group-box-panel%
                             (parent main-frame)
                             (label GROUPBOX_TITLE)))

(define panel (new vertical-panel% 
                   [parent group-box-panel]))

;TODO: need to find out how to solve issue of last symbol of label is not always displayed
(define text-field-table (new db-tool-text-field% 
                       ; (style '(single vertical-label))
                        (label TEXT_FILED_TABLE_LABEL)
                        (parent panel)
                        
                        (init-value "")))

(define text-field-path (new db-tool-text-field% 
                        (label TEXT_FILED_PATH_LABEL)
                        (parent panel)
                        (init-value "")))

(define text-field-namespace (new db-tool-text-field% 
                        (label TEXT_FILED_NAMESPACE_LABEL)
                        (parent panel)
                        (init-value "")))
