(message "** Loading user-bindings.el...")

;; indentation help
(global-set-key (kbd "C-x ^") 'join-line)
;; code alignment
(global-set-key (kbd "C-x \\") 'align-regexp)

;; full-apropos shortcut
(global-set-key (kbd "C-h A") 'apropos)

;; hippie expand
(global-set-key (kbd "M-/") 'hippie-expand)

;; ibuffer
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; regex searches by default
(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)
(global-set-key (kbd "C-M-s") 'isearch-forward)
(global-set-key (kbd "C-M-r") 'isearch-backward)

;; (lisp) eval a whole buffer
(define-key lisp-mode-shared-map (kbd "C-c v") 'eval-buffer)

;; go back one window
(global-set-key (kbd "C-x O") (lambda () (interactive) (other-window -1)))

;; font size adjustment
(define-key global-map (kbd "C-+") 'text-scale-increase)
(define-key global-map (kbd "C--") 'text-scale-decrease)

(provide 'user-bindings)
