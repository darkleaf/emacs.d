;;nlinum
(setq nlinum-format "%d ")
(add-hook 'prog-mode-hook 'nlinum-mode)

;;smartparens
(customize-set-value 'sp-base-key-bindings 'sp)
(require 'smartparens-config)
(add-hook 'prog-mode-hook 'smartparens-strict-mode)
(add-hook 'prog-mode-hook 'show-smartparens-mode)
