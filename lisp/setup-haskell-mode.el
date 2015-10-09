;;; setup-haskell-mode.el -- Haskell mode configs
;;;
;;; Commentary:
;;;   Setup and customization for Haskell mode
;;;
(require 'haskell-mode-autoloads)

;;; Code:
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)

(provide 'setup-haskell-mode)
;;; setup-haskell-mode.el ends here
