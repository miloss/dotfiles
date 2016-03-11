;;; find-desktop.el --- Find desktop quickly.

;; Copyright (C) 2015 Milos Popovic

(defvar fd-desktops-file
  "~/.emacs.desktops.list"
  "Location of a file to store all desktops.")

(defvar fd-desktop-name
  ""
  "Directory name of currently loaded desktop.")


(defun fd-desktop-find ()
    "Return output of GNU 'find' command over a $HOME directory.

Uses cached output from `fd-desktops-file' file, if available."
    (if (file-exists-p fd-desktops-file)
            (shell-command-to-string
             (concat "cat " fd-desktops-file))
        (shell-command-to-string
         (concat "find ~ -name '.emacs.desktop' -print 2>/dev/null"
                 " | xargs dirname"
                 " > " fd-desktops-file
                 "; cat " fd-desktops-file))))

(defun fd-desktops-list ()
  "Return an alist of all desktop directories and their path.

Files with duplicate folder name are suffixed with the name of the
parent directory they are found in so that they are unique."
  (let ((file-alist nil))
    (mapcar (lambda (file)
              (let ((file-cons (cons (file-name-nondirectory file)
                                     (expand-file-name file))))
                (when (assoc (car file-cons) file-alist)
                  (fd-uniqueify (assoc (car file-cons) file-alist))
                  (fd-uniqueify file-cons))
                (add-to-list 'file-alist file-cons)
                file-cons))
            (split-string (fd-desktop-find)))))

(defun fd-uniqueify (file-cons)
  "Set the car of the argument to include the directory name plus the file name."
  (setcar file-cons
          (concat (car file-cons) " "
                  (cadr (reverse (split-string (cdr file-cons) "/"))))))

(defun find-desktop ()
  "Prompt with a completing list of all desktops to find one.

Desktop is defined as the first directory containing an `.emacs.desktop' file."
  (interactive)
  (let* ((desktops-found (fd-desktops-list))
         (file (if (functionp 'ido-completing-read)
                   (ido-completing-read "Find desktop: "
                                        (mapcar 'car desktops-found))
                 (completing-read "Find desktop: "
                                  (mapcar 'car desktops-found)))))
    (cdr (assoc file desktops-found))))

(defun fd-desktop-change-dir ()
  "FInd a desktop and display message about it"
  (interactive)
  (let* ((dirpath (find-desktop)))
    (if (boundp 'desktop-dirname)
        (session-save))
    (desktop-change-dir dirpath)
    (setq fd-desktop-name (file-name-nondirectory (directory-file-name dirpath)))
    (message (concat "Desktop read from " dirpath))))

(provide 'find-desktop)
(provide 'fd-desktop-change-dir)
;;; find-desktop.el ends here
