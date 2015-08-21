(require 'projectile)
(require 'helm-projectile)

(projectile-global-mode)
(setq projectile-keymap-prefix (kbd "C-x x"))
(global-set-key (kbd "C-x x h") 'helm-projectile)
(global-set-key (kbd "C-c p a") 'helm-projectile-ack)

(provide 'setup-projectile)
