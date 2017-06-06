;;; .emacs-functions.el --- Emacs various functions
;; by Milos Popovic <the.elephant@gmail.com>

(defun ruthlessly-kill-line ()
  "Deletes a line, but does not put it in the kill-ring. (kinda)

@see http://stackoverflow.com/questions/637351/
emacs-how-to-delete-text-without-kill-ring"
  (interactive)
  (move-beginning-of-line 1)
  (kill-line 1)
  (setq kill-ring (cdr kill-ring)))

(defun popout-directory ()
  "Pops up a new OS window in current directory."
  (interactive)
  (shell-command (concat "gnome-open " (file-name-directory buffer-file-name)))
  (message "Current directory opened"))

(defun open-in-firefox ()
  "Opens current local file in Mozila Firefox."
  (interactive)
  (shell-command (concat "firefox " (buffer-file-name)))
  (message "File opened in Firefox"))

(defun open-terminal-here ()
  "Launches host terminal."
  (interactive)
  (shell-command "mate-terminal")
  (message "Terminal opened"))

(defun new-emacs ()
  (interactive)
  (shell-command "open -n -a /Applications/Emacs.app"))


;;; Session functions

(defun saved-session ()
  (file-exists-p (concat desktop-dirname "/" desktop-base-file-name)))

(defun session-restore ()
  "Restore a saved emacs session."
  (interactive)
  (if (saved-session)
      (desktop-read)
    (message "No desktop found.")))

(defun session-save ()
  "Save an emacs session."
  (interactive)
  (if (saved-session)
      (if (y-or-n-p "Overwrite existing desktop?")
          (desktop-save-in-desktop-dir)
        (message "Session not saved."))
    (desktop-save-in-desktop-dir)))

(defun session-save ()
  "Save an emacs session (no confirmation)."
  (interactive)
  (desktop-save-in-desktop-dir))


;;; Windows

(defun split-window-left ()
  "Split the current window vertically 38/62 and moves to the right one."
  (interactive)
  (let ((proportion (* 36 0.01)))
    (split-window-right (round (* proportion (window-width))))
    (other-window -1)))

(defun split-window-above ()
  "Split the current window horizontally and moves to the top one."
  (interactive)
  (let ((proportion (* 62 0.01)))
    (split-window-below (round (* proportion (window-height))))))

(defun shell-in-left-window ()
  "Split window and open shell in left part"
  (interactive)
  (split-window-left)
  (other-window -1)
  (shell))

(defun split-window-right-golden ()
  "Split the current window vertically in approx golden ratio."
  (interactive)
  (let ((proportion (* 62 0.01)))
    (split-window-right (round (* proportion (window-width))))))

(defun split-window-below-golden ()
  "Split the current window horizontally in approx golden ratio."
  (interactive)
  (let ((proportion (* 64 0.01)))
    (split-window-below (round (* proportion (window-height))))))

(defun other-other-window ()
  (interactive)
  (other-window -1))

(defun split-window-three-parts ()
  "Shows the Speedbar on the left and another window to the right"
  (interactive)
  (neotree-project-dir) ;(sr-speedbar-open)
  (other-window 1)
  (split-window-right))

(defun split-window-three-parts-magit ()
  "Shows the Speedbar on the left and Magit window to the right"
  (interactive)
  (neotree-project-dir) ;(sr-speedbar-open)
  (split-window-right)
  (magit-status))

(defun split-window-multi ()
  "Split Emacs into favorite useful windows"
  (interactive)
  (neotree-project-dir) ;(sr-speedbar-open)
  (split-window-right)
  (magit-status)
  (split-window-below)
  (other-window 1)
  (shell)
  (other-window 1))

(defun single-window ()
  "Show only one window"
  (interactive)
  (neotree-hide) ;(sr-speedbar-close)
  (delete-other-windows))

(defun another-shell ()
  "Split window vertically and open shell below"
  (interactive)
  (split-window-below)
  (other-window 1)
  (let ((current-prefix-arg 4))
    (call-interactively 'shell)))

;;; Desktop mode functions

(defun desktop-clear-lock ()
  "Clear .emacs.desktop.lock file from current loaded desktop."
  (interactive)
  (shell-command (concat "rm " desktop-dirname "/.emacs.desktop.lock"))
  (message "Desktop lock cleared"))

(defun desktop-change-message (dname)
  "Changes desktop and display message about it."
  (desktop-change-dir dname)
  (message (concat "Desktop read from " dname)))

(defun load-emacs-file ()
  "Just reloads Emacs init file."
  (interactive)
  (load-file "~/.emacs"))


;;; Buffer switching functions

(setq skippable-buffers '("*Messages*" "*scratch*" "*Help*" "*Completitions" "*magit:" "*magit-logs:" "*magit-refs:"))

(defun my-skippable-buffers ()
  "List of buffers I would like to skip."
  (delete nil
          (append
           (mapcar 'get-buffer skippable-buffers)
           (mapcar (lambda (this-buffer)
                     (if (string-match "^ " (buffer-name this-buffer))
                         this-buffer))
                   (buffer-list)))))

(defun my-next-buffer ()
  "next-buffer that skips certain buffers"
  (interactive)
  (next-buffer)
  (buffer-name)
  (while (member (buffer-name) skippable-buffers)
    (next-buffer)))

(defun my-previous-buffer ()
  "previous-buffer that skips certain buffers"
  (interactive)
  (previous-buffer)
  (while (member (buffer-name) skippable-buffers)
    (previous-buffer)))


;;; Files

(defun recentf-ido-find-file ()
  "Find a recent file using Ido."
  (interactive)
  (let ((file (ido-completing-read "Choose recent file: " recentf-list nil t)))
    (when file
      (find-file file))))

(defun rgrep-in-project ()
  "Find highlighted string in all files in project"
  (interactive)
  (grep-compute-defaults)
  (rgrep (grep-read-regexp) "*" desktop-dirname)
  (other-window 1))

;;; Shell tasks
(defun run-shell-command (cmd)
  "Switch to shell buffer and run command"
  (other-window 1)
  (shell)
  (end-of-buffer)
  (insert cmd)
  (comint-send-input))
