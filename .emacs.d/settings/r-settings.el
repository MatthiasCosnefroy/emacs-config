;; R mode with ESS mode configuration
(include-elget-plugin "ess/lisp")
(require 'ess-site)
(require 'ess-eldoc)

; (autoload 'R-mode "ess-site.el" "ESS" t)
; (add-to-list 'auto-mode-alist '("\\.R$" . R-mode))
; (setq inferior-R-program-name "/usr/bin/R")

; ;;compile the first target in the Makefile in the current directory
; ;;using F9                        
; (global-set-key [f9] 'compile)
; (setq compilation-read-command nil)

;;ESS will not print the evaluated commands, also speeds
;;up the evaluation     
(setq ess-eval-visibly-p nil)
;;not prompted each time starting an interactive R session
(setq ess-ask-for-ess-directory nil)

;;show matching parentheses         
(show-paren-mode 1)

; ;;auto completion
; ;;obtained from EmacsWiki; ESSAuto-complete
; (setq ess-use-auto-complete 'script-only)
; ;quick help
; (define-key ac-completing-map (kbd "M-h") 'ac-quick-help)
; ;movement keys
; (define-key ac-completing-map "\M-n" nil) ;; was ac-next
; (define-key ac-completing-map "\M-p" nil) ;; was ac-previous
; (define-key ac-completing-map "\M-," 'ac-next)
; (define-key ac-completing-map "\M-k" 'ac-previous)
; ;completion keys
; ; (define-key ac-completing-map [tab] 'ac-complete)
; (define-key ac-completing-map [return] nil)
; ;colors
; (set-face-attribute 'ac-candidate-face nil
;     :background "#00222c"
;     :foreground "light gray")
; (set-face-attribute 'ac-selection-face nil
;     :background "SteelBlue4"
;     :foreground "white")
; (set-face-attribute 'popup-tip-face    nil
;     :background "#003A4E"
;     :foreground "light gray")
; ;misc
; (setq 
;     ; ac-auto-show-menu 1
;     ;; ac-candidate-limit nil
;     ;; ac-delay 0.1
;     ;; ac-disable-faces (quote (font-lock-comment-face font-lock-doc-face))
;     ;; ac-ignore-case 'smart
;     ;; ac-menu-height 10
;     ;; ac-quick-help-delay 1.5
;     ;; ac-quick-help-prefer-pos-tip t
;     ;; ac-use-quick-help nil
; )

(provide 'r-settings)
