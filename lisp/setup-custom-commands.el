;;; setup-custom-commands.el -- Setup for any custom emacs commands
;;;
;;; Commentary:
;;;
;;; Sometimes emacs just doesn't have the command you want, so this is where I
;;; add them.

;;; Code:
(defun kill-back-to-indentation (arg)
  "Ignore ARG.  Kill lines backwards to the first whitespace character."
  (interactive "p")
  (let ((start (point)))
    (back-to-indentation)
    (kill-region start (point))))

;;; Global keyboard setup
(global-set-key (kbd "C-c DEL") 'kill-back-to-indentation)

(provide 'setup-custom-commands)
;;; setup-custom-commands.el ends here
