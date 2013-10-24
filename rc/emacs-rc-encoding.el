
;; CP 1251 encoding settings

(set-language-info-alist
"Cyrillic-CP1251" `((charset cyrillic-iso8859-5)
 (coding-system cp1251)
 (coding-priority cp1251)
 (input-method . "cyrillic-jcuken")
 (features cyril-util)
 (unibyte-display . cp1251)
 (sample-text . "Russian (Русский) Здравствуйте!")
 (documentation . "Support for Cyrillic CP1251."))
 '("Cyrillic"))

(defun replace-garbage-chars ()
  "Replace goofy MS and other garbage characters with latin1 equivalents."
  (interactive)
  (save-excursion ;save the current point
    (replace-string "\221" "`" nil (point-min) (point-max))  ; opening single quote
    (replace-string "\222" "'" nil (point-min) (point-max))  ; closing single quote
))

