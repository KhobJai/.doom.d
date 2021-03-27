;; Python IDE Packages
(package! flycheck)
(package! flyspell)
(package! py-autopep8)
(package! better-defaults)                 ;; Set up some better Emacs defaults
(package! elpy)                            ;; Emacs Lisp Python Environment
(package! flycheck)                        ;; On the fly syntax checking
(package! blacken)                         ;; Black formatting on save
(package! ein)                             ;; Emacs IPython Notebook


;; Config
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


(provide 'custom-lang)
