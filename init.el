(require 'package)
;; (setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/"))
;;(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))
(require 'bind-key)

(setq use-package-always-ensure t)
(setq use-package-always-pin "melpa-stable")

(add-to-list 'load-path "~/.emacs.d/vendor")
(add-to-list 'load-path "~/.emacs.d/ext")

(require 'my-fix)
(require 'my-ui)
(require 'my-files)
(require 'my-keyboard)

(require 'my-tools)
(require 'my-prog)
(require 'my-lisp)
(require 'my-web)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (graphql projectile s swiper toml-mode treepy use-package with-editor yasnippet async bind-key cider clj-refactor clojure-mode counsel dash edn epl ghub git-commit haml-mode hydra inflections ivy let-alist magit-popup markdown-mode mixed-pitch multiple-cursors paredit peg pkg-info queue seq sesman spinner magit langtool avy docker-tramp sass-mode rjsx-mode js2-mode web-mode parinfer go-mode haskell-mode dockerfile-mode yaml-mode nlinum counsel-projectile dim exec-path-from-shell)))
 '(safe-local-variable-values
   (quote
    ((eval setq cider-refresh-before-fn "user/stop" cider-refresh-after-fn "user/start")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'downcase-region 'disabled nil)
