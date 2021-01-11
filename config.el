;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "John Wright"
      user-mail-address "john.benjamin.wright@gmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
;; (setq doom-theme 'doom-one)
(setq doom-theme 'doom-material)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
;;
;; Don't think we need to add any more to config.

(use-package! golden-ratio
  :after-call pre-command-hook
  :config
  (golden-ratio-mode +1)
  ;; Using this hook for resizing windows is less precise than
  ;; `doom-switch-window-hook'.
  (remove-hook 'window-configuration-change-hook #'golden-ratio)
  (add-hook 'doom-switch-window-hook #'golden-ratio))

(defun load-custom-packages
()
    (interactive)
    (load "~/.doom.d/packages/johntrol/johntrol.el")
    (load "~/.doom.d/packages/hyperspace/hyperspace.el")
    )

;; (use-package! johntrol
  ;; :after-call config)

;; (use-package! hyperspace
  ;; :after-call :config)
(require 'which-key)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
;; Shell Pop Vars

 '(shell-pop-term-shell "/bin/zsh")
 '(shell-pop-universal-key "C-T")
 '(shell-pop-window-size 15)
 '(shell-pop-full-span t)
 '(shell-pop-window-position "bottom")
 '(shell-pop-autocd-to-working-dir t)
 '(shell-pop-restore-window-configuration t)
 '(shell-pop-cleanup-buffer-at-process-exit t)


'(setq which-key-idle-delay 0.25)
;; Golden Ratio Vars
;;(;; setq golden-ratio-exclude-modes
;;      '(
;;        ;; "calendar-mode"
;;       org-agenda-mode
;;        "help-mode"
;;        "helpful-mode"
;;         "rxt-help-mode"
;;         "treemacs-mode" ))
;; (setq golden-ratio-exclude-buffer-names
;;      '("*Org tags*"
;;        "*Org todo*"
;;        "*info*"
;;        "*Messages*"))

 ;; Share clipboard wit X11/System
 '(x-select-enable-clipboard t)
 )


;; States
;;   :n  normal
;;   :v  visual
;;   :i  insert
;;   :e  emacs
;;   :o  operator
;;   :m  motion
;;   :r  replace
;;   :g  global  (binds the key without evil `current-global-map')

;; j (for John!) Shortcuts Mappings
;; (map! :ne "SPC j l" #'check-shortcuts-loaded)
;; (map! :ne "SPC j t" #'shell-pop)
;; (map! :ne "SPC j g" #'golden-ratio-mode)
;; (map! :ne "SPC j e" #'open-custom-config)
;; ;; (map! :ne "SPC j p" #'shell-pop)


;; ;; ;; Navigation Shortcuts
;; (map! :ne "SPC <right>" #'evil-window-right)
;; (map! :ne "SPC <left>" #'evil-window-left)
;; (map! :ne "SPC <up>" #'evil-window-up)
;; (map! :ne "SPC <down>" #'evil-window-down)

;; ;; Spacemacs mappings
;; (map! :ne "SPC f t" #'+treemacs/toggle)
(load-custom-packages)


;; Number Mappings - They are free so will use?
;; (map! :ne "SPC 1 n" #'tab-next)


;; Hyper Mappings - Not as Lead Key
;; (map! :g "H-b" #'previous-buffer)
;; (map! :g "H-n" #'next-buffer)
;; (map! :g "H-<left>" #'next-window)
;; (map! :g "H-<right>" #'previous-window)
;; (map! :ne "H-s" #'ace-swap-window)
;; (map! :ne "H-/" #'evilnc-comment-operator)
;; (map! :ne "H-d r" #'doom/reload)
;; (map! :nei "H-y" #'evil-redo)
;; (map! :g "H-R" #'doom/reload)
;; (map! :g "e" :prefix "H" #'doom/escape)
;;(evil-define-key 'insert 'global (kbd "e") (self-insert-command 1 "e"))

;; (local-unset-key "e")


;;(global-set-key (kbd "e") (lambda () (interactive) (self-insert-command 1 "e")))


;; Python Config
(require 'py-autopep8)
(require 'elpy)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save); Enable Flycheck

(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

;; Use IPython for REPL
(setq python-shell-interpreter "jupyter"
      python-shell-interpreter-args "console --simple-prompt"
      python-shell-prompt-detect-failure-warning nil)
(add-to-list 'python-shell-completion-native-disabled-interpreters
             "jupyter")

;;; config ends here
