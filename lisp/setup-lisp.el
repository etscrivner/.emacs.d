;;; setup-list.el -- General Lisp Configurations
;;;
;;; Commentary:
;;; 
;;; General configurations to make working with Lisp nicer
(require 'smartparens)
(require 'smartparens-config)

;;; Code:

;; Use smartparens everywhere we can
(smartparens-global-mode 't)

;;; Use rainbow parens
(add-hook 'lisp-mode-hook #'rainbow-delimiters-mode)
(add-hook 'emacs-lisp-mode-hook #'rainbow-delimiters-mode)
(add-hook 'scheme-mode-hook #'rainbow-delimiters-mode)
(add-hook 'clojure-mode-hook #'rainbow-delimiters-mode)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(rainbow-delimiters-depth-1-face ((t (:foreground "deep sky blue"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "deep pink"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "chartreuse"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "sienna1"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "orchid"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "yellow"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "spring green"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "dark orange")))))

;;; Slurping s-exps
(define-key smartparens-mode-map (kbd "C-<right>") 'sp-forward-slurp-sexp)
(define-key smartparens-mode-map (kbd "C-<left>") 'sp-forward-barf-sexp)
(define-key smartparens-mode-map (kbd "<C-s-left>") 'sp-backward-slurp-sexp)
(define-key smartparens-mode-map (kbd "<C-s-right>") 'sp-backward-barf-sexp)

;; Prettified symbols
(global-prettify-symbols-mode 1)

(defun add-pretty-lisp-symbols ()
  "make some word or string show as a pretty Unicode symbol"
  (setq prettify-symbols-alist
        '(
          ("lambda" . 955)
          ("map" . 8614)
          )))

(add-hook 'scheme-mode-hook 'add-pretty-lisp-symbols)
(add-hook 'clojure-mode-hook 'add-pretty-lisp-symbols)

(provide 'setup-lisp)

;;; setup-lisp.el ends here


