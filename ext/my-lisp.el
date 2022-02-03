;; https://github.com/danieroux/emacs/blob/master/mine/djr-clojure.el#L6
;; The `clojure-indent-function` has hardcoded 'always-align statements in it
;; This specifically messes with (:require) statements
;; (defun djr-tonsky-indent (indent-point state)
;;   (goto-char (elt state 1))
;;   (if (clojure--not-function-form-p)
;;       (1+ (current-column))
;;     (forward-char 1)
;;     (clojure--normal-indent calculate-lisp-indent-last-sexp 'always-indent)))

(use-package clojure-mode
  :config
  (put-clojure-indent 'clojure.spec/fdef 1)
  (put-clojure-indent 'clojure.spec.alpha/fdef 1)
  (put-clojure-indent 'clojure.core.match/match 1)
  (put-clojure-indent 'not-join 1))
  ;; :init
  ;; (progn
  ;;   (add-hook 'clojure-mode-hook
  ;;             (lambda ()
  ;;               ;; Enable https://tonsky.me/blog/clojurefmt
  ;;               (setq clojure-indent-style 'always-indent)
  ;;               (setq clojure-align-forms-automatically t)
  ;;               (setq-local lisp-indent-function #'djr-tonsky-indent)))))

(use-package cider
  :pin melpa-stable
  :init
  (setq cider-prompt-save-file-on-load 'always-save)
  (setq cider-clojure-cli-global-options "-Adev"))

(use-package clj-refactor
  :config
  (cljr-add-keybindings-with-prefix "C-c r")
  (add-hook 'clojure-mode-hook #'clj-refactor-mode)
  (add-hook 'clojure-mode-hook 'yas-minor-mode))

(use-package parinfer-rust-mode
  :pin melpa-stable
  :bind
  (("C-c t" . parinfer-rust-toggle-paren-mode))
  :hook emacs-lisp-mode)

(provide 'my-lisp)
