(use-package web-mode
  :bind
  (:map web-mode-map
        ("M-<tab>" . dabbrev-completion))
  :mode
  ("\\.mustache\\'")
  :config
  (add-hook 'web-mode-hook 'electric-pair-local-mode)
  (setq web-mode-markup-indent-offset 2))

(use-package haml-mode)

;; https://github.com/magnars/.emacs.d/blob/master/settings/setup-js2-mode.el
;; (use-package js2-mode
;;   :pin melpa
;;   :config
;;   (setq js2-basic-offset 2)
;;   (setq-default js2-global-externs
;;                 '("module" "require" "buster" "sinon" "assert" "refute"
;;                   "setTimeout" "clearTimeout" "setInterval" "clearInterval"
;;                   "location" "__dirname" "console" "JSON" "process"))
;;   :mode ("\\.jsx?\\'"))

;; (use-package rjsx-mode)
;;   ;;:mode ("\\.jsx?\\'"))


(use-package typescript-mode
  :mode ("\\.tsx?\\'")
  :config
  (setq typescript-indent-level 2))

(use-package sass-mode)

(provide 'my-web)
