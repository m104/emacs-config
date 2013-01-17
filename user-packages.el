(require 'cl)
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(setq url-http-attempt-keepalives nil)

(defvar desired-packages
  ; the package list!
  '(
    melpa
    rainbow-mode
    magit
    pomodoro
    )
  ;
  "A list of desired ELPA/MELPA/Marmalade packages to always have installed.")

(defun desired-packages-installed-p ()
  (loop for p in desired-packages
        when (not (package-installed-p p)) do (return nil)
        finally (return t)))

(unless (desired-packages-installed-p)
  (message "%s" "Updating package database...")
  (package-refresh-contents)
  (message "%s" "Package database updated.")
  (dolist (p desired-packages)
    (when (not (package-installed-p p))
      (message "Installing package %s ..." (symbol-name p))
      (package-install p))))

(provide 'user-packages)

