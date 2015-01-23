(message "** Loading user-theme.el...")

;; custom themes directory
(add-to-list 'custom-theme-load-path
             (expand-file-name "themes/" user-dotfiles-dir))

;; window theming
(when window-system
  (user-ensure-packages '(subatomic-theme))
  (setq subatomic-high-contrast 't)
  (load-theme 'subatomic t))

;(when window-system
;  (user-ensure-packages '(zenburn-theme))
;  (load-theme 'zenburn t))

(provide 'user-theme)
