;;; Basic settings of emacs

;; set the el-get path, and create it if it doesn't exist
(setq elget-path "~/.emacs.d/el-get/")
(create-directory elget-path)

; utility to concat plugin path
(defun make-elget-path (plugin)
  (expand-file-name
   (concat elget-path plugin)))

; add plugin to loading path
(defun include-elget-plugin (plugin)
  (add-to-list 'load-path (make-elget-path plugin)))

; install el-get itself
(defun install-el-get ()
  (eval-url
   "https://raw.githubusercontent.com/caesar0301/emacs-config/master/.emacs.d/settings/el-get-install.el"))

; add el-get to the load path, and install it if it doesn't exist
(include-elget-plugin "el-get")
(unless (require 'el-get nil t)
  (install-el-get))

; extra recipes for packages unknown to el-get (yet)
(setq el-get-sources
      '((:name pig-mode
               :type git
               :url "git://github.com/motus/pig-mode.git"
               :features pig-mode)
        (:name yasnippet
               :website "https://github.com/capitaomorte/yasnippet.git"
               :description "YASnippet is a template system for Emacs."
               :type github
               :pkgname "capitaomorte/yasnippet"
               :features "yasnippet"
               :compile "yasnippet.el")
        ))

; custom packages to install
(setq my-elget-packages
      (append
       (mapcar 'el-get-source-name el-get-sources)
       '(auto-complete  ; auto completion
         auctex         ; LaTeX plugin
         auto-complete-auctex   ; auctex mode completion
         ess            ; Emacs speaks statistics
         markdown-mode  ; support for Markdown files
         scss-mode      ; support for SCSS files
         helm           ; completion and selection narrowing framework
         helm-descbinds ; describe keybindings using helm
         switch-window  ; takes over C-x o
         color-theme-solarized  ; the solarized color theme
         flycheck       ; on-the-fly syntax checking
         multi-web-mode ; auto select major mode for HTML files
         zotelo         ; Zotero citation system
         yaml-mode      ; YAML syntax
         pig-mode       ; Pig syntax
         jedi           ; general Python support
         pydoc-info     ; Python documentation
         matlab-mode    ; support Matlab files
         )))
;
;; first enable shallow clone, so we don't need to clone the entire
;; history of every project
;;
(setq el-get-git-shallow-clone t)

; then intsall!
(el-get 'sync my-elget-packages)

(provide 'el-get-settings)
