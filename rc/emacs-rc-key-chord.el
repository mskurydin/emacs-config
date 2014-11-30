(require 'key-chord)

(key-chord-mode 1)

(global-set-key [(control f8)] 'key-chord-describe)

(key-chord-define-global "hj"     'undo)
(key-chord-define-global ";;"     "\C-e")

(key-chord-define-global "cv"     'reindent-then-newline-and-indent)
(key-chord-define-global "4r"     "$")

(key-chord-define-global "\"\""   "\"\"\C-b")
(key-chord-define-global "\'\'"   "\'\'\C-b")
(key-chord-define-global "[["     "[]\C-b")
(key-chord-define-global "(("     "()\C-b")

;; An example of more advanced bindings
;; (key-chord-define-global ",."     "<p></p>\C-u4\C-b")



