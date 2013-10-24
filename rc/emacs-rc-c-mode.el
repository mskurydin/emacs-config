
(setq c-default-style "linux")
(setq c-basic-offset 3)

;; Use gtags mode when editing C files
(add-hook 'c-mode-hook
   '(lambda ()
      (gtags-mode t)))

