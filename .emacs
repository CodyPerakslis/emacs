;; -*- mode: emacs-lisp -*-

;; Load in configs
(defun recursive-load-configs (directory)
  "Load recursively all '*-config.el' files in a given directory."
  (dolist (element (directory-files-and-attributes directory nil nil nil))
    (let* ((path (car element))
	   (fullpath (concat directory "/" path))
	   (isdir (car (cdr element)))
	   (ignore-dir (or (string= path ".") (string= path ".."))))
      (cond
       ((and (eq isdir t) (not ignore-dir))
	(recursive-load-configs fullpath))
       ((and (eq isdir nil) (eq (string-suffix-p "-config.el" path) t))
	(load (file-name-sans-extension fullpath)))))))

(recursive-load-configs "~/.emacs.d")
