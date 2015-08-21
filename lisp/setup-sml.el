;;; setup-sml.el --- Standard ML mode configurations
;;;
;;; Commentary:
;;; Setup and provide standard ML mode.
;;;
(require 'sml-mode)

;;; Code:
(autoload 'sml-mode "sml-mode" "Major mode for editing SML." t)
(setq auto-mode-alist
      (cons '("\.sml$" . sml-mode)
            (cons '("\.sig$" . sml-mode)
                  auto-mode-alist)))
(setq sml-program-name "sml")

(provide 'setup-sml)
;;; setup-sml.el ends here
