;; Turn off mouse interface and free up screen real estate
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; Set path to .emacs.d
(setq dotfiles-dir (file-name-directory
		    (or (buffer-file-name) load-file-name)))

;; Set path to dependencies
(setq lisp-dir (expand-file-name "lisp" dotfiles-dir))
(setq site-lisp-dir (expand-file-name "site-lisp" dotfiles-dir))
(setq custom-theme-dir (expand-file-name "themes" dotfiles-dir))

;; Set up load path
(add-to-list 'load-path lisp-dir)
(add-to-list 'load-path site-lisp-dir)

;; Add subdirectories of site-lisp folder to load path
(dolist (project (directory-files site-lisp-dir t "\\w+"))
  (when (file-directory-p project)
    (add-to-list 'load-path project)))

;; Add custom themes
(dolist (project (directory-files custom-theme-dir t "\\w+"))
  (when (file-directory-p project)
    (add-to-list 'custom-theme-load-path project)))

;; Load all files in the defuns directory
(setq defuns-dir (expand-file-name "defuns" dotfiles-dir))
(dolist (file (directory-files defuns-dir "\\w+"))
  (when (file-regular-p file)
    (load file)))

;; Save point positions between sessions
(require 'saveplace)
(setq-default save-place t)
(setq save-place-file (expand-file-name ".places" dotfiles-dir))

;; Require our own sane defaults
(require 'sane-defaults)

;; Emacs server
(require 'server)
(unless (server-running-p)
  (server-start))

;; Disable ECB tip of the day
(setq ecb-tipe-of-the-day nil)

;; Enable more powerful stuff
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'selective-display 'disabled nil)
(put 'set-goal-column 'disabled nil)
(put 'scroll-left 'disabled nil)

;; Add stable melpa packages
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives
               '("melpa-stable" . "http://stable.melpa.org/packages/") t))

;; Require our own setups
(require 'setup-ace-jump-mode)
(require 'setup-appearance)
;;(require 'setup-autocomplete)
(require 'setup-change-inner)
(require 'setup-custom-commands)
(require 'setup-clojure)
(require 'setup-diminish)
(require 'setup-fill-column-indicator)
(require 'setup-flycheck)
(require 'setup-haskell-mode)
(require 'setup-helm)
(require 'setup-lisp)
(require 'setup-magit)
(require 'setup-markdown-mode)
(require 'setup-perspective)
(require 'setup-projectile)
(require 'setup-python)
(require 'setup-restclient-mode)
(require 'setup-semantic)
(require 'setup-smex)
(require 'setup-snippets)
(require 'setup-tomatinho)
(require 'setup-yaml)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" default))))
