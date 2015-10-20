;; cask
(require 'cask "~/.cask/cask.el")
(cask-initialize)

;; Disable GUI components
(tooltip-mode      -1)
(menu-bar-mode     -1) ;; отключаем графическое меню
(tool-bar-mode     -1) ;; отключаем tool-bar
(scroll-bar-mode   -1) ;; отключаем полосу прокрутки
(blink-cursor-mode -1) ;; курсор не мигает
(setq use-dialog-box     nil) ;; никаких графических диалогов и окон - все через минибуфер
(setq redisplay-dont-pause t)  ;; лучшая отрисовка буфера
(setq ring-bell-function 'ignore) ;; отключить звуковой сигнал

;; Disable backup/autosave files
(setq make-backup-files        nil)
(setq auto-save-default        nil)

;; escape fix
;; https://github.com/chrisdone/god-mode/issues/43#issuecomment-67193877
(defvar personal/fast-keyseq-timeout 200)

(defun personal/-tty-ESC-filter (map)
  (if (and (equal (this-single-command-keys) [?\e])
	   (sit-for (/ personal/fast-keyseq-timeout 1000.0)))
      [escape] map))

(defun personal/-lookup-key (map key)
  (catch 'found
    (map-keymap (lambda (k b) (if (equal key k) (throw 'found b))) map)))

(defun personal/catch-tty-ESC ()
  "Setup key mappings of current terminal to turn a tty's ESC into `escape'."
  (when (memq (terminal-live-p (frame-terminal)) '(t pc))
    (let ((esc-binding (personal/-lookup-key input-decode-map ?\e)))
      (define-key input-decode-map
	[?\e] `(menu-item "" ,esc-binding :filter personal/-tty-ESC-filter)))))

(personal/catch-tty-ESC)

;; god mode
(require 'god-mode)
(global-set-key (kbd "<escape>") 'god-local-mode)

(global-set-key (kbd "C-x C-1") 'delete-other-windows)
(global-set-key (kbd "C-x C-2") 'split-window-below)
(global-set-key (kbd "C-x C-3") 'split-window-right)
(global-set-key (kbd "C-x C-0") 'delete-window)

(define-key god-local-mode-map (kbd "z") 'repeat)
(define-key god-local-mode-map (kbd "i") 'god-local-mode)

;; lines
(setq linum-format "%3d\u2502 ")
(add-hook 'prog-mode-hook 'linum-mode)

;; projectile
;;(add-hook 'prog-mode-hook 'projectile-mode)
(projectile-global-mode)
(helm-projectile-on)

;; smartparens
(require 'smartparens-config)
;;(add-hook 'prog-mode-hook 'smartparens-mode)
(smartparens-global-mode)

;; theme
(global-font-lock-mode 0)

