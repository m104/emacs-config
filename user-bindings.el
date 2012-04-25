;; readline-like word delete
(global-set-key (kbd "C-M-h") 'backward-kill-word)

;; indentation help
(global-set-key (kbd "C-x ^") 'join-line)
;; code alignment
(global-set-key (kbd "C-x \\") 'align-regexp)

;; full-apropos shortcut
(global-set-key (kbd "C-h A") 'apropos)
;; start an eshell or switch to it
(global-set-key (kbd "C-x m") 'eshell)
;; start an eshell, aways
(global-set-key (kbd "C-x M") (lambda () (interactive) (eshell t)))
;; start a regular shell
(global-set-key (kbd "C-x M-m") 'shell)
;; prepare for longer meta commands
(global-set-key (kbd "C-x C-m") 'execute-extended-command)
;; view a URL
(global-set-key (kbd "C-x h") 'view-url)

;; regex searches by default.
(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)
(global-set-key "\C-\M-s" 'isearch-forward)
(global-set-key "\C-\M-r" 'isearch-backward)

;; window moving
(global-set-key (kbd "C-x O") (lambda () (interactive) (other-window -1))) ; back one
(global-set-key "\C-x\C-o" (lambda () (interactive) (other-window 2))) ; forward two

;; (lisp) eval a whole buffer
(define-key lisp-mode-shared-map (kbd "C-c v") 'eval-buffer)

;; turn on the menu bar for exploring new modes
(global-set-key (kbd "<f12>") 'menu-bar-mode)

;; font size adjustment
(define-key global-map (kbd "C-+") 'text-scale-increase)
(define-key global-map (kbd "C--") 'text-scale-decrease)

;; TODO
;(global-set-key (kbd "C-x g") 'magit-status)

(provide 'user-bindings)
