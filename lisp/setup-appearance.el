;; Set the visual theme
;; (load-theme 'wombat)
;; (load-theme 'manoj-dark)
;; (load-theme 'solarized)
;; (load-theme 'zerodark t)
;; (load-theme 'zenburn t)
;; (load-theme 'ujelly t)
(load-theme 'ample t)
;; (load-theme 'cyberpunk t)

;; Set the font size
;; (set-face-attribute 'default nil :height 170)
;; (set-face-attribute 'default nil :height 180 :font "ProggyCleanTT")
(cond ((member "Inconsolata-g" (font-family-list))
       (set-face-attribute 'default nil :height 150 :font "Inconsolata-g"))
      ((member "Inconsolata" (font-family-list))
       (set-face-attribute 'default nil :height 130 :font "Inconsolata")))

;;; Line numbers everywhere
(global-linum-mode t)

;;; Show fringes
(fringe-mode 10)

;;; Indicate file sizes
(size-indication-mode t)

(provide 'setup-appearance)
