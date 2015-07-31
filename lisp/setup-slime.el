;;; setup-slime.el -- Setup for SLIME
;;;
;;; Commentary:
;;;
;;;  Configurations for using Superior LISP Interactor Mode (SLIME)
(require 'slime)
;;; Code:
(setq inferior-lisp-program "/usr/bin/sbcl")
(setq slime-contribs '(slime-fancy))

(provide 'setup-slime)
;;; setup-slime.el ends here
