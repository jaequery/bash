; set defaults
(setq backup-inhibited t) ; disable backup
(setq auto-save-default nil) ; disable auto save
(defalias 'yes-or-no-p 'y-or-n-p) ; y/n prompts
(global-linum-mode t) ; show line number
(setq linum-format "%d ")

;; package repositories
 (setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                           ("marmalade" . "http://marmalade-repo.org/packages/")
                           ("melpa" . "http://melpa.milkbox.net/packages/")))
;; load .emacs.d
(add-to-list 'load-path "~/.emacs.d")

; set major modes
;; php-mode
(global-font-lock-mode 1)
(require 'php-mode)
(setq auto-mode-alist
      (append '(("\.php|\.phtml$" . php-mode)
		("\.module$" . php-mode))
	      auto-mode-alist))
(setq c-basic-offset 4)
(setq tab-width 4
      indent-tabs-mode nil)
(setq fill-column 78)
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(c-set-offset 'case-label '+)
(c-set-offset 'arglist-close 0)
(c-set-offset 'arglist-intro '+)
(c-set-offset 'arglist-cont-nonempty 'c-lineup-math)

;; php-syntax checker
(require 'flymake)
(defun flymake-php-init ()
  (let* ((temp (flymake-init-create-temp-buffer-copy 'flymake-create-temp-inplace))
	  (local (file-relative-name temp (file-name-directory buffer-file-name))))
    (list "php" (list "-f" local "-l"))))
(add-to-list 'flymake-err-line-patterns '("\\(Parse\\|Fatal\\) error: +\\(.*?\\) in \\(.*?\\) on line \\([0-9]+\\)$" 3 4 nil 2))
(add-to-list 'flymake-allowed-file-name-masks '("\\.php$" flymake-php-init))
(add-to-list 'flymake-allowed-file-name-masks '("\\.php5$" flymake-php-init))
(add-to-list 'flymake-allowed-file-name-masks '("\\.phtml$" flymake-php-init))
(add-to-list 'flymake-allowed-file-name-masks '("\\.inc$" flymake-php-init))
(add-to-list 'flymake-allowed-file-name-masks '("\\.tpl$" flymake-php-init))
(add-hook 'php-mode-hook (lambda () (flymake-mode 1)))

;; multi-web-mode
(require 'multi-web-mode)
   (setq mweb-default-major-mode 'html-mode)
   (setq mweb-tags '((php-mode "<\\?php\\|<\\? \\|<\\?=" "\\?>")
                      (js-mode "<script +\\(type=\"text/javascript\"\\|language=\"javascript\"\\)[^>]*>" "</script>")
                      (css-mode "<style +type=\"text/css\"[^>]*>" "</style>")))
   (setq mweb-filename-extensions '("php" "htm" "html" "ctp" "phtml" "php4" "php5" "tpl"))
   (multi-web-global-mode 1)

;; ido-mode
(setq ido-enable-flex-matching t)
(setq ido-use-virtual-buffers t)
(setq ido-ignore-buffers '("^\*Messages\*"))
(setq ido-ignore-buffers '("^\*scratch\*"))
(setq ido-everywhere t)
(ido-mode t)
(defalias 'list-buffers 'ibuffer)

; packages
;; magit
(eval-after-load 'magit
  '(progn
     (set-face-foreground 'magit-diff-add "green3")
     (set-face-foreground 'magit-diff-del "red3")
     (when (not window-system)
       (set-face-background 'magit-item-highlight "black"))))

; jaequery
;; faster point movement
(defun jae-move-up ()
  (interactive)
  (recenter)
  (previous-line 2))
(defun jae-move-down ()
  (interactive)
  (recenter)
  (next-line 2))
(global-set-key "\M-\C-p" 'jae-move-up)
(global-set-key "\M-\C-n" 'jae-move-down)

;; move between buffers
(defun next-user-buffer ()
  (interactive)
  (next-buffer)
  (let ((i 0))
    (while (and (string-match "^*" (buffer-name)) (< i 50))
      (setq i (1+ i)) (next-buffer) )))

(defun previous-user-buffer ()
  (interactive)
  (previous-buffer)
  (let ((i 0))
    (while (and (string-match "^*" (buffer-name)) (< i 50))
      (setq i (1+ i)) (previous-buffer) )))
(global-set-key "\M-N" 'next-user-buffer)
(global-set-key "\M-P" 'previous-user-buffer)

; package settings
(show-paren-mode t) ; show matching parenthesis

; misc
(delete-selection-mode t)
(transient-mark-mode t)
(setq x-select-enable-clipboard t)
