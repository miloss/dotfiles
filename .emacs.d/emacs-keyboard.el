;;; .emacs-keyboard.el --- Emacs keyboard bindings
;; Also, see Bozidar Batsov's emacs-bindings.el

(global-set-key [C-tab] 'next-buffer)
(global-set-key [C-S-tab] 'previous-buffer)
(global-set-key [C-S-iso-lefttab] 'previous-buffer)
(global-set-key [f5] 'desktop-change-dir)
(global-set-key [f6] 'session-save)
(global-set-key [f7] 'desktop-clear-lock)
(global-set-key [f8] 'ffip-filelist-clear)

;(global-set-key (kbd "C-x M-r") 'rgrep)
(global-set-key (kbd "C-x C-r") 'rgrep)

;(global-set-key [s-left] 'windmove-left)
;(global-set-key [s-right] 'windmove-right)
;(global-set-key [s-up] 'windmove-up)
;(global-set-key [s-down] 'windmove-down)
(global-set-key [M-up] 'popout-directory)

(global-set-key (kbd "C-k") 'ruthlessly-kill-line)
(global-set-key (kbd "C-x w") 'toggle-truncate-lines)
(global-set-key (kbd "C-x g") 'goto-line)
(global-set-key (kbd "C-x t") 'find-file-in-project)
(global-set-key (kbd "C-x M-f") 'ido-find-file-other-window)

(global-set-key (kbd "M-p") 'sr-speedbar-toggle)
(global-set-key (kbd "M-o") 'other-window)
(global-set-key (kbd "C-x M-2") 'split-window-below-golden)
(global-set-key (kbd "C-x M-3") 'split-window-right-golden)
(global-set-key (kbd "M-{") 'shrink-window-horizontally)
(global-set-key (kbd "M-}") 'enlarge-window-horizontally)
(global-set-key (kbd "M-[") 'shrink-window)
(global-set-key (kbd "M-]") 'enlarge-window)

(when (display-graphic-p)
  (global-set-key (kbd "C-M-z") 'shell))

(global-set-key (kbd "C-x M-e") 'load-emacs-file)
(global-set-key (kbd "C-x M-t") 'emacs-init-time)
(global-set-key (kbd "C-x M-d") 'delete-trailing-whitespace)

(global-set-key (kbd "C-x f") 'recentf-ido-find-file)
(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "C-x C-i") 'idomenu)

;; Multiple cursors
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
;(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C->") 'mc/mark-next-word-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;; Magit
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x M-g") 'magit-dispatch-popup)

;; Shortcuts to files
(global-set-key (kbd "C-M-e")
  (lambda()(interactive)(find-file "~/.emacs")))
(global-set-key (kbd "C-M-f")
  (lambda()(interactive)(find-file "~/.emacs.d/emacs-functions.el")))
(global-set-key (kbd "C-M-l")
  (lambda()(interactive)(find-file "~/.emacs.d/emacs-libraries.el")))
(global-set-key (kbd "C-M-k")
  (lambda()(interactive)(find-file "~/.emacs.d/emacs-keyboard.el")))

;; Predefined desktops
(global-set-key (kbd "C-x <f1>")
	(lambda()(interactive)
		(desktop-change-message "/path/to/desktop")))
