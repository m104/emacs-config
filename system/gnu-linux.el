;; GNU/Linux specific settings

(setq browse-url-browser-function 'browse-url-firefox)

(when window-system
;  (color-theme-glow)
  (set-face-attribute 'default nil :font "DejaVu Sans Mono-10")
  (set-frame-height (selected-frame) 44)
  (set-frame-width (selected-frame) 120))

