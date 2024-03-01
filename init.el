(require 'package)
;; (setq package-enable-at-startup nil)

(setq package-archives
      '(("melpa-stable" . "https://stable.melpa.org/packages/")
        ("gnu"          . "https://elpa.gnu.org/packages/")
        ("melpa"        . "https://melpa.org/packages/"))
      package-archive-priorities
      '(("melpa-stable" . 10)
        ("gnu"          . 5)
        ("melpa"        . 0)))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))
(require 'bind-key)

;; (byte-recompile-directory (expand-file-name "~/.emacs.d/elpa") 0)

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

(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'narrow-to-region 'disabled nil)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auth-source-save-behavior nil)
 '(js-indent-level 2)
 '(json-reformat:indent-width 2)
 '(package-selected-packages
   '(yaml-mode web-mode typescript-mode toml-mode sudo-edit sass-mode rainbow-identifiers pebble-mode parinfer-rust-mode nix-mode mixed-pitch lsp-haskell jsonnet-mode json-mode groovy-mode graphviz-dot-mode go-mode forge exec-path-from-shell dockerfile-mode dim csharp-mode counsel-projectile clj-refactor avy))
 '(safe-local-variable-values
   '((cider-ns-refresh-before-fn . "gmonit.system/stop")
     (cider-ns-refresh-after-fn . "gmonit.system/start")
     (cider-ns-refresh-before-fn . "gmoint.system/stop")
     (eval setq cider-refresh-before-fn "user/stop" cider-refresh-after-fn "user/start" cider-clojure-cli-global-options "-Adev")
     (eval setq cider-refresh-before-fn "user/stop" cider-refresh-after-fn "user/start"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.

 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
