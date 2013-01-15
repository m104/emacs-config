;; Darwin (OS X) specific settings

;; allow (and prefer) homebrew programs over native ones
(push "/usr/local/bin" exec-path)

(setq mac-command-modifier 'super) ;; command -> super
(setq mac-option-modifier 'meta) ;; option -> meta

(setq browse-url-browser-function 'browse-default-macosx-browser)

(when window-system
;  (color-theme-glow)
  (set-face-attribute 'default nil :font "Menlo-12")
  (set-frame-height (selected-frame) 50)
  (set-frame-width (selected-frame) 90))


