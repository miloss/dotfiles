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
