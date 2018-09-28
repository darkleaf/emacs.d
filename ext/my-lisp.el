(use-package clojure-mode
  :config
  (put-clojure-indent 'clojure.spec/fdef 1)
  (put-clojure-indent 'clojure.spec.alpha/fdef 1))

(use-package cider
  :init
  (setq cider-prompt-save-file-on-load 'always-save))

;; (use-package clj-refactor
;;   :config
;;   (cljr-add-keybindings-with-prefix "C-c r")
;;   (add-hook 'clojure-mode-hook #'clj-refactor-mode)
;;   (add-hook 'clojure-mode-hook 'yas-minor-mode))

(use-package parinfer
  :bind
  (("C-c t" . parinfer-toggle-mode))
  :init
  (progn
    (setq parinfer-extensions
          '(defaults       ; should be included.
            pretty-parens  ; different paren styles for different modes.
            smart-tab      ; C-b & C-f jump positions and smart shift with tab & S-tab.
            smart-yank))   ; Yank behavior depend on mode.
    (add-hook 'clojure-mode-hook #'parinfer-mode)
    (add-hook 'emacs-lisp-mode-hook #'parinfer-mode)
    (add-hook 'common-lisp-mode-hook #'parinfer-mode)
    (add-hook 'scheme-mode-hook #'parinfer-mode)
    (add-hook 'lisp-mode-hook #'parinfer-mode)))

(provide 'my-lisp)
