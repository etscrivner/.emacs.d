;; Set the visual theme
(load-theme 'wombat)
;; (load-theme 'manoj-dark)
;; (load-theme 'solarized)

;; Set the font size
;; (set-face-attribute 'default nil :height 170)
(set-face-attribute 'default nil :height 200 :font "ProggyCleanTT")

;;; Line numbers everywhere
(global-linum-mode t)

;;; Show fringes
(fringe-mode 10)

;;; Indicate file sizes
(size-indication-mode t)

(provide 'setup-appearance)
