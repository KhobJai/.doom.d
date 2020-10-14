;;; shortcuts.el --- Shortcuts and other stuff I;ve added to Doom Emacs.

;;; Code:

;; Functions
(defun check-shortcuts-loaded
          ()
  (interactive)
(message "John's Shortcuts Loaded"))

(defun open-custom-config
    ()
  (interactive)
  (find-file "~/.doom.d/packages/john-shortcuts/shortcuts.el"))



;; Navigation Shortcuts
(map! :ne "SPC <right>" #'evil-window-right)
(map! :ne "SPC <left>" #'evil-window-left)
(map! :ne "SPC <up>" #'evil-window-up)
(map! :ne "SPC <down>" #'evil-window-down)

;; (map! :ne "C-'" #'shell-pop)


(require 'shell-pop)
;; SPC j mappings
(map! :ne "SPC j l" #'check-shortcuts-loaded)
(map! :ne "SPC j t" #'+treemacs/toggle)
(map! :ne "SPC j g" #'golden-ratio-mode)
(map! :ne "SPC j e" #'open-custom-config)
(map! :ne "SPC j v" #'shell-pop)
;; Other mappings
;;
(map! :ne "SPC f t" #'neotree-toggle)

(map! :ne "SPC d" #'+workspace/close-window-or-workspace)


(check-shortcuts-loaded)

(provide 'shortcuts)


;;; EOF

