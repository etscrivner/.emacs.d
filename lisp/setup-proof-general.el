;;; setup-proof-general.el -- Configuration for proof general
;;;
;;; Commentary:
;;;  Configuration for Proof General proof assistant interface
(setq proof-assistant-dir
      (expand-file-name
       "generic"
       (expand-file-name "ProofGeneral" site-lisp-dir)))

(setq proof-assistant-load
      (expand-file-name "proof-site.el" proof-assistant-dir))

(load-file proof-assistant-load)

(provide 'setup-proof-general)
;;; setup-proof-general.el ends here
