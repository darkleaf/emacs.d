(use-package exec-path-from-shell
  :if window-system
  :config
  (add-hook 'eshell-mode-hook 'exec-path-from-shell-initialize)
  (exec-path-from-shell-initialize))

(provide 'my-fix)
