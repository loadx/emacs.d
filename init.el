;;; init

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
 ;; (setq url-proxy-services
 ;; 	(list (cons "http" (getenv "EMACS_HTTP_TUNNEL"))
 ;;              (cons "https" (getenv "EMACS_HTTPS_TUNNEL"))
 ;; 	))

;; (package-initialize)


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
        init-defaults
        init-defuns
        ;init-dired
        init-expand-region
        init-flycheck
        init-ido
        init-keymaps
        init-magit
        init-markdown
        init-modeline
        init-parens
        init-php
        init-projectile
        init-python
        ;init-ruby
        init-session
        init-settings
        ;;; init-snippets
        init-web
        init-yaml
        ;;; init-fic
        init-sql-indent
        init-puppet
        init-go
        init-elixir
        init-yang
        init-nix
		 ))
;;;(require 'server)
;;;(unless (server-running-p)
;;; (server-start))
;;; (setq custom-file "~/.emacs.d/init/init-custom.el")
;;;(load custom-file)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (alchemist elixir-mode yaml-mode yagist web-mode twilight-theme sql-indent smex session s ruby-refactor rubocop rspec-mode rbenv rails-log-mode quelpa puppet-mode php-mode magit ido-vertical-mode ido-ubiquitous grizzl go-projectile go-flycheck go-errcheck flx fic-mode expand-region enh-ruby-mode emmet-mode dired+ diff-hl crontab-mode company-go bundler anzu)))
 '(session-use-package t nil (session)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
