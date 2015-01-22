(message "** Loading user-helm.el...")

;; package requirements
(user-ensure-package 'helm)
(user-ensure-package 'helm-projectile)
(user-ensure-package 'helm-descbinds)

;; helm
(require 'helm)
(require 'helm-config)
(require 'helm-projectile)

(setq projectile-known-projects-file
      (expand-file-name "projectile-bookmarks.eld" user-states-dir))

;; use curl if available
(when (executable-find "curl")
  (setq helm-google-suggest-use-curl-p t))

;; recommended defaults
(setq helm-split-window-in-side-p           t
      helm-buffers-fuzzy-matching           t
      helm-move-to-line-cycle-in-source     t
      helm-scroll-amount                    8
      helm-ff-search-library-in-sexp        t
      helm-ff-file-name-history-use-recentf t)

;; safer helm command prefix
(global-set-key (kbd "C-c h") 'helm-command-prefix)
(global-unset-key (kbd "C-x c"))

; rebind tab to run persistent action
(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)
; list actions
(define-key helm-map (kbd "C-z")  'helm-select-action)

;; helm bindings
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-m") 'helm-M-x)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x C-b") 'helm-buffers-list)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-h f") 'helm-apropos)
(global-set-key (kbd "C-h r") 'helm-info-emacs)
(global-set-key (kbd "C-h C-l") 'helm-locate-library)

;; hook up projectile to helm
(projectile-global-mode)
(setq projectile-completion-system 'helm)

;; descbinds <prefix> C-h support
(helm-descbinds-mode)

;; turn on helm
(helm-mode 1)

;; enable Helm version of Projectile with replacment commands
(helm-projectile-on)

(provide 'user-helm)
