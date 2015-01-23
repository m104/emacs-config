(message "** Loading user-ruby.el...")

(user-ensure-packages '(ruby-tools inf-ruby))

;; common ruby file detection
(let ((patterns
        '( "\\.rake\\'" "Rakefile\\'" "\\.gemspec\\'" "\\.ru\\'" "Gemfile\\'"
          "Guardfile\\'" "Capfile\\'" "\\.thor\\'" "\\.rabl\\'" "Thorfile\\'"
          "Vagrantfile\\'" "\\.jbuilder\\'" "Podfile\\'" "\\.podspec\\'"
          "Puppetfile\\'" "Berksfile\\'" "Appraisals\\'")))
  (dolist (pattern patterns)
    (add-to-list 'auto-mode-alist
                 `(,pattern . ruby-mode))))

(provide 'user-ruby)
