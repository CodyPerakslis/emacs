;; -*- mode: emacs-lisp -*-

;; Remove startup message
(setq inhibit-startup-message t)

;; Set view
(add-to-list 'initial-frame-alist '(fullscreen . maximized))
(set-face-attribute 'default nil :height 300)
(add-hook 'minibuffer-setup-hook 'custom-minibuffer-setup)
(defun custom-minibuffer-setup ()
  (set (make-local-variable 'face-remapping-alist)
       '((default :height 2.0))))


;;;; Org Mode Config
;; Enable Org Mode
(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(define-key global-map "\C-cc" 'org-capture)
(setq org-log-done t)
(setq org-agenda-files (list "~/.org/home.org"
			     "~/.org/job.org"
			     "~/.org/writing.org"
			     "~/.org/random.org"
			     "~/.org/inbox.org"))
			    
(setq org-capture-templates '(("t" "Todo [inbox]" entry
			       (file+headline "~/.org/inbox.org" "Tasks")
			       "* TODO %i%?")))
