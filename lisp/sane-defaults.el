;;; sane-defaults.el -- Convert emacs default configuration
;;;
;;; Commentary:
;;;
;;;   Emacs doesn't always pick the best defaults. This file tries to remedy
;;;   that.
;;;

;;; Code:
;; Allow pasting selection outside of Emacs
(setq x-select-enable-clipboard t)

;; Auto refresh buffers
(global-auto-revert-mode t)

;; Show keystrokes in progress
(setq echo-keystrokes 0.1)

;; Nobody uses shift to mark things
(setq shift-select-mode nil)

;; No splash screen please
(setq inhibit-startup-message t)

;; Answer just 'y' or 'n' instead of 'yes' or 'no'
(defalias 'yes-or-no-p 'y-or-n-p)

;; UTF-8 please
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; Show active region
(transient-mark-mode t)
(make-variable-buffer-local 'transient-mark-mode)
(put 'transient-mark-mode 'permanent-local t)
(setq-default transient-mark-mode t)

;; Remove selected text in active region if inserting
(delete-selection-mode t)

;; Line and column numbers
(setq line-number-mode t)
(setq column-number-mode t)

;; Lines should be 79 characters wide, not 72
(setq-default fill-column 79)

;; Save a list of recently visited files.
(recentf-mode t)

;; Undo/redo window configuration C-c <left>/<right>
(winner-mode 1)

;; Never insert tabs
(set-default 'indent-tabs-mode nil)

;; Show me empty lines after end of buffer
(set-default 'indicate-empty-lies t)

;; Sentences do not need double spaces to end.
(set-default 'sentence-end-double-space nil)

;; Add parts of each file's directory to the buffer name if not unique
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

;; We'll try this out, but we don't want electric indent
(electric-pair-mode -1)
(electric-indent-mode -1)

;; We'd also like to know what time it is
(display-time)

;; Show matching parens
(show-paren-mode 1)

;; Interactivate all the things
(ido-mode 1)

;; No blinking cursor right now
(blink-cursor-mode 0)

;; Automatically update buffers if files change on disk
(global-auto-revert-mode t)

;; Comment region
(global-set-key (kbd "C-c c c") 'comment-region)
(global-set-key (kbd "C-c c u") 'uncomment-region)

;; Replace rectangle
(global-set-key (kbd "C-c c r") 'replace-rectangle)

(provide 'sane-defaults)
;;; sane-defaults.el ends here
