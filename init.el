;; init.el

;; turn off mouse interface early
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; no splash screen
(setq inhibit-startup-message t)

;; path management
(add-to-list 'load-path user-emacs-directory)

;; setup package repositories
(require 'package)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

;; sensible defaults from starter-kit v3
(require 'better-defaults)

;; more defaults found in scattered sources
(require 'more-defaults)

;; custom key bindings
(require 'key-bindings) 
