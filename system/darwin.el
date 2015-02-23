(message "** Loading darwin.el...")

;; Darwin (OS X) specific settings

;; add OS X login shell PATH entries to exec-path
(let* ((shell-output (shell-command-to-string
                       "TERM=vt100 $SHELL -l -i -c 'echo $PATH'"))
       (path-string (cadr (reverse (split-string shell-output "\n"))))
       (path-list (split-string path-string path-separator)))
  (setenv "PATH" path-string)
  (dolist (entry (reverse path-list))
    (add-to-list 'exec-path entry)))

(message "exec-path: %s" exec-path)

;; command -> super
(setq mac-command-modifier 'super)
;; option -> meta
(setq mac-option-modifier 'meta)

(setq browse-url-browser-function 'browse-default-macosx-browser)

(when window-system
  (set-face-attribute 'default nil :font "Menlo-12")
  (set-frame-height (selected-frame) 50)
  (set-frame-width (selected-frame) 120))

