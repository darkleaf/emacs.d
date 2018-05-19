(use-package nlinum
  :init
  (setq nlinum-format "%d ")
  :config
  (add-hook 'prog-mode-hook 'nlinum-mode))

(use-package yaml-mode)
(use-package dockerfile-mode)
(use-package markdown-mode)
(use-package toml-mode)
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

(provide 'my-prog)
