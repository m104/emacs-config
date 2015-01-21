(message "** Loading user-modes.el...")

;; ido mode
(ido-mode t)
(setq ido-endable-flex-matching t)
(setq ido-save-directory-list-file (expand-file-name "ido-last" user-states-dir))

;; flyspell-mode for on-the-fly spelling checks
(require 'flyspell)
(setq ispell-program-name "aspell"
      ispell-extra-args '("--sug-mode=ultra"))

;; flyspell for text editing
(add-hook 'text-mode-hook 'turn-on-flyspell)

;; auto-fill for text editing
(add-hook 'text-mode-hook 'turn-on-auto-fill)

;; global guru mode
(guru-global-mode +1)
;; warn only
(setq guru-warn-only t)

;; highlight watch words (e.g. TODO, FIXME, XXX)
(defun add-watchword-highlights ()
  (font-lock-add-keywords
   nil '(("\\<\\(FIX\\(ME\\)?\\|TODO\\|HACK\\|XXX\\|NOTE\\|\\(DE\\)?BUG\\)\\>"
          1 highlight t))))

(add-hook 'prog-mode-hook 'add-watchword-highlights)

(provide 'user-modes)
