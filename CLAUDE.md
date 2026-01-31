# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a modular Emacs configuration for macOS. Configuration is source-interpreted (no build process).

## Architecture

**Entry point:** `init.el` - Sets up package management, then loads modules in order.

**Package management:** Uses `use-package` with three archives:
- `melpa-stable` (priority 10, default) - stable versions
- `gnu` (priority 5) - GNU ELPA
- `melpa` (priority 0) - pin specific packages here with `:pin melpa` for latest

**Module structure (`ext/` directory):**
| Module | Purpose |
|--------|---------|
| `my-fix.el` | macOS fixes, shell environment sync via `exec-path-from-shell` |
| `my-ui.el` | UI settings (SF Mono font), mode line customization via `dim` |
| `my-files.el` | File handling, auto-revert, whitespace cleanup |
| `my-keyboard.el` | Russian Mac keyboard layout |
| `my-tools.el` | Projectile, Ivy/Counsel, Avy navigation |
| `my-prog.el` | 15+ language modes (Go, Ruby, Magit, etc.) |
| `my-lisp.el` | Clojure (CIDER, clj-refactor), Parinfer for structural editing |
| `my-web.el` | TypeScript, Web-mode, Sass, Pebble templates |

**Vendor packages (`vendor/`):** Custom elisp not from package archives (e.g., `russian-mac.el`).

## Key Patterns

- Each module uses `(provide 'my-xxx)` and is loaded via `(require 'my-xxx)`
- Packages use declarative `use-package` with `:bind`, `:hook`, `:mode`, `:config`
- Language-specific setup via mode hooks
- Parinfer enabled for all Lisp variants (Clojure, Emacs Lisp, Common Lisp, Scheme)

## Key Bindings

- `C-c p` - Projectile commands
- `C-c r` - Clojure refactoring (clj-refactor)
- `C-c t` - Toggle Parinfer paren mode
- `C-s` - Swiper search
- `C-:` - Avy jump to word
- `Cmd+arrow` - Window movement
