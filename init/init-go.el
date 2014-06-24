(provide 'init-go)

(quelpa 'go-mode)

(setq brew_path (getenv "HOMEBREWPATH"))
(setq go_version (getenv "GOVERSION"))

;; calc path to go-mode-load
(setq go_emacs_file
 (concat
   (file-name-as-directory brew_path) "Cellar/go/"
   (file-name-as-directory go_version) "libexec/misc/emacs"
  )
)

(setq go_emacs_file nil)
(if go_emacs_file (require go_emacs_file))
(quelpa 'go-errcheck)

(eval-after-load "go-mode"
  '(progn

     (add-hook 'before-save-hook #'gofmt-before-save)
     (add-to-list 'flycheck-checkers 'go-gofmt)))

(add-hook 'go-mode-hook (lambda ()
                          (set (make-local-variable 'company-backends) '(company-go))
                          (company-mode)))
