;; turn on the menu bar for exploring new modes
(global-set-key [f1] 'menu-bar-mode)

;; keys to start viewers
(global-set-key (kbd "C-x m") 'eshell)
(global-set-key (kbd "C-x C-m") 'shell)
(global-set-key (kbd "C-x h") 'view-url)

;; use regex searches by default.
(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)
(global-set-key "\C-\M-s" 'isearch-forward)
(global-set-key "\C-\M-r" 'isearch-backward)

;; window moving
(global-set-key (kbd "C-x O") (lambda () (interactive) (other-window -1))) ; back one
(global-set-key "\C-x\C-o" (lambda () (interactive) (other-window 2))) ; forward two

;; Lisp stuff
(define-key lisp-mode-shared-map (kbd "C-c v") 'eval-buffer)

(provide 'user-bindings)
