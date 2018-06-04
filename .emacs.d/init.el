;;
;; el-get setting
(when load-file-name
  (setq user-emacs-directory (file-name-directory load-file-name)))

(add-to-list 'load-path (locate-user-emacs-file "el-get/el-get"))
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
        (eval-print-last-sexp)))
;; load install package list
(load (locate-user-emacs-file "Cask2ElGet"))

;; base setting
;; color set
(global-font-lock-mode 1)

;; back space -> ctrl+h
(keyboard-translate ?\C-h ?\C-?)

;; Cask setting load for Mac and Linux
;;(when (or (require 'cask "~/.cask/cask.el" t)
;;	  (require 'cask nil t))
;;    (cask-initialize))

;; do not make backup files
(setq make-backup-files nil)

;; helm
(load "~/.emacs.d/helm")

;; cc-mode 
(load "~/.emacs.d/cc-mode")

;; coding
(require 'yasnippet)
(require 'flycheck)
