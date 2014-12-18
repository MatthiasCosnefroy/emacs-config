;;; Initial Emacs settings
;;; Modified by Xiaming Chen
;;; xiaming.chen@gmx.com

;; path where settings files are kept
(add-to-list 'load-path "~/.emacs.d/settings")

;; define various custom functions
(require 'custom-functions)

;; configure general settings
(require 'general-settings)

;; install dependencies with el-get
(require 'el-get-settings)

;; Install dependencies via MELPA
(require 'melpa-settings)

;---------------;
;;; Utilities ;;;
;---------------;

;; don't show the tool bar
(require 'tool-bar)
(tool-bar-mode 0)

;; turn on mouse wheel support for scrolling
(require 'mwheel)
(mouse-wheel-mode 1)

;; show line and colume number
(require 'linum)
(global-linum-mode 1)
(column-number-mode 1)

;; highlight lines that go beyond thw columnus limit
(require 'whitespace)
(setq whitespace-style '(face empty tabs lines-tail trailing))
(global-whitespace-mode t)
(setq whitespace-line-column 79)

;; highlight parentheses when the cursor is next to them
(require 'paren)
(show-paren-mode 1)

;; text decoration
(require 'font-lock)
(setq font-lock-maximum-decoration 0)
(global-font-lock-mode 1)
(global-hi-lock-mode nil)
(setq jit-lock-contextually 1)
(setq jit-lock-stealth-verbose 1)

;; Auto complete
(require 'auto-complete-settings)

;; Camelcase functions
(require 'camelcase-settings)

;; Helm
(require 'helm-settings)

;; Flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)

;-----------;
;;; Modes ;;;
;-----------;

;; Pig mode
(require 'pig-settings)

;; Markdown mode
(require 'markdown-settings)

;; Python mode
(require 'python-settings)

;; LaTeX and Auctex
(require 'latex-settings)

;; R development mode
(require 'r-settings)

;; YAML mode
(require 'yaml-settings)

;; Web development
(require 'web-dev-settings)

;; Ido mode
;; (require 'ido-settings)

;; SCSS Mode
;; (require 'scss-settings)

;; Matlab mode
;; (require 'matlab-settings)
