;; -*- mode: emacs-lisp -*-

;; Remove startup message
(setq inhibit-startup-message t)

;; Increase Font Size
(add-to-list 'initial-frame-alist '(fullscreen . maximized))
(set-face-attribute 'default nil :height 300)
(add-hook 'minibuffer-setup-hook 'custom-minibuffer-setup)
(defun custom-minibuffer-setup ()
  (set (make-local-variable 'face-remapping-alist)
       '((default :height 2.0))))





