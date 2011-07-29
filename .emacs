(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(font-use-system-font t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "white" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 83 :width normal :foundry "unknown" :family "DejaVu Sans Mono")))))

(load "~/.emacs.d/haskell-mode/haskell-site-file")
(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "~/.emacs.d/pymacs")
(add-to-list 'load-path "~/.emacs.d/python-mode")
(add-to-list 'load-path "~/.emacs.d/color-theme-6.6.0")

(require 'egg)

(require 'auto-complete)
(global-auto-complete-mode t)

(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/snippets")

(require 'color-theme)
(color-theme-initialize)
(color-theme-charcoal-black)

(require 'actionscript-mode)

(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)

(setq auto-mode-alist (cons '("\\.as$" . actionscript-mode) auto-mode-alist))

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)

(load-library "init_python")
(setq auto-mode-alist (cons '("\\.sage$" . python-mode) 
auto-mode-alist))
