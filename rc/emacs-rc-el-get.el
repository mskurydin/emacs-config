
(require 'el-get)


(setq el-get-sources '(
                       (:name expand-region
                              :type github
                              :branch "master"
                              :pkgname "magnars/expand-region.el")
                       ))


(setq my-el-get-packages
      (append '(
                highlight-symbol
                zenburn-theme
                undo-tree
                magit
                rect-mark
                ace-jump-mode
                switch-window
                )
              (mapcar 'el-get-source-name el-get-sources)))

(el-get 'sync my-el-get-packages)

