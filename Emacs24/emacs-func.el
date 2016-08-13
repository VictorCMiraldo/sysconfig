;; Some general emacs functionality

;; dulicatesthe current line
(defun duplicate-line()
  (interactive)
  (move-beginning-of-line 1)
  (kill-line)
  (yank)
  (newline)
  (yank)
)

;; Set keyboard
(global-set-key (kbd "C-d") 'duplicate-line)

;; fix old delete
(global-set-key (kbd "<delete>") 'delete-char)


;; Fill-paragraph to C-M-j
(global-set-key (kbd "C-M-j") 'fill-paragraph)
