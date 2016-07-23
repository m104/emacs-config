(require 'user-lisp)

(message "** Loading user-emacs-lisp.el...")

;; emacs lisp keys
(define-key emacs-lisp-mode-map (kbd "C-c C-c") 'eval-defun)

;; emacs lisp mode hook
(defun user-emacs-lisp-mode-defaults ()
  (user-lisp-mode-defaults))

(add-hook 'emacs-lisp-mode-hook 'user-emacs-lisp-mode-defaults)

(provide 'user-emacs-lisp)
