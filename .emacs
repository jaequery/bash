;jmodi
(global-set-key (kbd "C-u") 'scroll-down-command)
(global-set-key (kbd "C-j") 'forward-word)
(global-set-key (kbd "C-h") 'backward-word)

;disable backup
(setq backup-inhibited t)

;disable auto save
(setq auto-save-default nil)

;load .emacs.d
(add-to-list 'load-path "~/.emacs.d")

; load php mode
(global-font-lock-mode 1)
(require 'php-mode)
(setq auto-mode-alist
      (append '(("\.php|\.phtml$" . php-mode)
		("\.module$" . php-mode))
	      auto-mode-alist))
(setq c-basic-offset 4)
(setq indent-tabs-mode nil)
(setq fill-column 78)
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(c-set-offset 'case-label '+)
(c-set-offset 'arglist-close 0)
(c-set-offset 'arglist-intro '+)
(c-set-offset 'arglist-cont-nonempty 'c-lineup-math)

;multi-web-mode
(require 'multi-web-mode)
   (setq mweb-default-major-mode 'html-mode)
   (setq mweb-tags '((php-mode "<\\?php\\|<\\? \\|<\\?=" "\\?>")
                      (js-mode "<script +\\(type=\"text/javascript\"\\|language=\"javascript\"\\)[^>]*>" "</script>")
                      (css-mode "<style +type=\"text/css\"[^>]*>" "</style>")))
   (setq mweb-filename-extensions '("php" "htm" "html" "ctp" "phtml" "php4" "php5"))
   (multi-web-global-mode 1)

;screens
(defun window-half-height ()
  (max 1 (/ (1- (window-height (selected-window))) 2)))

(defun scroll-up-half ()
  (interactive)
  (scroll-up (window-half-height)))

(defun scroll-down-half ()
  (interactive)
  (scroll-down (window-half-height)))

(global-set-key [next] 'scroll-up-half)
(global-set-key [prior] 'scroll-down-half)


;ido-mode on
(setq ido-enable-flex-matching t)
  (setq ido-everywhere t)
  (ido-mode 1)

;elpa
 (setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                           ("marmalade" . "http://marmalade-repo.org/packages/")
                           ("melpa" . "http://melpa.milkbox.net/packages/")))
;magit
;; change magit diff colors
(eval-after-load 'magit
  '(progn
     (set-face-foreground 'magit-diff-add "green3")
     (set-face-foreground 'magit-diff-del "red3")
     (when (not window-system)
       (set-face-background 'magit-item-highlight "black"))))

;macosx
(setq mac-command-modifier 'meta)

;navigation
;; Faster point movement
(global-set-key "\M-\C-p"
  '(lambda () (interactive) (previous-line 5)))
(global-set-key "\M-\C-n"
  '(lambda () (interactive) (next-line 5)))
