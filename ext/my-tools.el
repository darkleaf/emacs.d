(windmove-default-keybindings 'super)

(setq dabbrev-case-fold-search nil)

(use-package counsel-projectile
  :config
  (counsel-projectile-mode))

(use-package ivy
  :bind
  (("C-s"   . swiper)
   ("M-y"   . counsel-yank-pop)
   ("C-c g" . counsel-git-grep))
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t)
  (setq ivy-re-builders-alist
        '((t . ivy--regex-ignore-order))))

(provide 'my-tools)
