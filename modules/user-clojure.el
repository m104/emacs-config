(require 'user-lisp)

(message "** Loading user-clojure.el...")

(user-ensure-packages '(clojure-mode cider))

;; clojure mode hook
(defun user-clojure-mode-defaults ()
  (user-lisp-mode-defaults))

(add-hook 'clojure-mode-hook 'user-clojure-mode-defaults)

(provide 'user-clojure)
