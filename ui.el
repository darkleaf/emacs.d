(setq inhibit-startup-screen t)

;;(tooltip-mode -1)
;;(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

(when (window-system)
  ;;(set-face-attribute 'default nil :family "Source Code Pro" :height 165)
  (set-face-attribute 'default nil :family "Courier" :height 165))