;; -*- mode: emacs-lisp -*-

;; function keys
(global-set-key [f1] 'eshell)

;; C-c *
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(define-key global-map "\C-cc" 'org-capture)
