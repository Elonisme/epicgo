(defun process-markdown-file (static-path)
  "Process a Markdown file to extract src values and execute picgo u."
  (interactive)
  (let ((file-name (buffer-file-name))) ; 获取当前缓冲区的文件名
    (save-excursion
      (goto-char (point-min))
      (while (re-search-forward "{{< figure src=\"\\([^\">]+\\)\" >}}" nil t)
        (let ((src-value (match-string 1)))
          (message "Processing src: %s" src-value)
          (shell-command (format "picgo u %s%s" static-path src-value) nil nil))))))

(defun replace-markdown-string (old-string new-string)
  "Replace a specific string in the current buffer."
  (interactive)
  (save-excursion
    (goto-char (point-min))
    (while (search-forward old-string nil t)
      (replace-match new-string nil t)))
  (message "String replaced."))

(defun epicgo-u ()
  (interactive)
  (process-markdown-file static-path)
  (replace-markdown-string old-string new-string)
  )

(provide 'epicgo)
