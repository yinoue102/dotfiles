;;
;; ~/.emacs.d/cc-mode.el
;;


;;拡張子の対応
(setq auto-mode-alist
      (append
       '(
	 ("\\.c$"    . c-mode)
	 ("\\.h$"    . c-mode)
	 ("\\.java$" . java-mode)
	 ("\\.c\\+\\+$" . c++-mode)
	 ("\\.cpp$"  . c++-mode)
	 ("\\.cc$"   . c++-mode)
	 ("\\.hh$"   . c++-mode)
	 )
       auto-mode-alist))

(add-hook
 'c-mode-common-hook
 '(lambda ()
    ;;デフォルトのスタイル
    ;(c-set-style "CC-MODE")
    (c-set-style "gnu")


    ;;RET(\C-m)で改行かつインデント
    ;(local-set-key "\C-m" 'newline-and-indent)
    ;;C-jで改行のみ
    ;(local-set-key "\C-j" 'newline)

    ;;いつでも TAB でインデント
    (setq c-tab-always-indent t)

    ;;auto-newline(";"，"{"，"}"入力時に自動改行)
    ;(c-toggle-auto-state 1)
    ;;hungry-delete(backspace時にカーソルの左の空白をすべて削除)
    ;(c-toggle-hungry-state 1)
    ;;gdbデバッガ
    (define-key c-mode-map "\C-cd" 'gdb)

    ;;CVSのLog挿入
    (define-key c-mode-map "\C-cl" 'cvs-cc-log)

    ;;インデント情報を常に表示
    ;(setq c-echo-syntactic-information-p t)

    ;;インデントの設定
    ;(setq c-basic-offset 4)
    ;(setq c-comment-only-line-offset . 2)
    (c-set-offset 'case-label 2)
    )
 )

;; auto-complete
(require 'auto-complete)
(global-auto-complete-mode t)
(setq ac-use-menu-map t)       ;; 補完メニュー表示時にC-n/C-pで補完候補選択
(provide 'cc-mode)
;;; cc-mode.el ends here
