;(set-default-font "-outline-Consolas-normal-r-normal-normal-14-97-96-96-c-*-utf8")
(set-default-font "-outline-Consolas-normal-r-normal-normal-14-*-*-*-c-*-utf8")
(tool-bar-mode 0)

;; Theme
(add-to-list 'load-path "~/.emacs.d/color-theme-6.6.0")
(add-to-list 'load-path "~/.emacs.d/color-theme-6.6.0/themes")

(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-classic)))


;; Recent files
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)


;; Display column number
(column-number-mode 1)


;; Disable scroll bar
(scroll-bar-mode 0)


;; Disable bell
(setq visible-bell t)


;; Vertical line at 80 symbols
(add-to-list 'load-path "~/.emacs.d")
(require 'fill-column-indicator)
(setq-default fill-column 80)
(setq fci-style 'rule)
(setq fci-rule-width 1)
; Enable it for all files
(define-globalized-minor-mode global-fci-mode fci-mode (lambda () (fci-mode t)))
(global-fci-mode t)


;; Server, open files in already running instance
(server-start)

;; Brief prompts
(fset 'yes-or-no-p 'y-or-n-p)

;; Replace selection
(delete-selection-mode)