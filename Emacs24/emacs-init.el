;; My emacs init file. Don't forget to (load "~/config/Emacs24/emacs-init.el") in .emacs.
;;
;;

(add-to-list 'load-path "/home/victor/.emacs.d/elpa/mmm-mode-0.5.4")
(add-to-list 'load-path "/home/victor/.emacs.d/elpa/haskell-mode-13.20")
(add-to-list 'load-path "/home/victor/.emacs.d/elpa/auctex-11.89.4")

(load-file (let ((coding-system-for-read 'utf-8))
                (shell-command-to-string "agda-mode locate")))

(require 'package)
(require 'mmm-auto)
(require 'haskell-mode)

(add-to-list 'auto-mode-alist '("\\.hs$" . haskell-mode))
(add-to-list 'auto-mode-alist '("\\.lhs$" . LaTeX-mode))

;; No electric-indent-mode anywhere!
(when (fboundp 'electric-indent-mode) (electric-indent-mode -1))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(agda2-fontset-name "DejaVu Sans Mono 10")
 '(agda2-program-name "agda")
 '(haskell-literate-default (quote tex))
 '(inhibit-startup-screen t)
 '(tool-bar-mode nil)
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa-stable" . "http://stable.melpa.org/packages/"))))
  '(haskell-process-suggest-remove-import-lines t)
  '(haskell-process-auto-import-loaded-modules t)
  '(haskell-process-log t)
  '(haskell-process-type 'cabal-repl)
  '(safe-local-variable-values (quote ((mmm-classes . literate-haskell-latex))))
)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
  '(agda2-highlight-keyword-face
    ((t (:foreground "brown1"))))
  '(agda2-highlight-string-face
    ((t (:foreground "indian red"))))
  '(agda2-highlight-number-face
    ((t (:foreground "medium purple"))))
  '(agda2-highlight-symbol-face
    ((t (:foreground "gray75"))))
  '(agda2-highlight-primitive-type-face
    ((t (:foreground "SteelBlue2"))))
  '(agda2-highlight-bound-variable-face
    ((t (:foreground "gray75"))))
  '(agda2-highlight-inductive-constructor-face
    ((t (:foreground "SpringGreen3"))))
  '(agda2-highlight-coinductive-constructor-face
    ((t (:foreground "gold"))))
  '(agda2-highlight-datatype-face
    ((t (:foreground "SteelBlue2"))))
  '(agda2-highlight-field-face
    ((t (:foreground "sea green"))))
  '(agda2-highlight-function-face
    ((t (:foreground "SteelBlue2"))))
  '(agda2-highlight-module-face
    ((t (:foreground "slate purple"))))
  '(agda2-highlight-postulate-face
    ((t (:foreground "SteelBlue2"))))
  '(agda2-highlight-primitive-face
    ((t (:foreground "SteelBlue2"))))
  '(agda2-highlight-macro-face
    ((t (:foreground "aquamarine4"))))
  '(agda2-highlight-record-face
    ((t (:foreground "SteelBlue2"))))
  '(agda2-highlight-dotted-face
    ((t (:foreground "gray75"))))
  '(agda2-highlight-operator-face
    ((t (:foreground "gray75"))))
  '(agda2-highlight-error-face
    ((t (:foreground "orange red" :underline t))))
  '(agda2-highlight-unsolved-meta-face
    ((t (:background "yellow"
          :foreground "black"))))
  '(agda2-highlight-unsolved-constraint-face
    ((t (:background "yellow"
          :foreground "black"))))
  '(agda2-highlight-termination-problem-face
    ((t (:background "light salmon"
          :foreground "black"))))
  '(agda2-highlight-incomplete-pattern-face
    ((t (:background "wheat"
          :foreground "black"))))
  '(agda2-highlight-typechecks-face
    ((t (:background "light blue"
          :foreground "black"))))
  '(font-latex-sectioning-5-face 
    ((t (:inherit variable-pitch 
         :foreground "SteelBlue1" 
         :weight bold))))
 )

;; My general emacs functionality
(load "~/config/Emacs24/emacs-func.el")

;; My tagging functions for literate agda
(load "~/config/Emacs24/agda-tag.el")

;; Display line numbers on the left.
(global-linum-mode t)

;; Adds neo-tree and sets f9 to toggle it.
(add-to-list 'load-path "/home/victor/config/Emacs24/neo-tree")
(require 'neotree)
(global-set-key [f9] 'neotree-toggle)

;; Loads color theme
(load-file "~/config/Emacs24/themes/obsidian.el")
;; (load-theme 'obsidian)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Configuring Latex-mode inside Literata Haskell mode
;;

(mmm-add-classes
  '((literate-haskell-latex
    :submode haskell-mode
    :front "^\\\\begin{code}\n"
    :back "^\\\\end{code}"
  )))

(setq mmm-global-mode 'maybe)
(mmm-add-mode-ext-class 'LaTeX-mode nil 'literate-haskell-latex)

;; Now we turn on reftex
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t)

;; I like my TOC vertical
(setq reftex-toc-split-windows-horizontally t)
(setq reftex-toc-keep-other-windows t)
(setq reftex-toc-include-labels t)
(setq reftex-toc-max-level 3)

;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Some haskell-mode functionality
(setq haskell-process-path-cabal "/opt/cabal/1.24/bin/cabal")
(setq haskell-interactive-popup-errors nil)
(eval-after-load 'haskell-mode '(progn
  (define-key haskell-mode-map (kbd "C-c C-l") 'haskell-process-load-or-reload)
  (define-key haskell-mode-map (kbd "C-c C-z") 'haskell-interactive-switch)
  (define-key haskell-mode-map (kbd "C-c C-n C-t") 'haskell-process-do-type)
  (define-key haskell-mode-map (kbd "C-c C-n C-i") 'haskell-process-do-info)
  (define-key haskell-mode-map (kbd "C-c C-n C-c") 'haskell-process-cabal-build)
  (define-key haskell-mode-map (kbd "C-c C-n c") 'haskell-process-cabal)))
(eval-after-load 'haskell-cabal '(progn
  (define-key haskell-cabal-mode-map (kbd "C-c C-z") 'haskell-interactive-switch)
  (define-key haskell-cabal-mode-map (kbd "C-c C-k") 'haskell-interactive-mode-clear)
  (define-key haskell-cabal-mode-map (kbd "C-c C-c") 'haskell-process-cabal-build)
  (define-key haskell-cabal-mode-map (kbd "C-c c") 'haskell-process-cabal)))
