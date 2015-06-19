(require 'diminish)

(eval-after-load
    "filladapt" '(diminish 'filladapt-mode))
(eval-after-load
    "projectile" '(diminish 'projectile-mode))
(eval-after-load
    "par" '(diminish 'paredit-mode))
(eval-after-load
    "flyc" '(diminish 'flycheck-mode))
(eval-after-load
    "hlm" '(diminish 'helm-mode))
(eval-after-load
    "rope" '(diminish 'ropemacs-mode))

(provide 'setup-diminish)
