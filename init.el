;;; init

(add-to-list 'load-path (expand-file-name "~/.emacs.d/init"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp"))

(mapc 'require
      '(
	;;; Always bootstrap first
        init-bootstrap

	;;; These all use the (quelpa) form.
        init-ack
        init-anzu
        init-appearance
        init-completion
        init-crontab
        init-defuns
        init-dired
        init-expand-region
        init-flycheck
        init-go
        init-ido
        init-keymaps
        init-magit
        init-markdown
        init-modeline
        init-parens
        init-php
        init-projectile
        init-python
        init-ruby
        init-session
        init-settings
        ;;; init-snippets
        init-web
        init-yaml
        init-fic
        init-sql-indent
		 ))
(require 'server)
(unless (server-running-p)
  (server-start))
(setq custom-file "~/.emacs.d/init/init-custom.el")
(load custom-file)
