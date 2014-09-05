(provide 'init-appearance)

(quelpa '(twilight-theme
	  :repo "developernotes/twilight-theme"
	  :fetcher github))

(quelpa 'dash)
(require 'dash)

(load-theme 'twilight t)
(menu-bar-mode -1)
(custom-theme-set-faces
 'twilight
 '(font-lock-warning-face ((t (:foreground "yellow"))))
)
