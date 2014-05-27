;; path where settings files are kept
(add-to-list 'load-path "~/.emacs.d/settings")

;; define various custom functions
(require 'custom-functions)

;; configure general settings
(require 'general-settings)

;; install dependencies with el-get
(require 'el-get-settings)

;---------------;
;;; Utilities ;;;
;---------------;

;; Git
(include-elget-plugin "magit")
(require 'magit)

;; Popup
(include-elget-plugin "popup")
(require 'popup)

;; Websocket
(include-elget-plugin "websocket")
(require 'websocket)

;; Request
(include-elget-plugin "request")
(require 'request)

;; Auto complete
(require 'auto-complete-settings)

;; Camelcase functions
(require 'camelcase-settings)

;; Helm
(require 'helm-settings)

;-----------;
;;; Modes ;;;
;-----------;

;; Ido mode
(require 'ido-settings)

;; Pig mode
(require 'pig-settings)

;; MuMaMo
(require 'mumamo-settings)

;; Markdown mode
(require 'markdown-settings)

;; Python mode
(require 'python-settings)

;; LaTeX and Auctex
(require 'latex-settings)

;; SCSS Mode
(require 'scss-settings)

;; Matlab mode
(require 'matlab-settings)

;; Nyancat mode!
(nyan-mode 1)

;; R development mode
(require 'r-settings)

;; yaml mode
(require 'yaml-settings)
(put 'upcase-region 'disabled nil)
