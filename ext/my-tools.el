(windmove-default-keybindings 'super)

(setq dabbrev-case-fold-search nil)

(use-package projectile)
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
(use-package swiper)
(use-package counsel)
(use-package avy
  :bind
  (("C-:" . avy-goto-word-1)))

(use-package counsel-projectile
  :init
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
  :config
  (counsel-projectile-mode))

(defadvice projectile-project-root (around ignore-remote first activate)
    (unless (file-remote-p default-directory) ad-do-it))


;; (use-package avy
;;   :bind
;;   (("C-:" . avy-goto-char)
;;    ("C-'" . avy-goto-char-2)
;;    ("M-g f" . avy-goto-line)
;;    ("M-g w" . avy-goto-word-1)
;;    ("M-g e" . avy-goto-word-0)))

;; (use-package docker-tramp
;;   :config
;;   (require 'docker-tramp-compat))

(provide 'my-tools)
