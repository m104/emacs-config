(prefer-coding-system 'utf-8)

;; Load path
(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))
(add-to-list 'load-path dotfiles-dir)

;; Seed the random-number generator
(random t)

;; common stuff
(require 'cl)
;(require 'ffap)
;(require 'ansi-color)

;; ELPA/MELPA
(require 'user-packages)

;; backup files stored within .emacs.d/
(setq backup-directory-alist
      `((".*" . ,(concat dotfiles-dir "backups/"))))
(setq auto-save-file-name-transforms
      `((".*" ,(concat dotfiles-dir "backups/") t)))

;; easy answers
(defalias 'yes-or-no-p 'y-or-n-p)

;; basic preference properties
(setq inhibit-startup-message t
      search-highlight t
      query-replace-highlight t
      default-truncate-lines t
      truncate-partial-width-windows t
      font-lock-maximum-decoration t
      visible-bell t
      transient-mark-mode t
      color-theme-is-global t
      imenu-auto-rescan t
      ediff-window-setup-function 'ediff-setup-windows-plain)

;; editing preferences
(global-font-lock-mode t)
(show-paren-mode t)
(line-number-mode t)
(column-number-mode t)
(size-indication-mode t)
(delete-selection-mode t)
(auto-compression-mode t)
(add-hook 'text-mode-hook 'turn-on-auto-fill)

;; whitespace handling (defaults)
(set-default 'indent-tabs-mode nil)
(set-default 'indicate-empty-lines t)
(set-default 'c-basic-offset 4) ; C/PHP
(set-default 'tab-width 2)

;; GUI preferences
(when window-system
  (mouse-wheel-mode t)
  (setq frame-title-format '(buffer-file-name "%f" ("%b")))
  (tooltip-mode -1)
  (tool-bar-mode -1)
  (blink-cursor-mode t)
  (set-scroll-bar-mode 'right))

;; scrolling behavior
(setq scroll-margin 0
      scroll-conservatively 100000
      scroll-preserve-screen-position 1)

;; TODO (toggle) menu bar
;(menu-bar-mode nil)

;; TODO ? unique buffer names
;;(require 'uniquify)
;;(setq uniquify-buffer-name-style 'forward)

;; save per-file places
(require 'saveplace)
(setq save-place t
      save-place-file (concat dotfiles-dir "places"))

;; save a list of recent files visited.
(require 'recentf)
(recentf-mode 1)
 
;; TODO ? initialize the color-theme library
;(add-to-list 'load-path (concat dotfiles-dir "vendor/color-theme"))
;(require 'color-theme)
;(color-theme-initialize)

;; bindings and modes
(require 'user-bindings)
;(require 'user-modes) ; TODO

;; per-OS customizations
(setq system-specific-config
      (concat dotfiles-dir "system/"
              (replace-regexp-in-string "\/" "-" (symbol-name system-type))
              ".el"))
(if (file-exists-p system-specific-config)
  (load system-specific-config))

