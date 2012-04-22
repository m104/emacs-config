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

;; TODO? ELPA/MELPA

;; backup files stored within .emacs.d/
(setq backup-directory-alist (list (cons "."  "~/.emacs.d/backups"))
      auto-save-default nil)

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
(show-paren-mode 1)
(line-number-mode 1)
(column-number-mode 1)
(auto-compression-mode t)

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
  (blink-cursor-mode -1)
  (set-scroll-bar-mode 'right))

;; TODO (toggle) menu bar
;(menu-bar-mode -1)

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

;; TODO user's bindings
;(require 'user-bindings)
;(require 'user-modes)

;; per-OS customizations
(setq system-specific-config
      (concat dotfiles-dir "system/" (symbol-name system-type) ".el"))
(if (file-exists-p system-specific-config)
  (load system-specific-config))

