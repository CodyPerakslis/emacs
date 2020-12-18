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

;; Abbrev Mode
(setq-default abbrev-mode t)
(setq abbrev-file-name "~/.emacs.d/abbrev.el")
(defun xah-abbrev-h-f () t)
(put 'xah-abbrev-h-f 'no-self-insert t) 


;;;; Org Mode Config
;; Enable Org Mode
(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(define-key global-map "\C-cc" 'org-capture)
(setq org-log-done t)
(setq org-agenda-files (list "~/.org/gtd.org"
			     "~/.org/inbox.org"))
			    
(setq org-capture-templates '(("t" "Todo [inbox]" entry
			       (file+headline "~/.org/inbox.org" "Tasks")
			       "* TODO %i%?")))
(defalias 'timer 'org-timer-start)
