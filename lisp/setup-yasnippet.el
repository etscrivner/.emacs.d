;;; setup-yasnippet.el --- Setup YASnippet
;;;
;;; Commentary:
;;; Load and configure YASnippets
;;;
(require 'yasnippet)

;;; Code:
(setq yas-snippet-dirs (append
                        yas-snippet-dirs
                        '("~/.emacs.d/snippets")))

(provide 'setup-yasnippet)
;;; setup-yasnippet.el ends here
