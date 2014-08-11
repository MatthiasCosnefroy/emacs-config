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

;; configure/load emacs package settings
(require 'init-settings)
