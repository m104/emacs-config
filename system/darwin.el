(message "** Loading darwin.el...")

;; Darwin (OS X) specific settings

;; allow (and prefer) homebrew programs over native ones
(if (file-exists-p "/usr/local/bin")
  (push "/usr/local/bin" exec-path))

;; command -> super
(setq mac-command-modifier 'super)
;; option -> meta
(setq mac-option-modifier 'meta)

(setq browse-url-browser-function 'browse-default-macosx-browser)

(when window-system
  (set-face-attribute 'default nil :font "Menlo-12")
  (set-frame-height (selected-frame) 50)
  (set-frame-width (selected-frame) 120))

