(require 'cask "~/.cask/cask.el")
(cask-initialize)

;; Disable GUI components
(tooltip-mode      -1)
(menu-bar-mode     -1)

;; Disable backup/autosave files
(setq backup-inhibited t)
(setq make-backup-files        nil)
(setq auto-save-default        nil)

;; Disable startup screen
(setq inhibit-startup-screen t)

;; expand region
(global-set-key (kbd "C-c w") 'er/expand-region)
(setq expand-region-contract-fast-key "W")

;;ace-window
(global-set-key (kbd "C-x o") 'ace-window)
;;(setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))

;; smartparens
(require 'smartparens-config)
(add-hook 'prog-mode-hook #'smartparens-mode)
(show-smartparens-global-mode t)

;; helm
(require 'helm-config)
(helm-mode)

(global-set-key (kbd "M-x")                          'undefined)
(global-set-key (kbd "M-x")                          'helm-M-x)
(global-set-key (kbd "M-y")                          'helm-show-kill-ring)
(global-set-key (kbd "C-x C-f")                      'helm-find-files)
(global-set-key (kbd "C-c <SPC>")                    'helm-all-mark-rings)
(global-set-key (kbd "C-x r b")                      'helm-filtered-bookmarks)
(global-set-key (kbd "C-h r")                        'helm-info-emacs)
(global-set-key (kbd "C-:")                          'helm-eval-expression-with-eldoc)
(global-set-key (kbd "C-,")                          'helm-calcul-expression)
(global-set-key (kbd "C-h i")                        'helm-info-at-point)
(global-set-key (kbd "C-x C-d")                      'helm-browse-project)
(global-set-key (kbd "<f1>")                         'helm-resume)
(global-set-key (kbd "C-h C-f")                      'helm-apropos)
(global-set-key (kbd "C-h a")                        'helm-apropos)
(global-set-key (kbd "<f5> s")                       'helm-find)
(global-set-key (kbd "<f2>")                         'helm-execute-kmacro)
(global-set-key (kbd "C-c i")                        'helm-imenu-in-all-buffers)
(global-set-key (kbd "C-s")                          'helm-swoop)
(define-key global-map [remap jump-to-register]      'helm-register)
(define-key global-map [remap list-buffers]          'helm-mini)
(define-key global-map [remap dabbrev-expand]        'helm-dabbrev)
(define-key global-map [remap find-tag]              'helm-etags-select)
(define-key global-map [remap xref-find-definitions] 'helm-etags-select)
(define-key global-map (kbd "M-g a")                 'helm-do-grep-ag)
(define-key global-map (kbd "M-g g")                 'helm-grep-do-git-grep)
(define-key global-map (kbd "M-g i")                 'helm-gid)

;; projectile
(projectile-global-mode)
;; (setq projectile-completion-system 'default)
(helm-projectile-on)

;; nlinum
(setq nlinum-format "%d ")
(add-hook 'prog-mode-hook 'nlinum-mode)

;; theme
(global-font-lock-mode -1)

;; disable syntax highlight
;;(add-hook 'prog-mode-hook 'font-lock-mode)

;; avy
(global-set-key (kbd "C-c f") 'avy-goto-char)

