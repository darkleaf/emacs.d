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
  (add-hook 'go-mode-hook
            (lambda ()
              (setq indent-tabs-mode 1)
              (setq tab-width 4)))
  :mode ("\\.go\\'" "go\\.mod\\'"))

(use-package magit
  :pin melpa)

(use-package forge
  :pin melpa
  :after magit)

(use-package ruby-mode
  :config
  (defun ruby-mode-set-encoding () ()))

(use-package haml-mode)

(use-package graphviz-dot-mode
  :ensure t
  :config
  (setq graphviz-dot-indent-width 2))

(use-package haskell-mode)
(use-package lsp-haskell
  :pin melpa)

(defun my-java-indent-setup ()
  (c-set-offset 'arglist-intro '+)
  (c-set-offset 'arglist-close '0))
(add-hook 'java-mode-hook 'my-java-indent-setup)

(use-package json-mode)
(use-package jsonnet-mode
  :config
  (setq jsonnet-library-search-directories (list "./vendor")))
(use-package nix-mode)

;; brew install hunspell
;; https://github.com/titoBouzout/Dictionaries
;; Russian-English Bilingual -> ru_RU
;; ~/Library/Spelling
(setq ispell-program-name "hunspell")

(use-package csharp-mode)

(setq org-src-tab-acts-natively t)


(provide 'my-prog)
