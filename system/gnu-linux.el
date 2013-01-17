;; GNU/Linux specific settings

(setq browse-url-browser-function 'browse-url-firefox)

(when window-system
  (load-theme 'mordekai t)
  (set-face-attribute 'default nil :font "DejaVu Sans Mono-10")
  (set-frame-height (selected-frame) 50)
  (set-frame-width (selected-frame) 120))

