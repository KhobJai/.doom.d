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



;; Navigation Shortcuts
(map! :ne "SPC <right>" #'evil-window-right)
(map! :ne "SPC <left>" #'evil-window-left)
(map! :ne "SPC <up>" #'evil-window-up)
(map! :ne "SPC <down>" #'evil-window-down)


;; SPC j mappings
;; (map! :ne "SPC j l" #'check-shortcuts-loaded)
;; (map! :ne "SPC j t" #'+treemacs/toggle)
;; (map! :ne "SPC j g" #'golden-ratio-mode)
;; (map! :ne "SPC j e" #'open-custom-config)
;; (map! :ne "SPC j p" #'shell-pop)
;; Other mappings
;;
(map! :ne "SPC f t" #'neotree-toggle)

(map! :nei "SPC d" #'+workspace/close-window-or-workspace)

(map! :i "C-d"
      (cmd!
            (kill-line)
            (forward-line)))
;;(check-shortcuts-loaded)

(provide 'shortcuts)

(eval-buffer)
;;; EOF

