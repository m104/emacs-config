(message "** Loading user-theme.el...")

;; custom themes directory
(add-to-list 'custom-theme-load-path
             (expand-file-name "themes/" user-dotfiles-dir))

;; window theming
(when window-system
  (user-ensure-packages '(monokai-theme))
  (load-theme 'monokai t))

(provide 'user-theme)
