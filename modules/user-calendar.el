(message "Loading user-calendar.el...")

;; calender directory location
(setq calendar-dir (expand-file-name ".calendar/" (getenv "HOME")))

;; diary file location
(setq diary-file (expand-file-name "diary" calendar-dir))

;; flyspell for diary editing
(add-hook 'diary-mode-hook 'turn-on-flyspell)

;; auto-fill for diary editing
(add-hook 'diary-mode-hook 'turn-on-auto-fill)

(provide 'user-calendar)
