;; Set the visual theme
;; (load-theme 'wombat t)
;; (load-theme 'manoj-dark)
;; (load-theme 'solarized)
;; (load-theme 'zerodark t)
;; (load-theme 'zenburn t)
;; (load-theme 'ujelly t)
;; (load-theme 'ample t)
;; (load-theme 'spacegray t)
(load-theme 'cyberpunk t)
;; (load-theme 'waher t)

;; Set the font size
;; (set-face-attribute 'default nil :height 170)
;; (set-face-attribute 'default nil :height 180 :font "ProggyCleanTT")

(let ((available-fonts (font-family-list)))
  (cond ;;((member "Fantasque Sans Mono" available-fonts)
        ;; (set-face-attribute 'default nil :height 140 :font "Fantasque Sans Mono"))
        ((member "Inconsolata-g" available-fonts)
         (set-face-attribute 'default nil :height 150 :font "Inconsolata-g"))
        ((member "Inconsolata" available-fonts)
         (set-face-attribute 'default nil :height 150 :font "Inconsolata"))))

;;; Line numbers everywhere
(global-linum-mode t)

;; Always highlight the current line
(global-hl-line-mode t)
(set-face-underline-p 'hl-line nil)
(set-face-background 'hl-line "#2B3031")


;; Highlight the current line number
(require 'hlinum)
(hlinum-activate)

;; Add spacing on either side of line number
(defadvice linum-update-window (around linum-dynamic activate)
  (let* ((w (length (number-to-string
                     (count-lines (point-min) (point-max)))))
         (linum-format (concat " %" (number-to-string w) "d ")))
    ad-do-it))

;;; Show fringes
(fringe-mode -1)

;;; Indicate file sizes
(size-indication-mode t)

(provide 'setup-appearance)
