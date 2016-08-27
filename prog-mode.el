;;nlinum
(setq nlinum-format "%d ")
(add-hook 'prog-mode-hook 'nlinum-mode)

;;company
(add-hook 'prog-mode-hook 'company-mode)

;;smartparens
;;(customize-set-value 'sp-base-key-bindings 'sp)
;;(require 'smartparens-config)
;;(add-hook 'prog-mode-hook 'smartparens-strict-mode)
;;(add-hook 'prog-mode-hook 'show-smartparens-mode)

;;web-mode
(setq web-mode-markup-indent-offset 2)
(setq web-mode-css-indent-offset 2)
(setq web-mode-code-indent-offset 2)
(setq web-mode-attr-indent-offset 2)
(setq web-mode-enable-auto-pairing t)

(defvar web-electric-pairs '((?' . ?') (?< . ?>)) "Electric pairs for web-mode.")
(defun web-add-electric-pairs ()
  (setq-local electric-pair-pairs (append electric-pair-pairs web-electric-pairs)))
  ;;(setq-local electric-pair-text-pairs electric-pair-pairs))
(add-hook 'web-mode-hook 'web-add-electric-pairs)
(add-hook 'web-mode-hook #'electric-pair-mode)

(add-to-list 'auto-mode-alist '("\\.jsx?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.json\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css\\'"  . web-mode))

;;elisp
(add-hook 'emacs-lisp-mode-hook #'parinfer-mode)
(add-to-list 'auto-mode-alist '("Cask\\'" . emacs-lisp-mode))

;;clojure
(defun my-clojure-mode-hook ()
    (clj-refactor-mode 1)
    (cljr-add-keybindings-with-prefix "C-c C-r"))
(add-hook 'clojure-mode-hook #'my-clojure-mode-hook)

(add-hook 'clojure-mode-hook #'parinfer-mode)

;;js
;(custom-set-variables
; '(js2-basic-offset 2)
; '(js2-bounce-indent-p t)
;)
;(add-to-list 'auto-mode-alist '("\\.jsx?\\'" . js2-jsx-mode))
;(add-to-list 'auto-mode-alist '("\\.json\\'" . js2-jsx-mode))
