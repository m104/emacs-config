(message "** Loading user-system.el...")

;; load the per-system file, if available
(let* ((file-name
        (concat
          (replace-regexp-in-string "\/" "-"
                                    (symbol-name system-type))
          ".el"))
      (file-path (expand-file-name file-name user-system-dir)))
  (if (file-exists-p file-path)
    (load file-path)))

(provide 'user-system)
