;;; flycheck.el --- Summary:
;;; update: 2018/06/12
;;; Commentary:
;;; setting for flycheck

;;; Code:
(require 'flycheck)

(global-flycheck-mode)

(define-key global-map (kbd "\C-cn") 'flycheck-next-error)
(define-key global-map (kbd "\C-cp") 'flycheck-previous-error)
(define-key global-map (kbd "\C-cd") 'flycheck-list-errors)

(add-hook 'c++-mode-hook (lambda()
			   (setq flycheck-gcc-language-standard "c++11")
		           (setq flycheck-clang-language-standard "c++11")))
(provide 'flycheck)
;;; flycheck ends here
