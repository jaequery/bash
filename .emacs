;disable backup
(setq backup-inhibited t)
;disable auto save
(setq auto-save-default nil)

(add-to-list 'load-path "~/.emacs.d")

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

