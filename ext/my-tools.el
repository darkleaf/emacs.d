(windmove-default-keybindings 'super)

(setq dabbrev-case-fold-search nil)

(use-package counsel-projectile
  :init
  (setq projectile-keymap-prefix (kbd "C-c p"))
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

(use-package avy
  :bind
  (("C-:" . avy-goto-char)
   ("C-'" . avy-goto-char-2)
   ("M-g f" . avy-goto-line)
   ("M-g w" . avy-goto-word-1)
   ("M-g e" . avy-goto-word-0)))

(use-package docker-tramp
  :config
  (require 'docker-tramp-compat))

(provide 'my-tools)
