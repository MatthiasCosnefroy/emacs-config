; set the el-get path, and create it if it doesn't exist
(setq elget-path "~/.emacs.d/el-get/")
(create-directory elget-path)

(defun make-elget-path (plugin)
  (expand-file-name
   (concat elget-path plugin)))

(defun include-elget-plugin (plugin)
  (add-to-list 'load-path (make-elget-path plugin)))

(defun install-el-get ()
  (eval-url
   "https://github.com/dimitri/el-get/raw/master/el-get-install.el"))

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
        (:name ess
               :type git
               :url "git://github.com/emacs-ess/ESS.git"
               :load-path "lisp"
               :build ("make") ; failed on MAC OS
               :features ess-site)
        (:name yaml-mode
               :type git
               :url "git://github.com/yoshiki/yaml-mode.git"
               :features yaml-mode)))

; custom packages to install
(setq my-elget-packages
        (append
            (mapcar 'el-get-source-name el-get-sources)
            '(auto-complete auctex color-theme-solarized ein)
            '(magit markdown-mode matlab-mode nxhtml pydoc-info)
            '(scss-mode popup jedi nyan-mode helm helm-descbinds)
            ))

; first enable shallow clone, so we don't need to clone the entire
; history of every project
(setq el-get-git-shallow-clone t)

; then intsall!
(el-get 'sync my-elget-packages)

(provide 'el-get-settings)
