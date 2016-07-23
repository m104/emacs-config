(message "** Loading user-common.el...")

;; common stuff
(require 'cl)
(require 'cl-lib)
(require 'ffap)
(require 'ansi-color)

;; UTF-8, please
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; Seed the random-number generator
(random t)

;; current user
(setq current-user
      (getenv
       (if (equal system-type 'windows-nt) "USERNAME" "USER")))

(defun ensure-user-dir (dir)
  (unless (file-exists-p dir)
    (message "Creating user directory %s" dir)
    (make-directory dir)))

; system specific directory location
(setq user-system-dir (expand-file-name "system/" user-dotfiles-dir))

; user states directory location and creation
(setq user-states-dir (expand-file-name "states/" user-dotfiles-dir))
(ensure-user-dir user-states-dir)

; savefile directory location and creation
(setq user-savefile-dir (expand-file-name "savefile/" user-states-dir))
(ensure-user-dir user-savefile-dir)

; backups directory location and creation
(setq user-backups-dir (expand-file-name "backups/" user-states-dir))
(ensure-user-dir user-backups-dir)

;; backup files stored within .emacs.d/
(setq backup-directory-alist
      `((".*" . ,user-backups-dir)))
(setq auto-save-file-name-transforms
      `((".*" ,user-backups-dir t)))
(setq auto-save-list-file-prefix (expand-file-name "saves-" user-backups-dir))

;; save per-file places
(require 'saveplace)
(setq save-place t
      save-place-file (expand-file-name "places" user-states-dir))

;; save a list of recent files visited
(require 'recentf)
(setq recentf-save-file (expand-file-name "recentf" user-states-dir))
(recentf-mode 1)

;; unique buffer names
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

;; reduce the frequency of garbage collection by making it happen on
;; each 50MB of allocated data (the default is on every 0.76MB)
(setq gc-cons-threshold 50000000)

;; warn when opening files bigger than 100MB
(setq large-file-warning-threshold 100000000)

(provide 'user-common)
