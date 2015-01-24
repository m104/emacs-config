;; version requirements
(when (version< emacs-version "24.1")
  (error "init.el requires at least GNU Emacs 24.1 (currently on %s)" emacs-version))

(message "** Loading init.el...")

;; current (dotfile) path
(setq user-dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))

;; load paths
(add-to-list 'load-path (expand-file-name "core/" user-dotfiles-dir))
(add-to-list 'load-path (expand-file-name "modules/" user-dotfiles-dir))

;; load the core files
(require 'user-common)
(require 'user-packages)
(require 'user-ui)
(require 'user-theme)
(require 'user-editor)
(require 'user-modes)
(require 'user-bindings)

;; load the modules
(require 'user-hippie)
(require 'user-helm)
(require 'user-calendar)
(require 'user-org)
(require 'user-emacs-lisp)
(require 'user-ruby)

;; load the system-specific config file
(require 'user-system)

(message "** Finished init.el")
