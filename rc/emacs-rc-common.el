
;; No startup message
(setq inhibit-startup-message t)

;; Enable the line numbers
(global-linum-mode t)

;; Show line and column numbers in the mode line
(line-number-mode 1)
(column-number-mode 1)

;; Highlight the current line
(global-hl-line-mode 1)

;; Highlight matching parathesis
(show-paren-mode 1)

;;
;; TODO: Font settings should be put separately
;;
;; Font settings
(set-face-attribute 'default nil :height 130)


(setq-default indent-tabs-mode nil)
(setq-default tab-width 3) 



;;
;; TOOD: where does it belong?
;;
;; Emacs startup frame location and size

(add-to-list 'default-frame-alist '(left . 0))
(add-to-list 'default-frame-alist '(top . 0))

(add-to-list 'default-frame-alist '(height . 70))
(add-to-list 'default-frame-alist '(width . 90))


