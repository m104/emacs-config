(message "** Loading user-lisp.el...")

;; shared lisp bindings
(define-key read-expression-map (kbd "TAB") 'completion-at-point)
(define-key lisp-mode-shared-map (kbd "RET") 'reindent-then-newline-and-indent)
(define-key lisp-mode-shared-map (kbd "C-\\") 'lisp-complete-symbol)
(define-key lisp-mode-shared-map (kbd "C-c v") 'eval-buffer)

;; paredit!
(user-ensure-packages '(paredit))
(require 'paredit)

;; shared lisp mode hook
(defun user-lisp-mode-defaults ()
  (paredit-mode +1))

(add-hook 'lisp-mode-hook 'user-lisp-mode-defaults)

(provide 'user-lisp)
