;;; yatex --- Summary
;;; Commentary:

;;; Code:
;; run yatex mode when open .tex file
(require 'yatex)
(setq auto-mode-alist
      (cons (cons "\\.tex$" 'yatex-mode) auto-mode-alist))
(autoload 'yatex-mode "yatex" "Yet Another LaTeX mode" t)
;; use utf-8 on yatex mode
(setq YaTeX-kanji-code 4)
;; disable auto-start new line
(add-hook 'yatex-mode-hook '(lambda () (auto-fill-mode -1)))
;; aspell auto spell check
(mapc
 (lambda (hook)(add-hook hook '(lambda () (flyspell-mode 1))))
 '(yatex-mode-hook))
(provide 'yatex)
;;; yatex.el ends here
