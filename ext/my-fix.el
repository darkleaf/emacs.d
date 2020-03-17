(if (string-equal "darwin" (symbol-name system-type))
    ;;(setenv "LANG" "en_US.UTF-8"))
    (setenv "LANG" "ru_RU.UTF-8"))

(use-package exec-path-from-shell
  :if window-system
  :config
  (add-hook 'eshell-mode-hook 'exec-path-from-shell-initialize)
  (exec-path-from-shell-initialize))


(provide 'my-fix)
