;;; setup-elm.el --- Setup for Elm language
;;;
;;; Commentary:
;;;   Load and configure elm language mode
;;;
(require 'elm-mode)

;;; Code:
(add-hook 'elm-mode-hook #'elm-oracle-setup-completion)

(provide 'setup-elm)
;;; setup-elm.el ends here
