
(require 'el-get)


(setq el-get-sources '(
                       (:name expand-region
                              :type github
                              :branch "master"
                              :pkgname "magnars/expand-region.el")
                       (:name scala-mode2
                              :type github
                              :branch "master"
                              :pkgname "hvesalai/scala-mode2")
                       (:name cool-mode
                              :type hg
                              :url "https://bitbucket.org/srirampc/cool-mode")
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
                cedet
                mark-multiple
                )
              (mapcar 'el-get-source-name el-get-sources)))

(el-get 'sync my-el-get-packages)

