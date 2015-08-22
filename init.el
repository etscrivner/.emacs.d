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
;; (setq defuns-dir (expand-file-name "defuns" dotfiles-dir))
;; (dolist (file (directory-files defuns-dir "\\w+"))
;;   (when (file-regular-p file)
;;     (load file)))

;; Save point positions between sessions
(require 'saveplace)
(setq-default save-place t)
(setq save-place-file (expand-file-name ".places" dotfiles-dir))

;; Require our own sane defaults
(require 'sane-defaults)
(require 'dash)

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
(require 'setup-appearance)
(require 'setup-avy)
;;(require 'setup-autocomplete)
(require 'setup-change-inner)
(require 'setup-custom-commands)
(require 'setup-clojure)
(require 'setup-diminish)
(require 'setup-fill-column-indicator)
(require 'setup-flycheck)
(require 'setup-haskell-mode)
;; (require 'setup-highlight-indentation)
(require 'setup-helm)
(require 'setup-lisp)
(require 'setup-magit)
(require 'setup-markdown-mode)
(require 'setup-perspective)
(require 'setup-projectile)
(require 'setup-python)
(require 'setup-restclient-mode)
(require 'setup-semantic)
(require 'setup-slime)
(require 'setup-smex)
(require 'setup-snippets)
(require 'setup-tomatinho)
(require 'setup-yaml)
(require 'setup-yasnippet)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("77fac25c0276f636e3914636c45f714c2fd688fe1b1d40259be7ce84b8b5ab1e" "193d343658d4b04c3b0f821378a72a80b8d95c242a11327d952155b3f1d04698" "4cc565f169014e69ee061d2092cb0d936ed5501e53bb5d76fee614d66b2d5474" "8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(rainbow-delimiters-depth-1-face ((t (:foreground "deep sky blue"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "deep pink"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "chartreuse"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "sienna1"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "orchid"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "yellow"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "spring green"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "dark orange")))))
