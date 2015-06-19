;;; setup-python.el --- Python mode configurations
;;;
;;; Commentary:
;;; Contains various python-mode configurations and add-ons
;;;
(require 'pymacs)
(require 'virtualenvwrapper)

;;; Code:

;;; Ropemacs python refactorings
(setq ropemacs-enable-autoimport 't)
(pymacs-load "ropemacs" "rope-")

;;; Rope should also index additonal modules specified here
(setq ropemacs-autoimport-modules '("os" "datetime"))

;; Docstring fill style
(setq python-fill-docstring-style 'pep-257-nn)

;;; Use ipython when available
(when (executable-find "ipython")
  (setq python-shell-interpreter "ipython"))

;;; Basic file skeletons
(define-skeleton python-skeleton--test-file
  "Inserts boilerplate code for a Python unit-test file."
  "Does the following:"
  "# -*- coding: utf-8 -*-\n"
  "import unittest\n"
  "\n"
  "\n"
  "class Test" (skeleton-read "Test name:") "(unittest.TestCase):\n"
  "    ")

(define-skeleton python-skeleton--module-file
  "Inserts boilerplate module file code"
  "Does the following"
  "# -*- coding: utf-8 -*-\n"
  "\"\"\"\n"
  "    "
  (let ((module-name (skeleton-read " Module name:")))
    (concat
     module-name "\n"
     "    " (make-string (string-width module-name) ?~)))
  "\n"
  "    MODULE DESCRIPTION\n"
  "\n"
  "\n"
  "\"\"\"\n")


;;; Disable electric-pair-mode


(provide 'setup-python)
;;; setup-python.el ends here
