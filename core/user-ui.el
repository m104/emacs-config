(message "** Loading user-ui.el...")

;; easy answers
(defalias 'yes-or-no-p 'y-or-n-p)

;; basic preference properties
(setq inhibit-startup-message        t
      search-highlight               t
      query-replace-highlight        t
      default-truncate-lines         t
      truncate-partial-width-windows t
      font-lock-maximum-decoration   t
      ring-bell-function             'ignore ; no bell of any kind
      transient-mark-mode            t
      color-theme-is-global          t
      imenu-auto-rescan              t
      ediff-window-setup-function    'ediff-setup-windows-plain)

;; GUI preferences
(when window-system
  (mouse-wheel-mode t)
  (setq frame-title-format '(buffer-file-name "%f" ("%b")))
  (tooltip-mode -1)
  (tool-bar-mode -1)
  (fringe-mode 4)
  (blink-cursor-mode -1)
  (scroll-bar-mode -1))

;; scrolling behavior
(setq scroll-margin 0
      scroll-conservatively 100000
      scroll-preserve-screen-position 1)

;; line numbering
(defun linum-format-func (line)
  (let ((w (length (number-to-string (count-lines (point-min) (point-max))))))
     (propertize (format (format "%%%dd " w) line) 'face 'linum)))
(setq linum-format 'linum-format-func)

(global-linum-mode t)

(provide 'user-ui)
