;;; shortcuts.el --- Shortcuts and other stuff I;ve added to Doom Emacs.

;;; Code:

;;(require 'core-keybinds)

(map! :ne "SPC <right>" #'evil-window-right)
(map! :ne "SPC <left>" #'evil-window-left)
(map! :ne "SPC <up>" #'evil-window-up)
(map! :ne "SPC <down>" #'evil-window-down)

(map! :ne "C-'" #'shell-pop)

(defun check-shortcuts-loaded
          ()
  (interactive)
(message "John's Shortctus Loaded"))

;; SPC j mappings
(map! :ne "SPC j l" #'check-shortcuts-loaded)
(map! :ne "SPC j t" #'+treemacs/toggle)
(map! :ne "SPC j g" #'golden-ratio-mode)
;; Other mappings
(map! :ne "SPC f t" #'neotree-toggle)

(map! :ne "SPC d" #'+workspace/close-window-or-workspace)

(check-shortcuts-loaded)

(provide 'shortcuts)

;;; EOF
