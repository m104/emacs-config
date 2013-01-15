;; indentation help
(global-set-key (kbd "C-x ^") 'join-line)
;; code alignment
(global-set-key (kbd "C-x \\") 'align-regexp)

;; full-apropos shortcut
(global-set-key (kbd "C-h A") 'apropos)

;; regex searches by default.
;(global-set-key (kbd "C-s") 'isearch-forward-regexp)
;(global-set-key (kbd "C-r") 'isearch-backward-regexp)
;(global-set-key "\C-\M-s" 'isearch-forward)
;(global-set-key "\C-\M-r" 'isearch-backward)

;; window moving
(global-set-key (kbd "C-x O") (lambda () (interactive) (other-window -1))) ; back one
(global-set-key "\C-x\C-o" (lambda () (interactive) (other-window 2))) ; forward two

;; (lisp) eval a whole buffer
(define-key lisp-mode-shared-map (kbd "C-c v") 'eval-buffer)

;; font size adjustment
(define-key global-map (kbd "C-+") 'text-scale-increase)
(define-key global-map (kbd "C--") 'text-scale-decrease)

(provide 'user-bindings)
