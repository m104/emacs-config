(message "** Loading user-modes.el...")

;; flyspell-mode for on-the-fly spelling checks
(require 'flyspell)
(setq ispell-program-name "aspell"
      ispell-extra-args '("--sug-mode=ultra"))

;; flyspell for text editing
(add-hook 'text-mode-hook 'turn-on-flyspell)

;; auto-fill for text editing
(add-hook 'text-mode-hook 'turn-on-auto-fill)

;; rainbow mode
(add-hook 'prog-mode-hook 'rainbow-mode)

;; rainbow-delimiters
(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

;; global guru mode
(guru-global-mode +1)
;; warn only
(setq guru-warn-only t)

;; highlight watch words
(defun add-watchword-highlights ()
  (font-lock-add-keywords
   nil '(("\\<\\(FIX\\(ME\\)?\\|TODO\\|HACK\\|XXX\\|NOTE\\|\\(DE\\)?BUG\\)\\>"
          1 highlight t))))

(add-hook 'prog-mode-hook 'add-watchword-highlights)

(provide 'user-modes)
