;;; helm-gtags --- Summary
;;; Commentary:
;;; Code:

(require 'helm-gtags)

(custom-set-variables
;'(helm-gtags-path-style 'relative)
 '(helm-gtags-ignore-case t)
 '(helm-gtags-auto-update t))

(add-hook 'helm-gtags-mode-hook
	  '(lambda ()
	     ;; do what i mean
	     (local-set-key (kbd "M-.") 'helm-gtags-dwim)
	     ;;入力されたタグの定義元へジャンプ
	     (local-set-key (kbd "M-t") 'helm-gtags-find-tag)
	     ;;入力タグを参照する場所へジャンプ
	     (local-set-key (kbd "M-r") 'helm-gtags-find-rtag)
	     ;;入力したシンボルを参照する場所へジャンプ
	     (local-set-key (kbd "M-s") 'helm-gtags-find-symbol)
	     ;;タグ一覧からタグを選択し, その定義元にジャンプする
	     (local-set-key (kbd "M-l") 'helm-gtags-select)
	     ;;ジャンプ前の場所に戻る
	     (local-set-key (kbd "M-,") 'helm-gtags-pop-stack)
	     (local-set-key (kbd "M-g M-p") 'helm-gtags-parse-file)
	     (local-set-key (kbd "C-c <") 'helm-gtags-previous-history)
             (local-set-key (kbd "C-c >") 'helm-gtags-next-history)))

;;; hook for gtags
(add-hook 'c-mode-common-hook 'gtags-mode)
(add-hook 'c++-mode-hook 'gtags-mode)
(add-hook 'java-mode-hook 'gtags-mode)
(add-hook 'asm-mode 'gtags-mode)

(provide 'helm-gtags)
;;; helm-gtags-conf ends here
