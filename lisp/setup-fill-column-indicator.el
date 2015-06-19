;;; setup-fill-column-indicator.el -- Configure fill column indicator
;;;
;;; Commentary:
;;;
;;;   Show the fill column and configure the script that does this.
(require 'fill-column-indicator)

;;; Code:
(define-globalized-minor-mode global-fci-mode
  fci-mode
  (lambda () (fci-mode 1)))
(global-fci-mode 1)

(setq fci-rule-color "#333333")

(provide 'setup-fill-column-indicator)
;;; setup-fill-column-indicator.el ends here
