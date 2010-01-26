


;; nxhtml stuff
;(load "nxhtml/autostart.el")
;(setq mumamo-chunk-coloring 'submode-colored
;      nxhtml-skip-welcome t
;      indent-region-mode t
;      rng-nxml-auto-validate-flag nil)

;; associate modes with file extensions
(add-to-list 'auto-mode-alist '("\\.mysql$" . sql-mode))
(add-to-list 'auto-mode-alist '("COMMIT_EDITMSG$" . diff-mode))
(add-to-list 'auto-mode-alist '("\\.css$" . css-mode))
;(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.js\\(on\\)?$" . js2-mode))
;(add-to-list 'auto-mode-alist '("\\.xml$" . nxml-mode))
;(add-to-list 'auto-mode-alist '("\\.html$" . nxhtml-mode))
;(add-to-list 'auto-mode-alist '("\\.rhtml$" . nxhtml-mode))


;; cosmetics
(eval-after-load 'diff-mode
  '(progn
     (set-face-foreground 'diff-added "green4")
     (set-face-foreground 'diff-removed "red3")))

(eval-after-load 'magit
  '(progn
     (set-face-foreground 'magit-diff-add "green4")
     (set-face-foreground 'magit-diff-del "red3")))

(provide 'user-modes)
