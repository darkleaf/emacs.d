(add-hook 'before-save-hook 'whitespace-cleanup)
(global-auto-revert-mode 1)
(setq vc-handled-backends nil)
(setq-default indent-tabs-mode nil)

(setq backup-inhibited t)
(setq make-backup-files nil)
(setq auto-save-default nil)

(recentf-mode 1)
(setq recentf-max-menu-items 25)

(setq dired-dwim-target t)
(provide 'my-files)
