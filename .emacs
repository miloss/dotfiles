;;; .emacs --- Emacs file

;; Milos Popovic <the.elephant@gmail.com>

(add-to-list 'load-path "~/.emacs.d/lisp/")
(add-to-list 'default-frame-alist '(width . 93))

(let ((default-directory "~/.emacs.d/lisp/"))
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
 '(js-indent-level 4)
 '(js2-strict-missing-semi-warning nil)
 '(magit-rebase-arguments nil)
 '(safe-local-variable-values (quote ((lexical-binding . t))))
 '(tool-bar-mode nil))

(setq
  speedbar-show-unknown-files t
  speedbar-use-images t
  sr-speedbar-width 30
  sr-speedbar-width-console 24
  sr-speedbar-right-side nil)

(tool-bar-mode -1)
(menu-bar-mode 0)
(when (not (display-graphic-p))
      (setq scroll-step 1))
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
(setq desktop-load-locked-desktop t)

;(set-default-font "Monaco 13") ;; Font not available on Ubuntu
(set-default-font "Ubuntu Mono 12")
(setq text-scale-mode-step 1.04)

(setq next-line-add-newlines nil)
(setq scroll-preserve-screen-position t)
(setq x-select-enable-clipboard t)

(setq mouse-wheel-scroll-amount '(1 ((shift) . 1) ((control) . nil)))
(setq mouse-wheel-progressive-speed nil)
(setq frame-title-format '("" "%f"))
(set-frame-parameter (selected-frame) 'alpha '(99 99))

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
;(setq tab-stop-list '(2 4 6 8 10 12 14 16 18 20 22 24 26 28 30))
;(setq-default tab-width 2)
(setq-default js2-basic-offset 4)

;; Spaces instead of tabs
(setq-default indent-tabs-mode nil)

;; Mac OS X
(setq mac-command-modifier 'control)
(setq ring-bell-function 'ignore)

(load-file "~/.emacs.d/emacs-functions.el")
(load-file "~/.emacs.d/emacs-libraries.el")
(load-file "~/.emacs.d/emacs-keyboard.el")

;(cd "~")
;;; .emacs ends here
