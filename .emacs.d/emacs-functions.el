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


;;; Desktop mode functions

;;TODO
(defun desktop-defined-desktops ()
	"List of defined desktop locations.")
;;TODO
(defun desktop-change ()
	"Changes current desktop to directory."
	(interactive)
	(let* ((ddesktops (desktop-defined-desktops))
		(file (if (functionp 'ido-completing-read)
			(ido-completing-read "Find desktop: "
				(mapcar 'car ddesktops))
			(completing-read "Find desktop: "
				(mapcar 'car ddesktops)))))
		(find-file (cdr (assoc file ddesktops)))))

(defun desktop-change-message (dname)
	"Changes desktop and display message about it."
	(desktop-change-dir dname)
	(message (concat "Desktop read from " dname)))


;; Hide mixed UNIX and DOS line endings
(defun remove-dos-eol ()
	"Do not show ^M in files containing mixed UNIX and DOS line endings."
  (interactive)
	(setq buffer-display-table (make-display-table))
	(aset buffer-display-table ?\^M []))

(defun load-emacs-file ()
	"Just reloads Emacs init file."
  (interactive)
	(load-file "~/.emacs"))
