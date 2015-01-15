(message "Loading user-lisp.el...")

(define-key read-expression-map (kbd "TAB") 'lisp-complete-symbol)
;; (define-key lisp-mode-shared-map (kbd "C-c l") "lambda")
(define-key lisp-mode-shared-map (kbd "RET") 'reindent-then-newline-and-indent)
(define-key lisp-mode-shared-map (kbd "C-\\") 'lisp-complete-symbol)
;; (define-key lisp-mode-shared-map (kbd "C-c v") 'eval-buffer)

;; paredit!
(user-ensure-package 'paredit)
(require 'paredit)
(add-hook 'emacs-lisp-mode-hook (lambda () (paredit-mode +1)))

;; emacs lisp keys
(define-key emacs-lisp-mode-map (kbd "C-c v") 'eval-buffer)

(provide 'user-lisp)
