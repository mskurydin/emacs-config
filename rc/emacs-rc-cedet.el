
(setq cedet-dir (concat el-get-dir "cedet/"))
(setq cedet-contrib-dir (concat cedet-dir "contrib/"))

(add-to-list 'load-path cedet-contrib-dir)

;; (load-file (concat cedet-dir "cedet-devel-load.el"))
;; (load-file (concat cedet-contrib-dir "cedet-contrib-load.el"))

(add-to-list 'semantic-default-submodes 'global-semanticdb-minor-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-mru-bookmark-mode)
(add-to-list 'semantic-default-submodes 'global-semanticdb-minor-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-idle-scheduler-mode)
(add-to-list 'semantic-default-submodes 'global-cedet-m3-minor-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-highlight-func-mode)

(semantic-mode 1)


(require 'cedet-files)
(require 'eassist)


;;====================================================
;; TODO:
;;  - limited autocompletion
;;  - support for code folding
;;====================================================


(defun my/cedet-hook ()
  (local-set-key [(control return)] 'semantic-ia-complete-symbol-menu)
  (local-set-key "\C-c?" 'semantic-ia-complete-symbol)
  (local-set-key "\C-c>" 'semantic-comsemantic-ia-complete-symbolplete-analyze-inline)
  (local-set-key "\C-c=" 'semantic-decoration-include-visit)
  (local-set-key "\C-cj" 'semantic-ia-fast-jump)
  (local-set-key "\C-cq" 'semantic-ia-show-doc)
  (local-set-key "\C-cs" 'semantic-ia-show-summary)
  (local-set-key "\C-cp" 'semantic-analyze-proto-impl-toggle))

(add-hook 'c-mode-common-hook 'my/cedet-hook)
(add-hook 'emacs-lisp-mode-hook 'my/cedet-hook)

(defun my/c-mode-cedet-hook ()
  (local-set-key "\C-ct" 'eassist-switch-h-cpp)
  (local-set-key "\C-ce" 'eassist-list-methods)
  (local-set-key "\C-c\C-r" 'semantic-symref))

(add-hook 'c-mode-common-hook 'my/c-mode-cedet-hook)


(when (cedet-gnu-global-version-check t)
  (semanticdb-enable-gnu-global-databases 'c-mode t)
  (semanticdb-enable-gnu-global-databases 'c++-mode t))

(semantic-load-enable-minimum-features)

