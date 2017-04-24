(add-hook 'before-save-hook 'whitespace-cleanup)
(global-auto-revert-mode 1)
(setq-default indent-tabs-mode nil)

(setq backup-inhibited t)
(setq make-backup-files nil)
(setq auto-save-default nil)

(provide 'my-files)
