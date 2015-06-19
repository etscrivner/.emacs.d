;;; setup-multiple-cursors.el -- Configure multiple cursors mode
;;;
;;; Commentary:
;;; 
;;; Importing and configuring multiple in-buffer cursors
(require 'multiple-cursors)

;;; Code:
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)

(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

(provide 'setup-multiple-cursors)
;;; setup-multiple-cursors.el ends here
