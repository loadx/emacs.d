(provide 'init-defaults)

;; Auto refresh buffers
(global-auto-revert-mode 1)

;; Show keystrokes in progress
(setq echo-keystrokes 0.1)

;; No *scratch* message
(setq initial-scratch-message nil)

;; Remove text in active region if inserting text
(pending-delete-mode t)

;; UTF-8 everywhere
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(setq buffer-file-coding-system 'utf-8)
