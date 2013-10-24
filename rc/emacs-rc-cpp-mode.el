

;; Use gtags mode when editing c++ files
(add-hook 'c++-mode-hook
   '(lambda ()
      (gtags-mode t)))
