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
  (eval-url "https://github.com/dimitri/el-get/raw/master/el-get-install.el"))

(defun install-my-package(plist)
	(setq my-elget-packages (append my-elget-packages plist)))

; add el-get to the load path, and install it if it doesn't exist
(include-elget-plugin "el-get")
(unless (require 'el-get nil t)
  (install-el-get))

; custom packages to install
(setq my-elget-packages '(switch-window color-theme-solarized))
(when enable-auto-complete (install-my-package '(auto-complete)))
(when enable-helm (install-my-package '(helm helm-descbinds)))
(when enable-markdown (install-my-package '(markdown-mode)))
(when enable-python (install-my-package '(jedi pydoc-info)))
(when enable-latex (install-my-package '(auctex auto-complete-auctex auto-complete)))
(when enable-rstat (install-my-package '(ess)))
(when enable-yaml (install-my-package '(yaml-mode)))
(when enable-web-dev (install-my-package '(multi-web-mode)))
(when enable-scss (install-my-package '(scss-mode)))
(when enable-matlab (install-my-package '(matlab-mode)))
(when enable-zotelo (install-my-package '(zotelo)))
(when enable-nyan (install-my-package '(nyan-mode)))

;; first enable shallow clone, so we don't need to clone the entire
;; history of every project
(setq el-get-git-shallow-clone t)

; then intsall
(el-get 'sync my-elget-packages)

(provide 'el-get-settings)
