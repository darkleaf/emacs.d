(require 'cask "~/.cask/cask.el")
(cask-initialize)

;; expand region
(global-set-key (kbd "C-c w") 'er/expand-region)
(setq expand-region-contract-fast-key "W")
