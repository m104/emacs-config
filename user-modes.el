;; highlight watch words (e.g. TODO, FIXME, XXX)
(defun add-watchword-highlights ()
  (font-lock-add-keywords
   nil '(("\\<\\(FIX\\(ME\\)?\\|TODO\\|HACK\\|XXX\\|NOTE\\|\\(DE\\)?BUG\\)"
          1 highlight t))))

(add-hook 'prog-mode-hook 'add-watchword-highlights)

(provide 'user-modes)
