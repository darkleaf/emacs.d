;; (use-package nlinum
;;   :pin gnu
;;   :init
;;   (setq nlinum-format "%d ")
;;   (add-hook 'prog-mode-hook #'nlinum-mode))

(use-package yaml-mode)
(use-package dockerfile-mode)
(use-package markdown-mode
  :pin melpa
  :config
  (setq markdown-fontify-code-blocks-natively t))
(use-package toml-mode :pin melpa)
(use-package haskell-mode)

(use-package go-mode
  :config
  (add-hook 'go-mode-hook (lambda () (setq indent-tabs-mode nil))))

(use-package magit
  :bind
  (("C-x g" . magit-status)))

(use-package ruby-mode
  :config
  (defun ruby-mode-set-encoding () ()))

(use-package graphviz-dot-mode
  :ensure t
  :config
  (setq graphviz-dot-indent-width 2))

;; brew install hunspell
;; https://github.com/titoBouzout/Dictionaries
;; Russian-English Bilingual -> ru_RU
;; ~/Library/Spelling
(setq ispell-program-name "hunspell")

(provide 'my-prog)
