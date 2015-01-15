(message "** Loading gnu-linux.el...")

;; GNU/Linux specific settings

;; no menu bar
(menu-bar-mode -1)

(setq browse-url-browser-function 'browse-url-firefox)

(when window-system
  (set-face-attribute 'default nil :font "DejaVu Sans Mono-10")
  (set-frame-height (selected-frame) 50)
  (set-frame-width (selected-frame) 120))
