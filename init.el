
(require 'package)

(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)

(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)

(package-initialize)

;; set the theme
(load-theme 'zenburn t)
;(load-theme 'solarized-dark t)
(autoload 'color-theme-approximate-on "color-theme-approximate")
(color-theme-approximate-on)

;; Allow shift arrow to focus window instead of C-x ot
;; (windmove-default-keybindings)

;disable backup
(setq backup-inhibited t)

;; add ruby load path
(add-to-list 'load-path "~/.emacs.d/ruby/")

;; require auto-complete
;;(add-to-list 'load-path "~/.emacs.d/")
;;(require 'init-auto-complete)


; get pry running
(add-to-list 'load-path "~/.emacs.d/ruby/emacs-pry")
(require 'pry)
;; optional suggestions
(global-set-key [S-f9] 'pry-intercept)
(global-set-key [f9] 'pry-intercept-rerun)

; manage rvm from inside emacs
(require 'rvm)
(rvm-use-default) 

; enable rspec mirror mode
; (require 'rspec-mode)

;; Add C-# to add method header
(global-set-key (kbd "C-#")
                (concat 
                (make-string 2 ?#)
                (make-string 1 ?\n)
                (make-string 1 ?#)
                (make-string 1 ?\n)
                (make-string 2 ?#)))


; enable robe
;; (add-hook 'ruby-mode-hook 'robe-mode)


;; Rsense
;; (setq rsense-home "/opt/rsense-0.3")
;; (add-to-list 'load-path (concat rsense-home "/etc"))
;; (require 'rsense)

;; Rsense + Autocomplete
;;(add-hook 'ruby-mode-hook
;;          (lambda ()
;;            (add-to-list 'ac-sources 'ac-source-rsense-method)
;;            (add-to-list 'ac-sources 'ac-source-rsense-constant)))


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
