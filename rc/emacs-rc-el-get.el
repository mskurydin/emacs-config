
(require 'el-get)


(setq el-get-sources '())


(setq my-el-get-packages
      (append '(
                highlight-symbol
                zenburn-theme
                undo-tree
                magit
                )
              (mapcar 'el-get-source-name el-get-sources)))

(el-get 'sync my-el-get-packages)

