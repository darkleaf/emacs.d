(require 'package)
(setq package-list '(use-package))
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa-stable" . "https://stable.melpa.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))
(package-initialize)
;; fetch the list of packages available
(unless package-archive-contents
  (package-refresh-contents))
;; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))
(setq use-package-always-ensure t)

(load "~/.emacs.d/ui.el")
(load "~/.emacs.d/backups.el")
(load "~/.emacs.d/files.el")

(setq dabbrev-case-fold-search nil)

(windmove-default-keybindings 'super)

(global-set-key (kbd "C-x C-b") 'ibuffer)

(use-package ibuffer-vc
  :config
  (add-hook 'ibuffer-hook
    (lambda ()
      (ibuffer-vc-set-filter-groups-by-vc-root)
      (unless (eq ibuffer-sorting-mode 'alphabetic)
        (ibuffer-do-sort-by-alphabetic)))))

(use-package multi-term
  :init
  (setq multi-term-program "/bin/bash"))

(use-package nlinum
  :init
  (setq nlinum-format "%d ")
  :config
  (add-hook 'prog-mode-hook 'nlinum-mode))

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

(use-package clojure-mode
  :pin melpa-stable
  :mode ".boot\\'"
  :config
  (put-clojure-indent 'clojure.spec/fdef 1))

(use-package cider
  :pin melpa
  :init
  (setq cider-prompt-save-file-on-load 'always-save))

(use-package clj-refactor
  :pin melpa
  :config
  ;;(cljr-add-keybindings-with-prefix "C-c C-m")
  (add-hook 'clojure-mode-hook 'clj-refactor-mode)
  (add-hook 'clojure-mode-hook 'yas-minor-mode))

(use-package web-mode
  :mode ("\\.jsx?\\'" "\\.json\\'")
  :bind
  (:map web-mode-map
        ("M-<tab>" . dabbrev-completion))
  :init
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-attr-indent-offset 2)
  :config
  (add-hook 'web-mode-hook 'electric-pair-local-mode))

(use-package yaml-mode)

(use-package parinfer
  :pin melpa
  :bind
  (("C-c t" . parinfer-toggle-mode))
  :init
  (progn
    (setq parinfer-extensions
          '(defaults       ; should be included.
             pretty-parens  ; different paren styles for different modes.
             smart-tab      ; C-b & C-f jump positions and smart shift with tab & S-tab.
             smart-yank))   ; Yank behavior depend on mode.
    (add-hook 'clojure-mode-hook #'parinfer-mode)
    (add-hook 'emacs-lisp-mode-hook #'parinfer-mode)))

(use-package magit
  :bind
  (("C-x g" . magit-status)))

(use-package dashboard
  :config
  (dashboard-setup-startup-hook)
  :init
  (setq dashboard-items '((recents  . 5)
                          (projects . 5))))

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

(use-package exec-path-from-shell
  :if window-system
  :config
  (exec-path-from-shell-initialize))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (ibuffer-projectile exec-path-from-shell dim spaceline dashboard magit yaml-mode parinfer web-mode clojure-mode counsel-projectile ivy projectile nlinum use-package))))
(custom-set-faces)
