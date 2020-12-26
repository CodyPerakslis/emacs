;; -*- mode: emacs-lisp -*-

;; Set default location
(setq-default abbrev-mode t)
(setq abbrev-file-name "~/.emacs.d/abbrev/abbrev.el")

;; No space after abbrev option
(defun xah-abbrev-h-f () t)
(put 'xah-abbrev-h-f 'no-self-insert t) 
