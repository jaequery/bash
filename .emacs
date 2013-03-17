;jmodi
(global-set-key (kbd "C-u") 'scroll-down-command)
(global-set-key (kbd "C-j") 'forward-word)
(global-set-key (kbd "C-h") 'backward-word)

;vim-mode
;(add-to-list 'load-path "~/.emacs.d/evil") ; only without ELPA/el-get
;(require 'evil)
;(evil-mode 1)
;(setq viper-mode t)
;(require 'viper)
(global-set-key [f6] 'toggle-viper-mode)

;disable backup
(setq backup-inhibited t)
;disable auto save
(setq auto-save-default nil)

;load .emacs.d
(add-to-list 'load-path "~/.emacs.d")

;load php-mode
(require 'php-mode)
(setq c-default-style "bsd"
      c-basic-offset 4)
(require 'multi-web-mode)
(setq mweb-default-major-mode `html-mode)
(setq mweb-tags '((php-mode “<\?php\|<\? \|<\?=” “\?>”)
                  (js-mode “<script +\(type="text/javascript"\|language="javascript"\)[^>]*>” “</script>”)
                  (css-mode “<style +type="text/css"[^>]*>” “</style>”)))
(setq mweb-filename-extensions '(“php” “htm” “html” “ctp” “phtml” “php4” “php5”))
(multi-web-global-mode 1)



;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
;osiefjsei
