
(setq emacs-config-dir "~/.emacs.d/")

(setq emacs-extensions-dir (concat emacs-config-dir "extensions/"))
(setq el-get-dir emacs-extensions-dir)
(setq el-get-install-dir (concat emacs-extensions-dir "el-get/"))
(setq package-user-dir emacs-extensions-dir)

(add-to-list 'load-path emacs-config-dir)
(add-to-list 'load-path emacs-extensions-dir)
(add-to-list 'load-path el-get-install-dir)
(add-to-list 'load-path el-get-dir)


(add-to-list 'load-path "~/.emacs.d/rc")

(load "emacs-rc-el-get.el")

(load "emacs-rc-common.el")
(load "emacs-rc-ido.el")
(load "emacs-rc-gtags.el")
(load "emacs-rc-elpa.el")
(load "emacs-rc-c-mode.el")
(load "emacs-rc-cpp-mode.el")
(load "emacs-rc-octave.el")
(load "emacs-rc-color.el")
(load "emacs-rc-whitespace.el")
(load "emacs-rc-backup.el")
(load "emacs-rc-encoding.el")
(load "emacs-rc-undo.el")
(load "emacs-rc-highlight.el")
(load "emacs-rc-timeclock.el")
(load "emacs-rc-ace-jump-mode.el")
(load "emacs-rc-switch-window.el")
(load "emacs-rc-expand-region.el")
(load "emacs-rc-cedet.el")
