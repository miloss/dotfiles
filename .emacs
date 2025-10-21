;;; .emacs --- Emacs file

;; Milos Popovic <the.elephant@gmail.com>

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

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
 '(blink-cursor-blinks -1)
 '(column-number-mode t)
 '(cursor-in-non-selected-windows nil)
 '(desktop-restore-eager 10)
 '(inhibit-startup-screen t)
 '(js-auto-indent-flag nil)
 '(js-flat-functions t)
 '(js2-strict-missing-semi-warning nil)
 '(magit-rebase-arguments nil)
 '(package-selected-packages
   '(auto-complete cl-lib company counsel dash editorconfig ejc-sql f
                   find-file-in-project go-mode ivy-avy ivy-hydra
                   jsonrpc magit php-mode swiper))
 '(safe-local-variable-values
   '((eval when (fboundp 'rainbow-mode) (rainbow-mode 1))
     (haskell-process-use-ghci . t) (haskell-indent-spaces . 4)
     (lexical-binding . t)))
 '(tool-bar-mode nil))

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

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

(set-frame-font "Monaco 13") ;; Font not available on Ubuntu
;(set-frame-font "Ubuntu Mono 12")
(setq text-scale-mode-step 1.04)

(setq next-line-add-newlines nil)
(setq scroll-preserve-screen-position t)
(setq x-select-enable-clipboard t)

(setq mouse-wheel-scroll-amount '(1 ((shift) . 1) ((control) . nil)))
(setq mouse-wheel-progressive-speed nil)
(setq frame-title-format '("" fd-desktop-name " %f"))
(set-frame-parameter (selected-frame) 'alpha '(100 100))
(set-frame-parameter nil 'ns-appearance 'dark)
(scroll-bar-mode -1)

(setq
  backup-by-copying t
  backup-directory-alist
  '(("." . "~/.emacs.backups"))
  delete-old-versions t
  kept-new-versions 6
  kept-old-versions 2
  version-control t
  kill-buffer-query-functions (delq 'process-kill-buffer-query-function kill-buffer-query-functions))

;; Tab size
;(setq tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52))
;(setq-default tab-width 4)
;(setq tab-stop-list '(2 4 6 8 10 12 14 16 18 20 22 24 26 28 30))
;(setq-default tab-width 2)
;(setq-default js2-basic-offset 4)

;; Spaces instead of tabs
(setq-default indent-tabs-mode nil)

(defun my-setup-indent (n)
  (setq tab-width n)
  (setq-default tab-width n)
  (setq-default c-basic-offset n)
  (setq-default coffee-tab-width n) ; coffeescript
  (setq-default javascript-indent-level n) ; javascript-mode
  (setq-default js-indent-level n) ; js-mode
  (setq-default typescript-indent-level n) ; js-mode
  (setq-default js2-basic-offset n) ; js2-mode, in latest js2-mode, it's alias of js-indent-level
  (setq-default web-mode-markup-indent-offset n) ; web-mode, html tag in html file
  (setq-default web-mode-css-indent-offset n) ; web-mode, css in html file
  (setq-default web-mode-code-indent-offset n) ; web-mode, js code in html file
  (setq-default css-indent-offset n))
(my-setup-indent 4)

;; Mac OS X
(setq mac-command-modifier 'control)
(setq ring-bell-function 'ignore)

;; Shell colors
(add-hook 'comint-preoutput-filter-functions
             (lambda (output)
               (replace-regexp-in-string "\\[[0-9]+[GKJ]" "" output)))

(load-file "~/.emacs.d/emacs-functions.el")
(load-file "~/.emacs.d/emacs-libraries.el")
(load-file "~/.emacs.d/emacs-keyboard.el")

;(cd "~")
;;; .emacs ends here
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
