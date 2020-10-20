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
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auth-source-save-behavior nil)
 '(package-selected-packages
   '(sudo-edit typescript-mode lsp-haskell let-alist seq langtool))
 '(safe-local-variable-values
   '((eval define-clojure-indent
           (p\.types/defprotocol+
            '(1
              (:defn)))
           (p\.types/definterface+
            '(1
              (:defn)))
           (p\.types/def-abstract-type
            '(1
              (:defn)))
           (p\.types/deftype+
            '(2 nil nil
                (:defn)))
           (p\.types/defrecord+
            '(2 nil nil
                (:defn))))
     (cljr-favor-prefix-notation . t)
     (eval setq cider-refresh-before-fn "user/stop" cider-refresh-after-fn "user/start" cider-clojure-cli-global-options "-Adev")
     (eval setq cider-refresh-before-fn "user/stop" cider-refresh-after-fn "user/start"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
