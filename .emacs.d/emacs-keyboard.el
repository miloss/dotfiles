;;; .emacs-keyboard.el --- Emacs keyboard bindings
;; Also, see Bozidar Batsov's emacs-bindings.el

(global-set-key [C-tab] 'my-next-buffer)
(global-set-key [C-S-tab] 'my-previous-buffer)
(global-set-key [C-S-iso-lefttab] 'my-previous-buffer)
(global-set-key [f5] 'desktop-change-dir)
(global-set-key [f6] 'session-save)
(global-set-key [f7] 'desktop-clear-lock)
(global-set-key [f8] 'neotree-toggle)

;(global-set-key [triple-wheel-left] 'my-previous-buffer)
;(global-set-key [triple-wheel-right] 'my-next-buffer)

(global-set-key (kbd "C-x M-n") 'new-emacs)
(global-set-key (kbd "C-x M-r") 'rgrep)
(global-set-key (kbd "C-x C-r") 'rgrep-in-project)
(global-set-key (kbd "C-x C-t") 'rgrep-in-project-2)

;(global-set-key [s-left] 'windmove-left)
;(global-set-key [s-right] 'windmove-right)
;(global-set-key [s-up] 'windmove-up)
;(global-set-key [s-down] 'windmove-down)
(global-set-key [M-up] 'popout-directory)
(global-set-key (kbd "M-f") 'open-in-firefox)
;(global-set-key (kbd "M-t") 'open-terminal-here)

(global-set-key (kbd "C-k") 'ruthlessly-kill-line)
(global-set-key (kbd "C-x w") 'toggle-truncate-lines)
(global-set-key (kbd "C-x p") 'find-file-in-project)
(global-set-key (kbd "C-x t") 'find-file-in-project-by-selected)
(global-set-key (kbd "C-x M-f") 'ido-find-file-other-window)
(global-set-key (kbd "C-x C-d") 'fd-desktop-change-dir)
(global-set-key (kbd "C-x M-b") 'ido-switch-buffer-other-window)

;(global-set-key (kbd "M-p") 'sr-speedbar-toggle)
;(global-set-key (kbd "M-s") 'sr-speedbar-toggle)
;(global-set-key (kbd "C-x M-s") 'sr-speedbar-refresh-toggle)
(global-set-key (kbd "M-o") 'other-window)
(global-set-key (kbd "M-i") 'other-other-window)
(global-set-key (kbd "M-0") 'delete-window)
(global-set-key (kbd "C-x M-2") 'split-window-below-golden)
(global-set-key (kbd "C-x M-3") 'split-window-right-golden)
(global-set-key (kbd "C-x C-3") 'split-window-three-parts)
(global-set-key (kbd "C-x C-g") 'split-window-three-parts-magit)
(global-set-key (kbd "C-1") 'single-window)
(global-set-key (kbd "C-2") 'split-window-left)
(global-set-key (kbd "C-3") 'split-window-three-parts)
(global-set-key (kbd "C-4") 'split-window-three-parts-magit)
(global-set-key (kbd "C-5") 'split-window-multi)
(global-set-key (kbd "M-{") 'shrink-window-horizontally)
(global-set-key (kbd "M-}") 'enlarge-window-horizontally)
(global-set-key (kbd "M-[") 'shrink-window)
(global-set-key (kbd "M-]") 'enlarge-window)
(global-set-key (kbd "M-?") nil)

(when (display-graphic-p)
  (global-set-key (kbd "C-M-z") 'shell-in-current-frame)
  (global-set-key (kbd "M-z") 'shell-in-current-frame)
  (global-set-key (kbd "C-x M-z") 'another-shell)
  (global-set-key (kbd "C-z") nil)
  (global-set-key (kbd "M-?") nil))

(global-set-key (kbd "C-x M-e") 'load-emacs-file)
(global-set-key (kbd "C-x M-t") 'emacs-init-time)
(global-set-key (kbd "C-x M-d") 'delete-trailing-whitespace)

(global-set-key (kbd "C-x f") 'recentf-ido-find-file)
(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "C-x C-i") 'idomenu)
(global-set-key (kbd "M-k") 'ido-kill-buffer)

;; Multiple cursors
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
;(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C->") 'mc/mark-next-word-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;; Magit
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x y") 'magit-show-refs)
(global-set-key (kbd "C-x M-g") 'magit-dispatch-popup)
(global-set-key (kbd "C-x M-m") 'magit-log-buffer-file)
(global-set-key (kbd "C-x M-b") 'magit-blame)

;; Shortcuts to files
(global-set-key (kbd "C-M-S-e")
  (lambda()(interactive)(find-file "~/.emacs")))
(global-set-key (kbd "C-M-S-l")
  (lambda()(interactive)(find-file "~/.emacs.desktops.list")))
(global-set-key (kbd "C-M-S-f")
  (lambda()(interactive)(find-file "~/.emacs.d/emacs-functions.el")))
(global-set-key (kbd "C-M-S-b")
  (lambda()(interactive)(find-file "~/.emacs.d/emacs-libraries.el")))
(global-set-key (kbd "C-M-S-k")
  (lambda()(interactive)(find-file "~/.emacs.d/emacs-keyboard.el")))

;; Shell commands
(global-set-key (kbd "M-g t")
  (lambda()(interactive)(run-shell-command "grunt test")))
(global-set-key (kbd "M-g s")
  (lambda()(interactive)(run-shell-command "grunt serve")))
(global-set-key (kbd "M-g w")
  (lambda()(interactive)(run-shell-command "grunt watch:test")))

;; Predefined desktops
(global-set-key
 (kbd "C-x <f1>")
 (lambda()(interactive)
   (desktop-change-message "/path/to/desktop")))
