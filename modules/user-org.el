(message "** Loading user-org.el...")

(require 'org)

(add-to-list 'auto-mode-alist '("\\.org\\’" . org-mode))

;; some nice bindings
;(global-set-key (kbd "C-c l") 'org-store-link)
;(global-set-key (kbd "C-c a") 'org-agenda)
;(global-set-key (kbd "C-c b") 'org-iswitchb)

; capture when tasks are done
(setq org-log-done t)

(provide 'user-org)
