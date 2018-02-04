(setq inhibit-startup-screen t)

;;(tooltip-mode -1)
;;(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

;;(global-font-lock-mode -1)

(when (window-system)
  ;;(set-face-attribute 'default nil :family "Source Code Pro" :height 165)
  ;;(set-face-attribute 'default nil :family "Courier" :height 165)

  ;;https://medium.com/@deepak.gulati/using-sf-mono-in-emacs-6712c45b2a6d
  (set-face-attribute 'default nil :font "SF Mono-20"))

(use-package dim
  :config
  (progn
    (dim-major-names
     '((emacs-lisp-mode "ε")))
    (dim-minor-names
     '((parinfer-mode
        (:eval (format " [%s]" (parinfer-current-mode)))
        parinfer)
       (projectile-mode
        (:eval (format " [%s]" (projectile-project-name)))
        projectile)))))

(provide 'my-ui)
