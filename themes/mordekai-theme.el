;; mordekai-theme
;;
;; Based on "molokai" from Textmate/Vim, with the Emacs form based on
;; monokai-theme for Emacs 24 (https://github.com/lvillani/el-monokai-theme)
;; and zenburn-theme.

(unless (>= 24 emacs-major-version)
  (error "mordekai-theme requires Emacs 24 or later."))

(deftheme mordekai "mordekai color theme")

(let (
      (mordekai-base          "#1B1D1E")
      (mordekai-gray+3        "#F8F8F2")
      (mordekai-gray+2        "#E6E6E0")
      (mordekai-gray+1.5      "#8F8F89")
      (mordekai-gray+1        "#80807A")
      (mordekai-gray          "#595950")
      (mordekai-gray-1        "#383830")
      (mordekai-gray-2        "#272722")
      (mordekai-gray-3        "#141411")
      (mordekai-gray-4        "#080804")
      (mordekai-black         "#000000")
      (mordekai-white         "#FFFFFF")
      (mordekai-green         "#A6E22E")
      (mordekai-magenta       "#F92672")
      (mordekai-magenta-1     "#960050")
      (mordekai-purple        "#AE81FF")
      (mordekai-purple-light  "#FD5FF1")
      (mordekai-yellow+1      "#FFFF00")
      (mordekai-yellow        "#E6DB74")
      (mordekai-yellow-1      "#E3C65A")
      (mordekai-yellow-2      "#75715E")
      (mordekai-blue-light    "#89BDFF")
      (mordekai-blue          "#475FC4")
      (mordekai-cyan          "#66D9EF")
      (mordekai-red           "#DD0000")
      (mordekai-red-1         "#770000")
      (mordekai-red-2         "#550000")
      (mordekai-orange        "#FD971F")
      )
  (custom-theme-set-faces
   'mordekai
   ;; Frame
   `(default ((t (:foreground ,mordekai-gray+3 :background ,mordekai-base))))
   `(fringe ((t (:forground ,mordekai-white :background ,mordekai-gray-2))))
   `(minibuffer-prompt ((t (:foreground ,mordekai-gray+3))))
   `(cursor ((t (:foreground ,mordekai-black :background ,mordekai-gray+3))))
   `(modeline ((t (:foreground ,mordekai-gray+2 :background ,mordekai-gray-1))))
   `(modeline-buffer-id ((t (:foreground ,mordekai-gray+2))))
   `(modeline-inactive ((t (:foreground ,mordekai-gray :background ,mordekai-gray-2))))

   ;; General Editing
   `(region ((t (:background ,mordekai-gray-1))))
   `(highlight ((t (:foreground ,mordekai-yellow+1 :bold t))))
   `(match ((t (:background ,mordekai-blue))))
   `(hl-line ((t (:background ,mordekai-gray-2))))
   `(isearch ((t (:foreground ,mordekai-white :background ,mordekai-blue))))
   `(isearch-fail ((t (:background ,mordekai-red))))
   `(lazy-highlight ((t (:foreground ,mordekai-black :background ,mordekai-yellow-1))))
   `(show-paren-match-face ((t (:foreground ,mordekai-black :background ,mordekai-orange))))
   `(escape-glyph-face ((t (:foreground ,mordekai-orange))))

   ;; Main
   `(font-lock-builtin-face ((t (:foreground ,mordekai-orange))))
   `(font-lock-comment-face ((t (:foreground ,mordekai-gray+1))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,mordekai-gray+1))))
   `(font-lock-constant-face ((t (:foreground ,mordekai-purple))))
   `(font-lock-doc-string-face ((t (:foreground ,mordekai-yellow))))
   `(font-lock-preprocessor-face ((t (:foreground ,mordekai-blue))))
   `(font-lock-reference-face ((t (:foreground ,mordekai-blue))))
   `(font-lock-function-name-face ((t (:foreground ,mordekai-green :bold t))))
   `(font-lock-keyword-face ((t (:foreground ,mordekai-magenta :bold t))))
   `(font-lock-string-face ((t (:foreground ,mordekai-yellow))))
   `(font-lock-type-face ((t (:foreground ,mordekai-cyan :bold t))))
   `(font-lock-variable-name-face ((t (:foreground ,mordekai-purple-light))))
   `(font-lock-warning-face ((t (:foreground ,mordekai-red))))

))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'mordekai)

;; Local Variables:
;; no-byte-compile: t
;; indent-tabs-mode: nil
;; eval: (when (fboundp 'rainbow-mode) (rainbow-mode +1))
;; End:
