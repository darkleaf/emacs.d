(use-package nlinum
  :init
  (setq nlinum-format "%d ")
  :config
  (add-hook 'prog-mode-hook 'nlinum-mode))

(use-package yaml-mode)
(use-package dockerfile-mode)

(use-package magit
  :bind
  (("C-x g" . magit-status)))

(provide 'my-prog)
