
;; highlight watch words (e.g. TODO, FIXME, XXX)
(defun add-watchwords ()
  (font-lock-add-keywords
   nil '(("\\<\\(FIX\\(ME\\)?\\|TODO\\|HACK\\|XXX\\|NOTE\\|\\(DE\\)?BUG\\)"
          1 highlight t))))
(add-hook 'prog-mode-hook 'add-watchwords)

(provide 'user-modes)
