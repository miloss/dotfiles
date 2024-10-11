;;; .emacs-libraries.el --- Emacs included libraries

;; Color themes
(require 'emacs-color-themes)
(if (display-graphic-p)
    (load-theme 'moe-dark t)
  (load-theme 'monokai t))

;; SrSpeedbar
(require 'sr-speedbar)
(speedbar-add-supported-extension ".hs")
(setq sr-speedbar-skip-other-window-p t)

(defun select-next-window ()
  (other-window 1))

(defun my-sr-speedbar-open-hook ()
  (add-hook 'speedbar-before-visiting-file-hook 'select-next-window t)
  (add-hook 'speedbar-before-visiting-tag-hook 'select-next-window t))

(advice-add 'sr-speedbar-open :after #'my-sr-speedbar-open-hook)
(advice-add 'sr-speedbar-open :after (lambda () (other-window 1)))

;; SmartTabs mode
(require 'smart-tabs-mode)
(smart-tabs-mode-enable)

;; Auto-complete.el
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/lisp/auto-complete/ac-dict")
(setq ac-quick-help-delay 0.2)
(setq ac-auto-show-menu 0.2)
(ac-config-default)

(add-to-list 'ac-modes 'rjsx-mode)

;; Ido mode
(ido-mode t)
(setq ido-ignore-buffers
    '("\\` " "^\*Mess" "^\*Completi" "^\*SPEED" "^\*scrat" "^\*Buffer" "^\*magit"))

;; ffip
(require 'find-file-in-project)
(setq ffip-patterns
      '("*.html"
        "*.el"
        "*.md"
        "*.sh"
        "*.svg"
        "*.png"
        "*.service"
        "*.js"
        "*.jsx"
        "*.ts"
        "*.tsx"
        "*.coffee"
        "*.ejs"
        "*.css"
        "*.scss"
        "*.sass"
        "*.java"
        "*.xml"
        "*.js"
        "*.py"
        "*.rb"
        "*.txt"
        "*.robot"
        "*.ini"
        "*.conf"
        "*.proto"
        "*.dust"
        "*.feature"
        "*.eslintrc"
        "*.eslintrc.js*"
        "*.re*"
        "*.json"
        "*.snap"))
(setq ffip-prune-patterns
      '("*/.git/*"
        "*/.hooks/*"
        "*/.hgignore"
        "*/.emacs.desktop*"
        "*/.nyc_output*"
        "*/node_modules/*"
        "*/dry-run/*"
        "*/bower_components/*"
        "*/coverage/*"
        "*/karma_html/*"
        "*/dist/*"
        "*frontend/target/*"
        "*target/webdist/*"
        "*target/webdev/*"
        "*frontend/lexemes-database/*"
        "*static/bundles/*"
        "*data/repo/*"
        "*data/html/*"
        "*public/js/cosmos/*"
        "*images/-/*"
        "*.min.css"
        "*.min.js"
        "*/.tmp/*"))
(setq ffip-match-path-instead-of-filename t)
;(setq ffip-project-root "~/projs/PROJECT_DIR")
;(setq ffip-prefer-ido-mode t)

;; rgrep
(eval-after-load "grep"
  '(progn
     (add-to-list 'grep-find-ignored-files ".emacs.desktop")
     (add-to-list 'grep-find-ignored-files ".eslintcache")
     (add-to-list 'grep-find-ignored-directories ".tmp")
     (add-to-list 'grep-find-ignored-directories ".unrealsync")
     (add-to-list 'grep-find-ignored-directories "dist")
     (add-to-list 'grep-find-ignored-directories "coverage")
     (add-to-list 'grep-find-ignored-directories "karma_html")
     (add-to-list 'grep-find-ignored-directories "node_modules")
     (add-to-list 'grep-find-ignored-directories "external-projects")
     (add-to-list 'grep-find-ignored-directories "target/temp")
     (add-to-list 'grep-find-ignored-directories "target/webdev")
     (add-to-list 'grep-find-ignored-directories "target/webdist")
     (add-to-list 'grep-find-ignored-directories "frontend/target")
     (add-to-list 'grep-find-ignored-directories "frontend/lexemes-database")
     (add-to-list 'grep-find-ignored-directories "frontend/desktopweb/static")
     (add-to-list 'grep-find-ignored-directories "data/repo")
     (add-to-list 'grep-find-ignored-directories "data/html")
     (add-to-list 'grep-find-ignored-directories "frontend/bin/yarn")
     (add-to-list 'grep-find-ignored-directories "css/fonts")
     (add-to-list 'grep-find-ignored-directories "js/vendors")
     (add-to-list 'grep-find-ignored-directories "js/cosmos")
     (add-to-list 'grep-find-ignored-directories "__sapper__")))

;; JavaScript mode
(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js\\'" . rjsx-mode))
(add-to-list 'auto-mode-alist '("\\.json\\'" . js-mode))
(add-to-list 'auto-mode-alist '("\\.dust\\'" . js2-mode))
(setq js2-strict-inconsistent-return-warning nil)
;(add-hook 'js2-mode-hook 'smart-tabs-mode-enable)
;(smart-tabs-advice js2-indent-line js2-basic-offset)

;(require 'jscs)
;(add-hook 'js-mode-hook #'jscs-indent-apply)
;(add-hook 'js2-mode-hook #'jscs-indent-apply)
;(add-hook 'json-mode-hook #'jscs-indent-apply)

;; Web-mode
(autoload 'web-mode "web-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.svelte\\'" . web-mode))
(setq web-mode-markup-indent-offset 4)

;; Haskell mode
;(load "/usr/share/emacs24/site-lisp/haskell-mode/haskell-site-file")
(add-to-list 'auto-mode-alist '("\\.hs\\'" . haskell-mode))
;(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)

;; Python mode
;(setq abbrev-file-name "~/.emacs.d/.abbrev_defs")
;(add-to-list 'load-path "~/.emacs.d/lisp/python-mode/")
;(setq py-install-directory "~/.emacs.d/lisp/python-mode/")
(autoload 'python-mode "python-mode" "Python Mode" t)
;(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
;(add-to-list 'interpreter-mode-alist '("python" . python-mode))
(define-coding-system-alias 'UTF-8 'utf-8)

; idomenu
(autoload 'idomenu "idomenu" nil t)

;; PHP mode
(autoload 'php-mode "php-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.php\\'" . php-mode))
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . php-mode))

; Load the php-imenu index function
(autoload 'php-imenu-create-index "php-imenu" nil t)

; Add the index creation function to the php-mode-hook
(add-hook 'php-mode-hook (lambda ()
    (setq imenu-create-index-function (function php-imenu-create-index))
    (setq php-imenu-alist-postprocessor (function reverse))
    (imenu-add-menubar-index)))

; Fixing array indendation in php-mode
(add-hook 'php-mode-hook (lambda ()
    (defun ywb-php-lineup-arglist-intro (langelem)
      (save-excursion
        (goto-char (cdr langelem))
        (vector (+ (current-column) c-basic-offset))))
    (defun ywb-php-lineup-arglist-close (langelem)
      (save-excursion
        (goto-char (cdr langelem))
        (vector (current-column))))
    (c-set-offset 'arglist-intro 'ywb-php-lineup-arglist-intro)
    (c-set-offset 'arglist-close 'ywb-php-lineup-arglist-close)))

;; SQL indentation
(eval-after-load "sql" '(load-library "sql-indent"))

;; REST client mode
(autoload 'restclient-mode "restclient" nil t)
(add-to-list 'auto-mode-alist '("\\.http\\'" . restclient-mode))

;; multiple-cursors
(add-to-list 'load-path "~/.emacs.d/lisp/mc")
(require 'multiple-cursors)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-S-<mouse-1>") 'mc/add-cursor-on-click)

; Speed up by toggling blink-matching-paren variable
(add-hook 'multiple-cursors-mode-enabled-hook
          (lambda () (setq blink-matching-paren nil)))
(add-hook 'multiple-cursors-mode-disabled-hook
          (lambda () (setq blink-matching-paren t)))

;; Jade mode
(require 'sws-mode)
(autoload 'jade-mode "jade-mode" "Jade Mode" t)
(add-to-list 'auto-mode-alist '("\\.jade\\'" . jade-mode))
(add-to-list 'auto-mode-alist '("\\.pug\\'" . jade-mode))

;; Dockerfile mode
(require 'dockerfile-mode)

(add-to-list 'auto-mode-alist '("\\.yml\\'" . conf-mode))

;; Magit
;(require 'dash)
;(require 'with-editor)
;(require 'magit-popup)
;(require 'ghub)
;(add-to-list 'load-path "~/.emacs.d/lisp/magit/lisp")
;(require 'magit)
(setq magit-commit-show-diff nil)
(setq magit-revert-buffers 1)
(setq magit-refresh-status-buffer nil)
(setq vc-handled-backends nil)
(setq git-commit-summary-max-length 70)
;(with-eval-after-load 'info
;  (info-initialize)
;  (add-to-list 'Info-directory-list
;               "~/.emacs.d/lisp/magit/Documentation/"))

;; Show staged and unstaged changes, but nothing else
;; https://github.com/magit/magit/wiki/Tips-and-Tricks#show-staged-and-unstaged-changes-but-nothing-else

(define-derived-mode magit-staging-mode magit-status-mode "Magit staging"
  "Mode for showing staged and unstaged changes."
  :group 'magit-status)

(defun magit-staging-refresh-buffer ()
  (magit-insert-section (status)
    (magit-insert-untracked-files)
    (magit-insert-unstaged-changes)
    (magit-insert-staged-changes)))

(defun magit-staging ()
  (interactive)
  (magit-mode-setup #'magit-staging-mode))

(global-set-key (kbd "M-t") 'magit-staging)

;; Markdown mode
(autoload 'markdown-mode "markdown-mode" "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;; Find desktop
(require 'find-desktop)

;; Robot mode
(autoload 'robot-mode "robot-mode.el" "Robot Framework text mode" t)
(add-to-list 'auto-mode-alist '("\\.robot\\'" . robot-mode))

;; SCSS mode
(autoload 'scss-mode "scss-mode")
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))

;; SASS mode
(autoload 'sass-mode "sass-mode")
(add-to-list 'auto-mode-alist '("\\.sass\\'" . sass-mode))

;; HideShow mode settings
(defvar hs-special-modes-alist
  (mapcar 'purecopy
  '((c-mode "{" "}" "/[*/]" nil nil)
    (c++-mode "{" "}" "/[*/]" nil nil)
    (bibtex-mode ("@\\S(*\\(\\s(\\)" 1))
    (java-mode "{" "}" "/[*/]" nil nil)
    (js-mode "{" "}" "/[*/]" nil)
    (js2-mode "{" "}" "/[*/]" nil))))

;; JSX mode
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . rjsx-mode))
(add-to-list 'auto-mode-alist '("\\.html\\'" . rjsx-mode))
(autoload 'rjsx-mode "rjsx-mode" "JSX mode" t)

;; Neo Tree
;(add-to-list 'load-path "/Users/milospopovic/.emacs.d/lisp/neotree")
;(require 'neotree)
;(defun neotree-project-dir ()
;  "Open NeoTree using the git root."
;  (interactive)
;  (neotree-dir fd-desktop-path))

;; TypeScript Mode
;(require 'tss)
(add-to-list 'auto-mode-alist '("\\.ts\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode))
;(setq tss-popup-help-key "C-:")
;(setq tss-jump-to-definition-key "C->")
;(setq tss-implement-definition-key "C-c i")
;(tss-config-default)

;; Protobuf mode
(require 'protobuf-mode)
(add-to-list 'auto-mode-alist '("\\.proto\\'" . protobuf-mode))

;; Feature mode
(require 'feature-mode)
(add-to-list 'auto-mode-alist '("\\.feature$" . feature-mode))

;; ReasonML mode
(require 'reason-mode)
(add-to-list 'auto-mode-alist '("\\.re$" . reason-mode))

(defvar ivy-completing-read-handlers-alist nil)

(require 'tramp)
