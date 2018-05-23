;;
;; ~/.emacs.d/cc-mode.el
;;

(require 'cc-mode)

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
;; Error check
;; (add-hook 'c-mode-common-hook 'flycheck-mode)

;; Completion
;;(require 'auto-complete-c-headers)
;;(add-hook 'c++-mode-hook '(setq ac-sources (append ac-sources '(ac-source-c-headers))))
;;(add-hook 'c-mode-hook '(setq ac-sources (append ac-sources '(ac-source-c-headers))))

;;(require 'auto-complete-clang-async)
;;
;;(defun ac-cc-mode-setup ()
;;  (setq ac-clang-complete-executable "~/.emacs.d/el-get/repo/clang-complete-async/clang-complete")
;;  (setq ac-sources (append ac-sources '(ac-source-clang-async)))
;;  (ac-clang-launch-completion-process))
;;
;;(defun my-ac-config ()
;;  (add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
;;  (add-hook 'auto-complete-mode-hook 'ac-common-setup)
;;  (global-auto-complete-mode t))
;;  (my-ac-config)

;; function-args
;; (require 'function-args)
;;(fa-config-default)
;;
;;(define-key function-args-mode-map (kbd "M-o") nil)
;;(define-key c-mode-map (kbd "C-M-:") 'moo-complete)
;;(define-key c++-mode-map (kbd "C-M-:") 'moo-complete)
;;
;;(custom-set-faces
;; '(fa-face-hint ((t (:background "#3f3f3f" :foreground "#ffffff"))))
;;  '(fa-face-hint-bold ((t (:background "#3f3f3f" :weight bold))))
;;   '(fa-face-semi ((t (:background "#3f3f3f" :foreground "#ffffff" :weight bold))))
;;    '(fa-face-type ((t (:inherit (quote font-lock-type-face) :background "#3f3f3f"))))
;;     '(fa-face-type-bold ((t (:inherit (quote font-lock-type-face) :background "#999999" :bold t)))))
