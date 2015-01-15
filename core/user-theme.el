(message "** Loading user-theme.el...")

;; custom themes directory
(add-to-list 'custom-theme-load-path
             (expand-file-name "themes/" user-dotfiles-dir))

;; window theming
(when window-system
  (user-ensure-package 'subatomic-theme)
  (setq subatomic-high-contrast 't)
  (load-theme 'subatomic t))

(provide 'user-theme)
