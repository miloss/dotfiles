;;; .emacs --- Emacs file

;; Milos Popovic <the.elephant@gmail.com>

(add-to-list 'load-path "~/.emacs.d/")

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
 '(js-indent-level 2)
 '(safe-local-variable-values (quote ((lexical-binding . t))))
 '(speedbar-file-unshown-regexp "\\.o\\'\\|~\\'\\|\\.bin\\'\\|\\.lbin\\'\\|\\.so\\'\\|\\.a\\'\\|\\.ln\\'\\|\\.blg\\'\\|\\.bbl\\'\\|\\.elc\\'\\|\\.lof\\'\\|\\.glo\\'\\|\\.idx\\'\\|\\.lot\\'\\|\\.svn/\\'\\|\\.hg/\\'\\|\\.git/\\'\\|\\.bzr/\\'\\|CVS/\\'\\|_darcs/\\'\\|_MTN/\\'\\|\\.fmt\\'\\|\\.tfm\\'\\|\\.class\\'\\|\\.fas\\'\\|\\.lib\\'\\|\\.mem\\'\\|\\.x86f\\'\\|\\.sparcf\\'\\|\\.dfsl\\'\\|\\.pfsl\\'\\|\\.d64fsl\\'\\|\\.p64fsl\\'\\|\\.lx64fsl\\'\\|\\.lx32fsl\\'\\|\\.dx64fsl\\'\\|\\.dx32fsl\\'\\|\\.fx64fsl\\'\\|\\.fx32fsl\\'\\|\\.sx64fsl\\'\\|\\.sx32fsl\\'\\|\\.wx64fsl\\'\\|\\.wx32fsl\\'\\|\\.fasl\\'\\|\\.ufsl\\'\\|\\.fsl\\'\\|\\.dxl\\'\\|\\.lo\\'\\|\\.la\\'\\|\\.gmo\\'\\|\\.mo\\'\\|\\.toc\\'\\|\\.aux\\'\\|\\.cp\\'\\|\\.fn\\'\\|\\.ky\\'\\|\\.pg\\'\\|\\.tp\\'\\|\\.vr\\'\\|\\.cps\\'\\|\\.fns\\'\\|\\.kys\\'\\|\\.pgs\\'\\|\\.tps\\'\\|\\.vrs\\'\\|\\.pyc\\'\\|\\.pyo\\'\\|#[^#]+#$\\|\\.\\.?\\'\\|\\.#|\\.hi")
 '(speedbar-show-unknown-files t)
 '(speedbar-use-images t)
 '(sr-speedbar-width-console 33)
 '(sr-speedbar-width-x 39))

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
(setq lazy-highlight-cleanup nil)
(setq ring-bell-function 'ignore)

(set-default-font "Monospace 9")
;(setq next-line-add-newlines nil)
(setq scroll-preserve-screen-position t)
(setq x-select-enable-clipboard t)

(setq mouse-wheel-scroll-amount '(1 ((shift) . 1) ((control) . nil)))
(setq mouse-wheel-progressive-speed nil)
(setq frame-title-format '("" "%f (%m) - emacs " emacs-version))
;(setq default-frame-alist	'((width . 120) (height . 57)))
(set-frame-parameter (selected-frame) 'alpha '(96 96))

;; Tab size
;(setq tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52))
;(setq-default tab-width 4)
(setq tab-stop-list '(2 4 6 8 10 12 14 16 18 20 22 24 26 28 30 32 34 36 38 40 42 44 46 48))
(setq-default tab-width 2)


;; Mac OS X
(setq mac-command-modifier 'control)


(load-file "~/.emacs.d/emacs-functions.el")
(load-file "~/.emacs.d/emacs-libraries.el")
(load-file "~/.emacs.d/emacs-keyboard.el")


;; Predefined desktops
(global-set-key (kbd "C-x <f2>")
	(lambda()(interactive)
		(desktop-change-message "/path/to/project")))

;;; .emacs ends here
