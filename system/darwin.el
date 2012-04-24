;; Darwin (OS X) specific settings

;; allow (and prefer) homebrew programs over native ones
(push "/usr/local/bin" exec-path)

;; command -> super
;; option -> meta
(setq mac-command-modifier 'super)
(setq mac-option-modifier 'meta)

(setq browse-url-browser-function 'browse-default-macosx-browser)

(when window-system
;  (color-theme-glow)
  (set-face-font 'default "-apple-monaco-medium-r-normal--13-0-72-72-m-0-iso10646-1"))

