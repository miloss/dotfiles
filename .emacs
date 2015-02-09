;;; .emacs --- Emacs file

;; Milos Popovic <the.elephant@gmail.com>

(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'default-frame-alist '(width . 93))

(let ((default-directory "~/.emacs.d/"))
	(normal-top-level-add-subdirs-to-load-path))

;; emacs customizations
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(inhibit-startup-screen t)
 '(js-auto-indent-flag nil)
 '(js-flat-functions t)
; '(js-indent-level 2)
 '(js-indent-level 4)
 '(safe-local-variable-values (quote ((lexical-binding . t))))
 '(speedbar-show-unknown-files t)
; '(speedbar-use-images nil)
 '(sr-speedbar-width-console 36)
 '(sr-speedbar-width-x 36)
 '(tool-bar-mode nil))

(tool-bar-mode -1)
(menu-bar-mode 0)
;(setq scroll-step 1)
;(setq scroll-conservatively 10000)
;(setq scroll-preserve-screen-position 1)
;(setq auto-window-vscroll nil)
(setq column-number-mode t)
(set-scroll-bar-mode 'right)
(global-auto-revert-mode t)
(delete-selection-mode 1)
;(toggle-truncate-lines)
(setq-default truncate-lines t)
(setq lazy-highlight-cleanup nil)
(setq ring-bell-function 'ignore)

(set-default-font "Monaco 12")
;(setq next-line-add-newlines nil)
(setq scroll-preserve-screen-position t)
(setq x-select-enable-clipboard t)

(setq mouse-wheel-scroll-amount '(1 ((shift) . 1) ((control) . nil)))
(setq mouse-wheel-progressive-speed nil)
(setq frame-title-format '("" "%f (%m) - Emacs " emacs-version))
;(setq default-frame-alist	'((width . 120) (height . 57)))
(set-frame-parameter (selected-frame) 'alpha '(96 96))

(setq
  backup-by-copying t
  backup-directory-alist
  '(("." . "~/.emacs.backups"))
  delete-old-versions t
  kept-new-versions 6
  kept-old-versions 2
  version-control t)

;; Tab size
(setq tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52))
(setq-default tab-width 4)
;(setq tab-stop-list '(2 4 6 8 10 12 14 16 18 20 22 24 26 28 30 32 34 36 38 40 42 44 46 48))
;(setq-default tab-width 2)

;; Spaces instead of tabs
(setq-default indent-tabs-mode nil)

;; Mac OS X
(setq mac-command-modifier 'control)

(load-file "~/.emacs.d/emacs-functions.el")
(load-file "~/.emacs.d/emacs-libraries.el")
(load-file "~/.emacs.d/emacs-keyboard.el")

;; Predefined desktops
(global-set-key (kbd "C-x <f1>")
	(lambda()(interactive)
		(desktop-change-message "/path/to/desktop")))

;;; .emacs ends here
