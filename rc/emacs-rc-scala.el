
(require 'scala-mode2)


(add-hook 'scala-mode-hook '(lambda ()
  ;; The 'newline-and-indent'
  ;; command has the following functionality: 1) it removes trailing
  ;; whitespace from the current line, 2) it create a new line, and 3)
  ;; indents it.  An alternative is the
  ;; 'reindent-then-newline-and-indent' command.
  (local-set-key (kbd "RET") 'newline-and-indent)

  ;; The 'join-line' command has the effect or joining the
  ;; current line with the previous while fixing whitespace at the joint.
  (local-set-key (kbd "M-^") 'join-line)
))

