;; -*- no-byte-compile: t; lexical-binding: nil -*-
(define-package "nix-mode" "1.5.0"
  "Major mode for editing .nix files."
  '((emacs         "25.1")
    (magit-section "0")
    (transient     "0.3"))
  :url "https://github.com/NixOS/nix-mode"
  :commit "54e5626829168e22126b233e079f04dff3c71b90"
  :revdesc "54e562682916"
  :keywords '("nix" "languages" "tools" "unix")
  :maintainers '(("Matthew Bauer" . "mjbauer95@gmail.com")))
