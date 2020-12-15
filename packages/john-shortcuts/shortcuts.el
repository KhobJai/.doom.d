 ;;; shortcuts.el -*- lexical-binding: t; -*-
 ;;; Shortcuts and other stuff I;ve added to Doom Emacs.
 ;;;

;;; Code:

;; Functions
(defun check-shortcuts-loaded
          ()
  (interactive)
(message "John's Shortcuts Loaded"))

(defun open-custom-config
    ()
  "Opens my main custom config file"
 (interactive)
 (find-file "~/.doom.d/packages/john-shortcuts/shortcuts.el"))

(defun replace-all
     ()
  "Replace All Strings by selecting all of the buffer first."
  (evil-goto-first-line)
  (evil-visual-char)
  (evil-goto-line)
  (interactive #'replace-string))

;; eval-buffer already exists! nevermind...
;; (defun eval-whole-buffer
;;     ()
;;   "Evaluates the whole buffer"
;;   (interactive)
;;   ;; (evil-goto-first-line)
;;   ;; (evil-visual-char)
;;   ;; (evil-goto-line)
;;   (+eval/buffer-or-region))

;; (eval-buffer)

(provide 'shortcuts)
