;;; setup-magit.el -- Magit setup
;;; 
;;; Commentary:
;;; Provides a basic setup for magit

;;; Code:
(add-to-list 'load-path "~/.emacs.d/site-lisp/magit")
(require 'magit)

(global-set-key (kbd "C-c m") 'magit-status)

(provide 'setup-magit)
;;; setup-magit.el ends here
