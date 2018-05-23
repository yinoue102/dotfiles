
;; base setting
;; color set
(global-font-lock-mode 1)

;; back space -> ctrl+h
(keyboard-translate ?\C-h ?\C-?)

;; Cask setting load for Mac and Linux
(when (or (require 'cask "~/.cask/cask.el" t)
	  (require 'cask nil t))
    (cask-initialize))
;; do not make backup files
(setq make-backup-files nil)

;; helm
(load "~/.emacs.d/helm")

;; cc-mode 
(load "~/.emacs.d/cc-mode")

;; coding
(require 'yasnippet)
(require 'flycheck)
