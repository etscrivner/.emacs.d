;;; setup-org.el -- setup org mode
;;;
;;; Commentary:
;;;   Configurations for org-mode
;;;
(require 'org)

;;; Code:
(setq org-clock-persist 'history)
(org-clock-persistence-insinuate)

;;; Pomodoro timers
(add-to-list 'org-modules 'org-timer)
(setq org-timer-default-timer 25)
(add-hook 'org-clock-in-hook
          (lambda () (if (not org-timer-current-timer)
                    (org-timer-set-timer '(16)))))

(provide 'setup-org)
;;; setup-org.el ends here
