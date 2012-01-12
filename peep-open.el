;;; peep-open.el --- PeepOpen plugin for emacs.

;; Author: Irakli Gozalishivili <rfobic@gmail.com> (http://jeditoolkit.com)
;; URL: http://github.com/gozala/peep-open-emacs
;; Version: 0.0.1

;;;###autoload
(defun peep-open ()
  "Uses external PeepOpen GUI Application to quickly jump to a file in the pwd."
  (interactive)
  (let ((root (substring (pwd) 10)))
    (shell-command-to-string
     (format "open 'peepopen://%s?editor=%s'"
             (expand-file-name root) (invocation-name)))))

;;;###autoload
;; Need `osx-key-mode-map' to override
(define-key osx-key-mode-map (kbd "A-o") 'peep-open)

(provide 'peep-open)

;;; peep-open.el ends here