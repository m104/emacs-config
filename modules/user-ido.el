(message "Loading user-ido.el...")

;; ido mode
(ido-mode t)
(setq ido-endable-flex-matching t)

;; ido save file location
(setq ido-save-directory-list-file (expand-file-name "ido-last" user-states-dir))

(provide 'user-ido)
