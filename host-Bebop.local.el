;; Bebop specific settings
;;

;; Keyboard
(require 'mac-bindings)

;; Font
(set-face-font 'default "-apple-monaco-medium-r-normal--13-0-72-72-m-0-iso10646-1")

;; Color Themes
(add-to-list 'load-path (concat dotfiles-dir "/vendor/color-theme"))
(require 'color-theme)
(color-theme-initialize)
;(color-theme-charcoal-black)
;(color-theme-gray30)
(color-theme-glow)

(prefer-coding-system 'utf-8)

(server-start)
