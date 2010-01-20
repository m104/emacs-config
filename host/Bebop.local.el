;; Bebop (OS X) specific settings

(require 'mac-bindings)

(setq browse-url-browser-function 'browse-default-macosx-browser)

(prefer-coding-system 'utf-8)

(when window-system
  (color-theme-glow)
  (set-face-font 'default "-apple-monaco-medium-r-normal--13-0-72-72-m-0-iso10646-1"))