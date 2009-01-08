;; deneb specific settings
;;

;; Keyboard
(require 'mac-bindings)

;; Font provided by X Resource

;; Color Themes
(add-to-list 'load-path (concat dotfiles-dir "/vendor/color-theme"))
(require 'color-theme)
(color-theme-initialize)
(color-theme-glow)

(prefer-coding-system 'utf-8)

(server-start)
