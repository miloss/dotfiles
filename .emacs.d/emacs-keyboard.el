;;; .emacs-keyboard.el --- Emacs keyboard bindings
;; Also, see Bozidar Batsov's emacs-bindings.el

(global-set-key [C-tab] 'next-buffer)
(global-set-key [C-S-iso-lefttab] 'previous-buffer)
(global-set-key [f5] 'desktop-change-dir)
(global-set-key [f6] 'session-save)
(global-set-key [f8] 'ffip-filelist-clear)

(global-set-key (kbd "s-1") 'delete-other-windows)
(global-set-key (kbd "s-3") 'split-window-horizontally)
(global-set-key (kbd "s-l") 'linum-mode)
(global-set-key (kbd "s-b") 'ido-switch-buffer)
(global-set-key (kbd "s-k") 'ido-kill-buffer)
(global-set-key (kbd "s-t") 'find-file-in-project)
(global-set-key (kbd "s-r") 'rgrep)
(global-set-key (kbd "C-x M-r") 'rgrep)
(global-set-key [s-left] 'windmove-left)
(global-set-key [s-right] 'windmove-right)
(global-set-key [s-up] 'windmove-up)
(global-set-key [s-down] 'windmove-down)
(global-set-key [M-up] 'popout-directory)

(global-set-key (kbd "C-k") 'ruthlessly-kill-line)
(global-set-key (kbd "C-x w") 'toggle-truncate-lines)
(global-set-key (kbd "C-x g") 'goto-line)
(global-set-key (kbd "C-x t") 'find-file-in-project)
(global-set-key (kbd "C-x M-f") 'ido-find-file-other-window)

(global-set-key (kbd "M-p") 'sr-speedbar-toggle)
(global-set-key (kbd "M-o") 'other-window)

(global-set-key (kbd "C-z") 'eshell)
;(global-set-key (kbd "C-x M-z") 'suspend-frame)

(global-set-key (kbd "C-x M-t") 'emacs-init-time)

(global-set-key (kbd "C-x f") 'recentf-ido-find-file)
(global-set-key (kbd "C-x C-b") 'ibuffer)

(global-set-key (kbd "C-M-f") 'query-replace)

(global-set-key (kbd "C-x C-i") 'idomenu)

;; Shortcuts to files
(global-set-key (kbd "C-M-e")
  (lambda()(interactive)(find-file "~/.emacs")))
(global-set-key (kbd "C-M-f")
  (lambda()(interactive)(find-file "~/.emacs.d/emacs-functions.el")))
(global-set-key (kbd "C-M-l")
  (lambda()(interactive)(find-file "~/.emacs.d/emacs-libraries.el")))
(global-set-key (kbd "C-M-k")
  (lambda()(interactive)(find-file "~/.emacs.d/emacs-keyboard.el")))

; Cancel suspend
; (global-unset-key (kbd "C-z"))
