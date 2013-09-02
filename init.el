
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
;; (fullscreen-mode)


;; ------------------------------------------------------------------------------
;; Setup IDO mode
;; ------------------------------------------------------------------------------
(require 'ido)
(ido-mode 1)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)

;; ------------------------------------------------------------------------------
;; Enable global line number mode
;; ------------------------------------------------------------------------------
(global-linum-mode 1)


;; ------------------------------------------------------------------------------
;; Setup GoLang Mode
;; ------------------------------------------------------------------------------
(add-to-list 'load-path "~/.emacs.d/go/")
(require 'go-mode)
;; ------------------------------------------------------------------------------
;; Setup Org Mode
;; ------------------------------------------------------------------------------
(require 'org)

(setq org-todo-keywords
 '((sequence "TODO" "IN-PROGRESS" "WAITING" "DONE")))

(setq org-default-notes-file (concat org-directory "/todo.org"))

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)


;; ;; ------------------------------------------------------------------------------
;; ;; Add Gmail Access
;; ;; ------------------------------------------------------------------------------
;; (add-to-list 'gnus-secondary-select-methods '(nnimap "gmail"
;;                                   (nnimap-address "imap.gmail.com")  ; it could also be imap.googlemail.com if that's your server.
;;                                   (nnimap-server-port 993)
;;                                   (nnimap-stream ssl)))

;; (setq message-send-mail-function 'smtpmail-send-it
;;       smtpmail-starttls-credentials '(("smtp.googlemail.com" 465 nil nil))
;;       smtpmail-auth-credentials '(("smtp.googlemail.com" 465 "guy.vandenberg@microsmart.co.za" nil))
;;       smtpmail-default-smtp-server "smtp.googlemail.com"
;;       smtpmail-smtp-server "smtp.googlemail.com"
;;       smtpmail-smtp-service 465
;;       smtpmail-local-domain "microsmart.co.za")



;; ------------------------------------------------------------------------------
;; add ruby load path
(add-to-list 'load-path "~/.emacs.d/ruby/")

;; ------------------------------------------------------------------------------
;; enable ruby tools mode
(ruby-tools-mode)

;; ------------------------------------------------------------------------------
;; start rsense
;;(setq rsense-home "/opt/rsense-0.3")
;;(add-to-list 'load-path (concat rsense-home "/etc"))
;; (require 'rsense)


;; ------------------------------------------------------------------------------
;; get pry running
;;(add-to-list 'load-path "~/.emacs.d/ruby/emacs-pry")
;;(require 'pry)
;;(global-set-key [S-f9] 'pry-intercept)
;;(global-set-key [f9] 'pry-intercept-rerun)

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
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("bb1eaf74fcfa24c8868078cac73abba4138d0ddb7f11f44d7e8f849edbf8b912" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
