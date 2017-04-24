(use-package web-mode
  :mode ("\\.jsx?\\'" "\\.json\\'")
  :bind
  (:map web-mode-map
        ("M-<tab>" . dabbrev-completion))
  :init
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-attr-indent-offset 2)
  :config
  (add-hook 'web-mode-hook 'electric-pair-local-mode))

(provide 'my-web)
