;;nlinum
(setq nlinum-format "%d ")
(add-hook 'prog-mode-hook 'nlinum-mode)

;;smartparens
(customize-set-value 'sp-base-key-bindings 'sp)
(require 'smartparens-config)
(add-hook 'prog-mode-hook 'smartparens-strict-mode)
(add-hook 'prog-mode-hook 'show-smartparens-mode)

;;clojure
(defun my-clojure-mode-hook ()
    (clj-refactor-mode 1)
    (cljr-add-keybindings-with-prefix "C-c C-r"))
(add-hook 'clojure-mode-hook #'my-clojure-mode-hook)
