;;; Initial Emacs settings
;;; Modified by Xiaming Chen
;;; xiaming.chen@gmx.com

;; path where settings files are kept
(add-to-list 'load-path "~/.emacs.d/settings")

;; define various custom functions
(require 'custom-functions)

;; install dependencies with el-get
(require 'el-get-settings)

;; install dependencies with MELPA
(require 'melpa-settings)

;---------------;
;;; Settings  ;;;
;---------------;

;; Configure general settings
(require 'general-settings)

;; Auto complete
(require 'auto-complete-settings)

;; Camelcase functions
(require 'camelcase-settings)

;; Helm
(require 'helm-settings)

;; Pig mode
(require 'pig-settings)

;; Markdown mode
(require 'markdown-settings)

;; Python mode
(require 'python-settings)

;; Ido mode
(require 'ido-settings)

;; LaTeX and Auctex
(require 'latex-settings)

;; R development mode
(require 'r-settings)

;; YAML mode
(require 'yaml-settings)

;; Web development
(require 'web-dev-settings)

;; SCSS Mode
(require 'scss-settings)

;; Matlab mode
(require 'matlab-settings)
