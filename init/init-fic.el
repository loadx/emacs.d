(provide 'init-fic)

(quelpa 'fic-mode)
(require 'fic-mode)
(add-hook 'after-init-hook 'turn-on-fic-mode)
