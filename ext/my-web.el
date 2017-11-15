(use-package web-mode
  :bind
  (:map web-mode-map
        ("M-<tab>" . dabbrev-completion))
  :config
  (add-hook 'web-mode-hook 'electric-pair-local-mode))

;; https://github.com/magnars/.emacs.d/blob/master/settings/setup-js2-mode.el
(use-package js2-mode
  :config
  (setq js2-basic-offset 2)
  (setq-default js2-global-externs
                '("module" "require" "buster" "sinon" "assert" "refute"
                  "setTimeout" "clearTimeout" "setInterval" "clearInterval"
                  "location" "__dirname" "console" "JSON" "process")))

(use-package rjsx-mode
  :mode ("\\.jsx?\\'")
  :pin melpa-stable)

(provide 'my-web)
