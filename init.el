
(require 'package)

;; ------------------------------------------------------------------------------
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

(package-initialize)

;; ------------------------------------------------------------------------------
;; set the theme
(load-theme 'zenburn t)
(autoload 'color-theme-approximate-on "color-theme-approximate")
(color-theme-approximate-on)

;; ------------------------------------------------------------------------------
;; disable backup
(setq backup-inhibited t)

;; ------------------------------------------------------------------------------
;; full screen mode
(fullscreen-mode)

;; ------------------------------------------------------------------------------
;; add ruby load path
(add-to-list 'load-path "~/.emacs.d/ruby/")

;; ------------------------------------------------------------------------------
;; enable ruby tools mode
(ruby-tools-mode)

;; ------------------------------------------------------------------------------
;; start rsense
(setq rsense-home "/opt/rsense-0.3")
(add-to-list 'load-path (concat rsense-home "/etc"))
;; (require 'rsense)


;; ------------------------------------------------------------------------------
;; get pry running
(add-to-list 'load-path "~/.emacs.d/ruby/emacs-pry")
(require 'pry)
(global-set-key [S-f9] 'pry-intercept)
(global-set-key [f9] 'pry-intercept-rerun)

;; ------------------------------------------------------------------------------
;; manage rvm from inside emacs
(require 'rvm)
(rvm-use-default) 


;; ------------------------------------------------------------------------------
;; Add C-# to add method header
(global-set-key (kbd "C-#")
                (concat 
                 (make-string 2 ?#)
                 (make-string 1 ?\n)
                 (make-string 1 ?#)
                 (make-string 1 ?\n)
                 (make-string 2 ?#)))


;; ------------------------------------------------------------------------------
;; Set indentations to 2 spaces in coffeescript
(defun coffee-custom ()
  "coffee-mode-hook"
  (set (make-local-variable 'tab-width) 2))

(add-hook 'coffee-mode-hook 'coffee-custom)



;; ------------------------------------------------------------------------------
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
