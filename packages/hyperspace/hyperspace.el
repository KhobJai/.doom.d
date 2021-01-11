;;; hyperspace.el --- description -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2021 John Wright
;;
;; Author: John Wright <http://github/manjaro>
;; Maintainer: John Wright <john.benjamin.wright@gmail.com>
;; Created: January 09, 2021
;; Modified: January 09, 2021
;; Version: 0.0.1
;; Keywords:
;; Homepage: https://github.com/manjaro/hyperspace
;; Package-Requires: ((emacs 27.1) (cl-lib "0.5"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;  description
;;
;;; Code:

(require 'core-keybinds)
;; Hyper Mappings - Not as Lead Key
(map! :g "H-b" #'previous-buffer)
(map! :g "H-n" #'next-buffer)
(map! :g "H-<left>" #'next-window)
(map! :g "H-<right>" #'previous-window)
(map! :g "H-<up>" #'windmove-up)
(map! :g "H-<down>" #'windmove-down)
(map! :g "H-d" #'ace-delete-window)
(map! :ne "H-s" #'ace-swap-window)
(map! :ne "H-/" #'evilnc-comment-operator)
(map! :ne "H r" #'doom/reload)
(map! :nei "H-y" #'evil-redo)
(map! :nei "H-q" #'doom/escape)

(provide 'hyperspace)
;;; hyperspace.el ends here
