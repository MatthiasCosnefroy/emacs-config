;-----------;
;;; LaTeX ;;;
;-----------;

(add-to-list 'load-path "/usr/local/share/emacs/site-lisp")
(include-elget-plugin "auctex")
(load "auctex.el" -1 1 1)
(load "preview-latex.el" -1 1 1)

(setq TeX-view-program-list '(("Evince" "evince --page-index=%(outpage) %o")))
(if (system-is-mac)
    (progn
      (require 'tex-site)
      (require 'font-latex)
      (setq TeX-view-program-list
            (quote
             (("Skim"
               (concat
                "/Applications/Skim.app/Contents/SharedSupport/displayline"
                " %n %o %b")))))
      (setq TeX-view-program-selection
            (quote (((output-dvi style-pstricks) "dvips and gv")
                    (output-dvi "xdvi")
                    (output-pdf "Skim")
                    (output-html "xdg-open")))))
  (if (system-is-linux)
      (setq TeX-view-program-selection
            (quote (((output-dvi style-pstricks) "dvips and gv")
                    (output-dvi "xdvi")
                    (output-pdf "Evince")
                    (output-html "xdg-open"))))))

; from www.emacswiki.org/emacs/AUCTex
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)
(add-hook 'LaTeX-mode-hook 'auto-fill-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t)

; spell checking
(setq ispell-program-name "aspell")
(setq ispell-dictionary "english")
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-buffer)

; always start the server for inverse search
(setq-default TeX-source-correlate-start-server t)
(add-hook 'LaTeX-mode-hook
          (lambda ()
            (tex-pdf-mode 1)
            (TeX-source-correlate-mode 1)))

(provide 'latex-settings)
