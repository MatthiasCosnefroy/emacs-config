;;------------------
;;  Configure MELPA
;;------------------

;; Install
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

;; Configure use-package
(if (not (package-installed-p 'use-package))
    (progn
      (package-refresh-contents)
      (package-install 'use-package)))
(require 'use-package)

;; Install packages: basics
(package-install 'switch-window)
(package-install 'color-theme-solarized)
(package-install 'evil)
;; language modes
(package-install 'yasnippet)
(package-install 'angular-snippets)
(package-install 'django-snippets)
(package-install 'el-autoyas)
(package-install 'java-snippets)
(package-install 'php-auto-yasnippets)
(package-install 'processing-snippets)
(package-install 'r-autoyas)
(package-install 'pig-snippets)
(package-install 'pig-mode)
(package-install 'markdown-mode)
(package-install 'jedi)
(package-install 'pydoc-info)
(package-install 'auctex)
(package-install 'auto-complete-auctex)
(package-install 'auto-complete)
(package-install 'ess)
(package-install 'yaml-mode)
(package-install 'multi-web-mode)
(package-install 'scss-mode)
(package-install 'matlab-mode)
;; misc utilities
(package-install 'nyan-mode)
(package-install 'flycheck)
(package-install 'auto-complete)
(package-install 'helm)
(package-install 'helm-descbinds)
(package-install 'zotelo)

(provide 'melpa-settings)