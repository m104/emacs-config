(require 'user-lisp)

(message "** Loading user-clojure.el...")

(user-ensure-packages '(clojure-mode cider))

;; clojure mode hook
(defun user-clojure-mode-defaults ()
  (run-hooks 'user-lisp-mode-hook)
  (setq mode-name "clj"))

(setq clojure-mode-hook 'user-clojure-mode-defaults)

(provide 'user-clojure)
