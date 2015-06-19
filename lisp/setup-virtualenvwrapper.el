;;; setup-virtualenvwrapper.el -- Setup virtualenvwrapper.el extension
;;;
;;; Commentary:
;;;
;;; virtualenvwrapper.el allows you to work with python virtual environments
;;; directly from emacs. Import it and configure it to work with the emacs
;;; shell.
(require 'virtualenvwrapper)

;;; Code:
(venv-initialize-interactive-shells)
(venv-initialize-eshell)

(setq venv-location "/home/eric/.virtualenvs/")

(global-set-key (kbd "C-c v w") 'venv-workon)
(global-set-key (kbd "C-c v d") 'venv-deactivate)

(provide 'setup-virtualenvwrapper)
;;; setup-virtualenvwrapper.el ends here
