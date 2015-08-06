;;------------------
;;  Configure MELPA
;;------------------

;; Install
(require 'package)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

;; To use stable versions of packages
(add-to-list 'package-archives
             '("melpa-stable" . "http://melpa-stable.milkbox.net/packages/") t)

;; Configure use-package
(if (not (package-installed-p 'use-package))
    (progn
      (package-refresh-contents)
      (package-install 'use-package)))
(require 'use-package)

;; Install packages
(when enable-flycheck (package-install 'flycheck))
(when enable-yasnippet (package-install 'yasnippet))
(when enable-pig (package-install 'pig-mode))
(when enable-evil (package-install 'evil))

(provide 'melpa-settings)
