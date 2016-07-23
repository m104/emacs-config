(require 'user-lisp)

(message "** Loading user-sbcl.el...")

(load (expand-file-name "quicklisp/slime-helper.el" (getenv "HOME")))
(setq inferior-lisp-program "sbcl")

(provide 'user-sbcl)
