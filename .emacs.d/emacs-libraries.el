;;; .emacs-libraries.el --- Emacs included libraries

;; Color themes
(require 'emacs-color-themes)
(load-theme 'miloss t)

;; Sr-Speedbar
(require 'sr-speedbar)
(global-set-key (kbd "M-p") 'sr-speedbar-toggle)
(speedbar-add-supported-extension ".hs")

;; SmartTabs mode
;(require 'smart-tabs-mode)
;(smart-tabs-mode-enable)

;; Auto-complete.el
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/lisp/auto-complete/ac-dict")
(ac-config-default)

;; Ido mode
(require 'ido)
(ido-mode t)
(setq ido-ignore-buffers 
	'("\\` " "^\*Mess" "^\*Completi" "^\*SPEED" "^\*scrat" "^\*Buffer"))

;; ffip
(require 'find-file-in-project)
;(setq ffip-find-primary "")
;(setq ffip-regexp ".+\\.\\(js\\|css\\|tpl\\|php\\|el\\|phtml\\|json\\|ini\\|html\\)")
;(setq ffip-find-options
;	"-not -regex \"\\(.+\\.svn.+\\|.+\\.git.+\\|.+~\\|.+\\.swp\\)\"")

; Mac OS X workaround
(setq ffip-find-primary "-E")
(setq ffip-regexp ".*(js|css|tpl|php|py|el|phtml|json|ini|html)$")
(setq ffip-find-options "")

;; PHP mode
(autoload 'php-mode "php-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.php\\'" . php-mode))
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . php-mode))

;; Load the php-imenu index function
(autoload 'php-imenu-create-index "php-imenu" nil t)

;; Add the index creation function to the php-mode-hook
(add-hook 'php-mode-hook 'php-imenu-setup)
(defun php-imenu-setup ()
	(setq imenu-create-index-function (function php-imenu-create-index))
	(setq php-imenu-alist-postprocessor (function reverse))
	(imenu-add-menubar-index))

;; Fixing array indendation in php-mode
(add-hook 'php-mode-hook (lambda ()
	(defun ywb-php-lineup-arglist-intro (langelem)
		(save-excursion
			(goto-char (cdr langelem))
			(vector (+ (current-column) c-basic-offset))))
	(defun ywb-php-lineup-arglist-close (langelem)
		(save-excursion
			(goto-char (cdr langelem))
			(vector (current-column))))
	(c-set-offset 'arglist-intro 'ywb-php-lineup-arglist-intro)
	(c-set-offset 'arglist-close 'ywb-php-lineup-arglist-close)))


;; JavaScript mode
(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.json\\'" . js-mode))
(add-hook 'js2-mode-hook 'smart-tabs-mode-enable)
(smart-tabs-advice js2-indent-line js2-basic-offset)

;; Web-mode
(autoload 'web-mode "web-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\'" . web-mode))

;; Haskell mode
(load "/usr/share/emacs24/site-lisp/haskell-mode/haskell-site-file")
(add-to-list 'auto-mode-alist '("\\.hs\\'" . haskell-mode))
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)

;; Python mode
(setq abbrev-file-name "~/.emacs.d/.abbrev_defs")
(add-to-list 'load-path "~/.emacs.d/lisp/python-mode/")
(setq py-install-directory "~/.emacs.d/lisp/python-mode/")
(autoload 'python-mode "python-mode" "Python Mode" t)
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-to-list 'interpreter-mode-alist '("python" . python-mode))
(define-coding-system-alias 'UTF-8 'utf-8)

; idomenu
(autoload 'idomenu "idomenu" nil t)

;; SQL indentation
(eval-after-load "sql" '(load-library "sql-indent"))

;; REST client mode
(autoload 'restclient-mode "restclient" nil t)
(add-to-list 'auto-mode-alist '("\\.http\\'" . restclient-mode))

;; multiple-cursors 
(add-to-list 'load-path "~/.emacs.d/mc")
(require 'multiple-cursors)

;; Jade mode
(require 'sws-mode)
(autoload 'jade-mode "jade-mode" "Jade Mode" t)
(add-to-list 'auto-mode-alist '("\\.jade\\'" . jade-mode))
