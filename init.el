(require 'cask "~/.cask/cask.el")
(cask-initialize)

(load "~/.emacs.d/parinferlib.el")
(load "~/.emacs.d/parinfer-mode.el")
(require 'parinfer-mode)

(load "~/.emacs.d/ui.el")
(load "~/.emacs.d/backups.el")
(load "~/.emacs.d/files.el")
(load "~/.emacs.d/mac-clipboard.el")
(load "~/.emacs.d/path-fix.el")
(load "~/.emacs.d/helm.el")
(load "~/.emacs.d/projectile.el")
(load "~/.emacs.d/prog-mode.el")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(safe-local-variable-values
   (quote
    ((cider-refresh-after-fn . "try-ring.dev/start")
     (cider-refresh-before-fn . "try-ring.dev/stop")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
