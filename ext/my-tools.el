(windmove-default-keybindings 'super)

(setq dabbrev-case-fold-search nil)

(global-set-key (kbd "C-x C-b") 'ibuffer)

(use-package ibuffer-vc
  :config
  (add-hook 'ibuffer-hook
    (lambda ()
      (ibuffer-vc-set-filter-groups-by-vc-root)
      (unless (eq ibuffer-sorting-mode 'alphabetic)
        (ibuffer-do-sort-by-alphabetic)))))

(use-package projectile
  :config
  (projectile-global-mode))

(use-package ivy
  :pin melpa
  :bind
  (("C-s" . swiper)
   ("M-y" . counsel-yank-pop))
  :config
  (ivy-mode 1))

(use-package counsel-projectile
  :config
  (counsel-projectile-on))

(provide 'my-tools)
