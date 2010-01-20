;; Load path
(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))
(add-to-list 'load-path dotfiles-dir)

;; commonly used
(require 'cl)
(require 'saveplace)
(require 'ffap)
(require 'uniquify)
(require 'ansi-color)
(require 'recentf)

;; GUI preferences
(when window-system
  (mouse-wheel-mode t)
  (setq frame-title-format '(buffer-file-name "%f" ("%b")))
  (tooltip-mode -1)
  (tool-bar-mode -1)
  (blink-cursor-mode -1)
  (set-scroll-bar-mode 'right))

;; search highlight
(setq search-highlight t) ; incremental search highlights
(setq query-replace-highlight t) ; highlight during query

;; line and column numbering
(line-number-mode 1)
(column-number-mode 1)

;; random preferences
(setq inhibit-startup-message t
      font-lock-maximum-decoration t
      visible-bell t
      transient-mark-mode t
      color-theme-is-global t
      imenu-auto-rescan t
      uniquify-buffer-name-style 'forward
      ediff-window-setup-function 'ediff-setup-windows-plain)

;; not going to need a menu bar
(menu-bar-mode -1)

;; save per-file places
(setq save-place t
      save-place-file (convert-standard-filename "~/.emacs.d/places"))

;; line truncation (no wrapping)
(setq default-truncate-lines t
      truncate-partial-width-windows t)

;; transparently open compressed files
(auto-compression-mode t)
 
;; enable syntax highlighting for older Emacsen that have it off
(global-font-lock-mode t)
 
;; save a list of recent files visited.
(recentf-mode 1)
 
;; highlight matching parentheses when the point is on them.
(show-paren-mode 1)

;; indentation style (no tabs)
(set-default 'indent-tabs-mode nil)
(set-default 'indicate-empty-lines t)
(set-default 'c-basic-offset 4) ; C/PHP
(set-default 'tab-width 2)
 
;;(defalias 'yes-or-no-p 'y-or-n-p)
(random t) ;; Seed the random-number generator

;; don't clutter up directories with files~
(setq backup-directory-alist `(("." . ,(expand-file-name "~/.emacs.d/backups")))
      auto-save-default nil)

(load "nxhtml/autostart.el")

;; bindings
(require 'user-bindings)
(require 'user-modes)

;; initialize the color-theme library
(add-to-list 'load-path (concat dotfiles-dir "/vendor/color-theme"))
(require 'color-theme)
(color-theme-initialize)

;; per-host customizations
(setq system-specific-config
      (concat dotfiles-dir "host/" system-name ".el"))
(if (file-exists-p system-specific-config)
  (load system-specific-config))

