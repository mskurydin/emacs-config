
(autoload 'gtags-mode "gtags" "" t)


(add-hook 'gtags-mode-hook
          (lambda ()
            (define-key gtags-mode-map "\M-." 'gtags-find-tag)
            (define-key gtags-mode-map "\M-," 'gtags-find-rtag)
            (define-key gtags-mode-map "\M-*" 'gtags-pop-stack)
            (define-key gtags-select-mode-map "\M-*" 'gtags-pop-stack)))

;; Make sure gtags is loaded for c-mode
(add-hook 'c-mode-hook
          '(lambda ()
             (gtags-mode 1)))

(add-hook 'gtags-select-mode-hook
          '(lambda ()
             (setq hl-line-face 'underline)
             (hl-line-mode 1)))

