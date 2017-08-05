(windmove-default-keybindings 'super)

(setq dabbrev-case-fold-search nil)

(use-package projectile
  :config
  (projectile-global-mode))

(use-package ivy
  :pin melpa
  :bind
  (("C-s" . swiper)
   ("M-y" . counsel-yank-pop))
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t)
  (setq ivy-re-builders-alist
        '((t . ivy--regex-ignore-order))))

(use-package counsel-projectile
  :init
  (counsel-projectile-on)
  :config
  (setq projectile-switch-project-action #'counsel-projectile-find-file)
  :bind
  (("C-c g" . counsel-git-grep)))

(provide 'my-tools)
