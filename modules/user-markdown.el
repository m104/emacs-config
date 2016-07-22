(message "** Loading user-markdown.el...")

(user-ensure-packages '(markdown-mode))

;; markdown mode hook
(defun user-markdown-mode-defaults ()
  (setq mode-name "md"))

(setq markdown-mode-hook 'user-markdown-mode-defaults)

(provide 'user-markdown)
