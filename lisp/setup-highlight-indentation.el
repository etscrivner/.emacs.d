;;; setup-highlight-indentation.el --- Setup highlight indentation
;;;
;;; Commentary:
;;; Load and configure indentation highlighting.
;;;
;;;
(require 'highlight-indentation)

;;; Code:
(define-globalized-minor-mode global-highlight-indentation-mode
  highlight-indentation-mode
  (lambda () (highlight-indentation-mode 1)))

(global-highlight-indentation-mode 1)

(provide 'setup-highlight-indentation)
;;; setup-highlight-indentation.el ends here
