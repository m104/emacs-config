(message "** Loading user-editor.el...")

;; whitespace handling (defaults)
(set-default 'indent-tabs-mode nil)
(set-default 'indicate-empty-lines t)
(set-default 'c-basic-offset 4) ; C/PHP
(set-default 'tab-width 2)

;; Newline at end of file
(setq require-final-newline t)

;; editing preferences
(global-font-lock-mode t)
(show-paren-mode t)
(line-number-mode t)
(column-number-mode t)
(size-indication-mode t)
(delete-selection-mode t)
(auto-compression-mode t)
(global-auto-revert-mode t)
(delete-selection-mode t)

(provide 'user-editor)
