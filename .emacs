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
