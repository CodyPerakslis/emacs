;; -*- mode: emacs-lisp -*-

;; Remove startup message
(setq inhibit-startup-message t)

;;;; Org Mode Config
;; Enable Org Mode
(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
(setq org-agenda-files (list "~/.org/home.org"
			     "~/.org/job.org"
			     "~/.org/writing.org"
			     "~/.org/random.org"))
			    


