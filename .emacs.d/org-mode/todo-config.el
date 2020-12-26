;; -*- mode: emacs-lisp -*-

;;;; Org Mode Config
;; Enable Org Mode
(require 'org)
(setq org-log-done t)

;; (setq org-todo-keywords '((type "TODO" "IN-PROGRESS" "WAITING" "|" "DONE")))
(setq org-todo-keywords
      '((sequence "TODO(t)" "NEXT(n)" "PROG(p)" "INTR(i)" "|" "DONE(d@/!)" "REMV(r@/!)")))
(customize-set-variable 'org-lowest-priority ?E)
(customize-set-variable 'org-default-priority ?C)
(setq org-hierarchical-todo-statistics nil)

(setq org-agenda-dim-blocked-tasks 'invisible)
(setq org-enforce-todo-dependencies t)
(setq org-enforce-todo-checkbox-dependencies t)
(setq org-track-ordered-property-with-tag t)

(define-key org-mode-map (kbd "\C-cp") 'org-priority-up)

(setq org-agenda-files (list "~/.org/tasks.org"))
			    
(setq org-capture-templates '(("t" "Todo [inbox]" entry
			       (file+headline "~/.org/tasks.org" "Inbox")
			       "* TODO %i%?")
			      ("q" "Quote [unsent]" entry
			       (file+headline "~/.org/quote.org" "Unsent")
			       "* %?\n %t")))

;; Custom agenda view
(setq org-agenda-todo-ignore-scheduled 'future)
(setq org-agenda-todo-ignore-time-comparison-use-second t)
(setq org-agenda-skip-deadline-prewarning-if-scheduled 'pre-scheduled)
(setq org-agenda-span 'day)
(setq org-agenda-custom-commands
      '(("f" "Focused Agenda View"
	 ((agenda "" nil)
	  (todo "INTR" nil)
	  (todo "PROG" nil)
	  (todo "NEXT" nil))
	 nil)))

;; Timer
(defalias 'timer 'org-timer-start)
