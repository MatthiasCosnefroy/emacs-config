;-------------------------------------;
;;; Configure/Load package Settings ;;;
;-------------------------------------;

;---------------;
;;; Utilities ;;;
;---------------;

; don't show the tool bar
(require 'tool-bar)
(tool-bar-mode 0)

; turn on mouse wheel support for scrolling
(require 'mwheel)
(mouse-wheel-mode 1)

; show line and colume number
(require 'linum)
(global-linum-mode 1)
(column-number-mode 1)

; highlight lines that go beyond thw columnus limit
(require 'whitespace)
(setq whitespace-style '(face empty tabs lines-tail trailing))
(global-whitespace-mode t)
(setq whitespace-line-column 79)

; highlight parentheses when the cursor is next to them
(require 'paren)
(show-paren-mode 1)

; text decoration
(require 'font-lock)
;(setq font-lock-maximum-decoration 1)
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

;; rpg-dictionary
(require 'rpg-dictionary)

;; Git
;; (include-elget-plugin "magit")
;; (require 'magit)

;; Popup
;; (include-elget-plugin "popup")
;; (require 'popup)

;; Websocket
;; (include-elget-plugin "websocket")
;; (require 'websocket)

;; Request
;; (include-elget-plugin "request")
;; (require 'request)

;-----------;
;;; Modes ;;;
;-----------;

;; Ido mode
(require 'ido-settings)

;; Pig mode
(require 'pig-settings)

;; Markdown mode
(require 'markdown-settings)

;; Python mode
(require 'python-settings)

;; LaTeX and Auctex
(require 'latex-settings)

;; SCSS Mode
(require 'scss-settings)

;; R development mode
(require 'r-settings)

;; yaml mode
(require 'yaml-settings)
(put 'upcase-region 'disabled nil)

;; MuMaMo
;; (require 'mumamo-settings)

;; Matlab mode
;; (require 'matlab-settings)

;; Nyancat mode!
;; (nyan-mode 1)

(provide 'init)
