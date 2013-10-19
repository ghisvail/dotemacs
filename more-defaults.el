;; more-defaults.el

;; don't beep
(setq visible-bell t)

;; from http://whattheemacsd.com/init.el-03.html
;; Save point position between sessions
;(require 'saveplace)
;(setq-default save-place t)
(setq save-place-file (expand-file-name ".places" user-emacs-directory))

;; enable short answer to yes-no questions
(defalias 'yes-or-no-p 'y-or-n-p)

;; some starter-kit v2 goodies
;; intelligent line-wrapping
(defun esk-local-comment-auto-fill ()
  (set (make-local-variable 'comment-auto-fill-only-comments) t)
  (auto-fill-mode t))

(add-hook 'prog-mode-hook 'esk-local-comment-auto-fill)

;; display column numbers
(defun esk-local-column-number-mode ()
  (make-local-variable 'column-number-mode)
  (column-number-mode t))

(add-hook 'prog-mode-hook 'esk-local-column-number-mode)

;; highlight current line
(defun esk-turn-on-hl-line-mode ()
  (when (> (display-color-cells) 8)
    (hl-line-mode t)))

(add-hook 'prog-mode-hook 'esk-turn-on-hl-line-mode)

(provide 'more-defaults)
;;; more-defaults.el ends here
