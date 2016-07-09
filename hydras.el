(global-set-key
 (kbd "C-t")
 (defhydra hydra-text-navigation (:columns 4)
   "text navigation"
   ("f" forward-char "forward") 
   ("b" backward-char "backward")
   ("p" previous-line "previous line")
   ("n" next-line "next line")

   ("h" backward-word "bakward word")
   ("j" scroll-up-command "scroll up")
   ("k" scroll-down-command "scroll down")
   ("l" forward-word "forward word")
   
   ("a" beginning-of-line "begining of line")
   ("A" backward-sentence "backward sentence")
   ("e" move-end-of-line "end of line")
   ("E" forward-sentence "forwaed sentencse")

   ("," beginning-of-buffer "beginning of buffer")
   ("." end-of-buffer "end of buffer")
   
   ("r" recenter "recenter")
   ("i" nil "insert")))

(global-set-key
 (kbd "C-s")
 (defhydra hydra-sexp-navigation (:columns 4)
   "sexp navigation"
   ("f" sp-forward-sexp "forward") 
   ("b" sp-backward-sexp "backward")
   ("n" sp-next-sexp "next")
   ("p" sp-previous-sexp "previous")

   ("h" sp-backward-symbol "backward symbol")
   ("j" scroll-up-command "scroll up")
   ("k" scroll-down-command "scroll down")
   ("l" sp-forward-symbol "forward symbol")

   ("a" sp-beginning-of-sexp "begining of sexp")
   ("e" sp-end-of-sexp "end of sexp")
   ("u" sp-backward-up-sexp "up")
   ("d" sp-down-sexp "down")

   ("w" sp-kill-sexp "kill")
   ("W" sp-copy-sexp "copy")
   ("y" yank "yank")
   ("Y" helm-show-kill-ring "browse kill ring")

   ("[" sp-select-previous-thing "select previous")   
   ("]" sp-select-next-thing-exchange)
   ("}" sp-select-next-thing "select next")
   ("{" sp-select-previous-thing-exchange)
   
   ("s" sp-splice-sexp "splice")
   ("r" sp-rewrap-sexp "rewrap")
   ("c" sp-comment "comment")
   ("t" sp-transpose-sexp "transpose")
   
   ("," beginning-of-buffer "beginning of buffer")
   ("." end-of-buffer "end of buffer")

   ;("r" recenter "recenter")

   ("z" undo "undo")
   ("i" nil "insert")))
