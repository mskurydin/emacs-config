;;
;; General emacs settings
;; Some of the settings might be eventually moved to other configuration files
;;


;; Enable the line numbers
(global-linum-mode t)

;; Show line number in the mode line
(line-number-mode 1)

;; Show column number in the mode line
(column-number-mode 1)

;; Highlight the current line
(global-hl-line-mode 1)

;; Highlight matching parathesis
(show-paren-mode 1)


;; No toolbar
(tool-bar-mode 0)

;; No menu
(menu-bar-mode 0)

;; No scrollbar
(scroll-bar-mode 0)

;; No emnacs startup message
(setq inhibit-startup-message t)


;; Display time in mode line
(display-time-mode 1)
(setq display-time-format "%H:%M [%a-%d/%m/%y]")

;;
;; TODO: Font settings should be put separately
(set-face-attribute 'default nil :height 130)


(setq-default indent-tabs-mode nil)
(setq-default tab-width 3) 

;; Emacs startup frame location and size
(add-to-list 'default-frame-alist '(left . 0))
(add-to-list 'default-frame-alist '(top . 0))
(add-to-list 'default-frame-alist '(height . 70))
(add-to-list 'default-frame-alist '(width . 90))

