(require 'helm-config)

(helm-mode 1)

;; Change up the helm defaults
(global-set-key (kbd "C-c h") 'helm-command-prefix)
(global-unset-key (kbd "C-x c"))

;; Add some custom commands we might not have access to
(global-set-key (kbd "C-c h i") 'helm-semantic-or-imenu)
(global-set-key (kbd "C-c h o") 'helm-occur)

;; Bind M-x to helm
(global-set-key (kbd "M-x") 'helm-M-x)
(setq helm-M-x-fuzzy-match t)

;; Use helm for buffer search
(global-set-key (kbd "C-x b") 'helm-mini)
(setq helm-buffers-fuzzy-matching t
      helm-recentf-fuzzy-match t)

;; Automatically scale helm buffer to number of matches
(helm-autoresize-mode t)

(provide 'setup-helm)
