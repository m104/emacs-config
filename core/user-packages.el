(message "** Loading user-packages.el...")

(require 'package)

;; additional package sources
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives
             '("marmalade" . "https://marmalade-repo.org/packages/") t)

; the core package list
(setq user-core-packages '(
    guru-mode
    rainbow-mode
    rainbow-delimiters
    projectile
    ))

;; package install location
(setq package-user-dir (expand-file-name "elpa/" user-dotfiles-dir))
(ensure-user-dir package-user-dir)

;; initialize package system
(package-initialize)

;; update package database, if necessary
(unless package-archive-contents
  (message "Updating package database...")
  (package-refresh-contents)
  (message "Package database updated."))

;; helper to require that the given package is installed
(defun user-ensure-packages (packages)
  (dolist (pkg packages)
    (when (not (package-installed-p pkg))
      (message "Installing package %s" (symbol-name pkg))
      (package-install pkg))))

;; pre load packages
(user-ensure-packages user-core-packages)

(provide 'user-packages)
