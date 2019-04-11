(setq inhibit-startup-screen t)

(tooltip-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

;;(global-font-lock-mode -1)

(when (window-system)
  ;; SF Mono: https://medium.com/@deepak.gulati/using-sf-mono-in-emacs-6712c45b2a6d
  ;; SF Pro:  https://developer.apple.com/
  (when (member "SF Mono" (font-family-list))
    (set-face-attribute 'default nil :family "SF Mono" :height 200))
  (when (member "SF Pro" (font-family-list))
    (set-face-attribute 'variable-pitch nil :family "SF Pro" :height 200)))

(use-package mixed-pitch
  :pin melpa
  :hook
  (markdown-mode . mixed-pitch-mode))

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
