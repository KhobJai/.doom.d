;;; johntrol.el --- description -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2021 John Wright
;;
;; Author: John Wright <http://github/manjaro>
;; Maintainer: John Wright <john.benjamin.wright@gmail.com>
;; Created: January 09, 2021
;; Modified: January 09, 2021
;; Version: 0.0.1
;; Keywords:
;; Homepage: https://github.com/manjaro/johntrol
;; Package-Requires: ((emacs 27.1) (cl-lib "0.5"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;  description
;;
;;; Code:


;; Functions
(defun johntrol-is-loaded
          ()
  (interactive)
(message "Johntrol Loaded"))

(defun edit-johntrol
    ()
  "Opens this file for editing"
 (interactive)
 (find-file "~/.doom.d/packages/johntrol/johntrol.el"))


;; States
;;   :n  normal
;;   :v  visual
;;   :i  insert
;;   :e  emacs
;;   :o  operator
;;   :m  motion
;;   :r  replace
;;   :g  global  (binds the key without evil `current-global-map')

(require 'core-keybinds)

(map! :ne "SPC j ?" #'johntrol-is-loaded)
(map! :ne "SPC j t" #'shell-pop)
(map! :ne "SPC j g" #'golden-ratio-mode)
(map! :ne "SPC j e" #'edit-johntrol)
(map! :ne "SPC j l" #'doom/toggle-line-numbers)
(map! :ne "SPC j c" #'doom/copy-buffer-contents)
(map! :ne "SPC j 1" #'treemacs)
(map! :ne "SPC f t" #'treemacs)


;; Navigation Shortcuts
(map! :ne "SPC <right>" #'evil-window-right)
(map! :ne "SPC <left>" #'evil-window-left)
(map! :ne "SPC <up>" #'evil-window-up)
(map! :ne "SPC <down>" #'evil-window-down)

;; Spacemacs mappings
(map! :ne "SPC f t" #'+treemacs/toggle)


;; Number Mappings - They are free so will use?
(map! :ne "SPC 1 n" #'tab-next)

(provide 'johntrol)
;;; johntrol.el ends here
