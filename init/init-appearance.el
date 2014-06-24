(provide 'init-appearance)

(quelpa '(twilight-theme
	  :repo "developernotes/twilight-theme"
	  :fetcher github))

(quelpa 'dash)
(require 'dash)

(load-theme 'twilight t)
(menu-bar-mode -1)
