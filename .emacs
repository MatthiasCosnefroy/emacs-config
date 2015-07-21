;;; emacs-config -- my emacs configuration
;;;
;;; By Xiaming Chen <chen@xiaming.me>

;; path where settings files are kept
(add-to-list 'load-path "~/.emacs.d/settings")

;; plugin triggers (change 'nil' to 't' to be enable)
(setq enable-auto-complete t)
(setq enable-camelcase t)
(setq enable-flycheck t)
(setq enable-helm t)
(setq enable-ido t)
(setq enable-yasnippet t)
(setq enable-latex nil)
(setq enable-markdown nil)
(setq enable-matlab nil)
(setq enable-pig nil)
(setq enable-python nil)
(setq enable-rstat nil)
(setq enable-scss nil)
(setq enable-web-dev nil)
(setq enable-yaml nil)
(setq enable-zotelo nil)
(setq enable-nyan nil)

;; define various custom functions
(require 'custom-functions)

;; install dependencies with el-get
(require 'el-get-settings)

;; install dependencies with MELPA
(require 'melpa-settings)

;; Configure general settings
(require 'general-settings)

;; Third party library settings
(when enable-auto-complete (require 'auto-complete-settings))
(when enable-camelcase (require 'camelcase-settings))
(when enable-helm (require 'helm-settings))
(when enable-pig (require 'pig-settings))
(when enable-markdown (require 'markdown-settings))
(when enable-python (require 'python-settings))
(when enable-ido (require 'ido-settings))
(when enable-latex (require 'latex-settings))
(when enable-rstat (require 'r-settings))
(when enable-yaml (require 'yaml-settings))
(when enable-web-dev (require 'web-dev-settings))
(when enable-scss (require 'scss-settings))
(when enable-matlab (require 'matlab-settings))
;; Support Zotero library with zotelo.el
(when enable-zotelo (require 'zotelo))

;; EOF
