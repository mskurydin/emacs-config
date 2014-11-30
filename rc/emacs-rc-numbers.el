;;
;; Set of functions for dealing with numbers represented in hex and decimal formats
;; directly in the current buffer.
;;
;; Known limitations:
;;  - Doesn't quite work when the number is in the very beginning of buffer (TODO)
;; 

(defun num-get-line-start-guard ()
  (- 1 (line-beginning-position)))

(defun num-get-line-end-guard ()
  (+ (line-end-position) 1))



(defun num-insert-dec-value-of-hex ()
  (interactive)
  (let (input-str
        number-to-convert-str
        number-start-pos
        number-end-pos)
    (save-excursion
      (search-backward-regexp "[^0-9A-Fa-fx#]" (num-get-line-start-guard) nil)
      (forward-char)
      (setq number-start-pos (point))
      (search-forward-regexp "[^0-9A-Fa-fx#]" (num-get-line-end-guard) nil)
      (backward-char)
      (setq number-end-pos (point)))
    (setq input-str (buffer-substring-no-properties
                    number-start-pos
                    number-end-pos))
    (let ((case-fold-search nil))
      (setq number-to-convert-str
          (replace-regexp-in-string "^0x" ""
              (replace-regexp-in-string "^#x" ""
                  (replace-regexp-in-string "^#" "" input-str))))
    )
    (goto-char number-end-pos)
    (insert (format "<%d>" (string-to-number number-to-convert-str 16)))
    (goto-char (+ number-end-pos 1))
  )
)


(defun num-insert-hex-value-of-dec ()
  (interactive)
  (let (number-to-convert-str
        number-start-pos
        number-end-pos)
    (save-excursion
      (search-backward-regexp "[^0-9]" (num-get-line-start-guard) nil)
      (message "#1- %d" (point))
      (forward-char)
      (setq number-start-pos (point))
      (search-forward-regexp "[^0-9]" (num-get-line-end-guard) nil)
      (message "#2- %d" (point))
      (backward-char)
      (setq number-end-pos (point)))
    (setq number-to-convert-str (buffer-substring-no-properties
                                 number-start-pos
                                 number-end-pos))
    (goto-char number-end-pos)
    (insert (format "<0x%x>" (string-to-number number-to-convert-str 10)))
    (goto-char (+ number-end-pos 1))
  )
)


(defun num-extract-number ()
"
  Extracts a number into kill ring between <> deleting the angle brackest
  e.g. when the function is invoked on 'text <100500>' with the cursor right
  after this string or withing <>, the 100500 number will be in kill ring
  while <> will no longer be in the string.
  The cursor should end up at the position of the '<'
"
  (interactive)
  (let (number-to-extract
        number-start-pos
        number-end-pos)
    (save-excursion
      ;; TODO: add more appropriate error handling
      (search-backward-regexp "<" (num-get-line-start-guard) nil)
      (setq number-start-pos (point))
      (search-forward-regexp ">" (num-get-line-end-guard) nil)
      (setq number-end-pos (point)))
    (goto-char (- number-end-pos 1))
    (delete-char 1)
    (goto-char number-start-pos)
    (delete-char 1)
    (setq number-to-extract (buffer-substring-no-properties
                             number-start-pos
                             (- number-end-pos 2)))
    (kill-region number-start-pos (- number-end-pos 2))
  )
)

