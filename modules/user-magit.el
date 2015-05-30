(message "** Loading user-magit.el...")

(user-ensure-packages '(magit))

;; saw the message, thank you
(setq magit-last-seen-setup-instructions "1.4.0")

(provide 'user-magit)
