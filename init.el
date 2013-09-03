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
;; Set default tab size to 2 spaces
;; ------------------------------------------------------------------------------
(setq default-tab-width 2) 

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


;; ------------------------------------------------------------------------------
;; add ruby load path
;; ------------------------------------------------------------------------------
(add-to-list 'load-path "~/.emacs.d/ruby/")

;; ------------------------------------------------------------------------------
;; enable ruby tools mode
(ruby-tools-mode)

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
 '(custom-safe-themes (quote ("bb1eaf74fcfa24c8868078cac73abba4138d0ddb7f11f44d7e8f849edbf8b912" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default))))
(custom-set-faces )

;; ------------------------------------------------------------------------------
;; Setup Email
;; ------------------------------------------------------------------------------
(add-to-list 'load-path "/usr/share/emacs/site-lisp/mu4e/")
(require 'mu4e)

;; default
(setq mu4e-maildir "~/Maildir")
(setq mu4e-drafts-folder "/[Gmail].Drafts")
(setq mu4e-sent-folder   "/[Gmail].Sent Mail")
(setq mu4e-trash-folder  "/[Gmail].Trash")

;; don't save message to Sent Messages, Gmail/IMAP takes care of this
(setq mu4e-sent-messages-behavior 'delete)

;; setup some handy shortcuts
;; you can quickly switch to your Inbox -- press ``ji''
;; then, when you want archive some messages, move them to
;; the 'All Mail' folder by pressing ``ma''.

(setq mu4e-maildir-shortcuts
      '( ("/INBOX"               . ?i)
         ("/[Gmail].Sent Mail"   . ?s)
         ("/[Gmail].Trash"       . ?t)
         ("/[Gmail].All Mail"    . ?a)))

;; allow for updating mail using 'U' in the main view:
(setq mu4e-get-mail-command "offlineimap")

;; something about ourselves
(setq
 user-mail-address "guy.vandenberg@microsmart.co.za"
 user-full-name  "Guy van den Berg"
 message-signature
 (concat
  "Guy van den Berg\n"
  "Email: guy.vandenberg@microsmart.co.za\n"
  "Cell: +27 84 678 0045\n"
  "\n"))

;; sending mail -- replace USERNAME with your gmail username
;; also, make sure the gnutls command line utils are installed
;; package 'gnutls-bin' in Debian/Ubuntu

(require 'smtpmail)
;; (setq message-send-mail-function 'smtpmail-send-it
;;       starttls-use-gnutls t
;;       smtpmail-starttls-credentials '(("smtp.gmail.com" 587 nil nil))
;;       smtpmail-auth-credentials
;;       '(("smtp.gmail.com" 587 "renws1990@gmail.com" nil))
;;       smtpmail-default-smtp-server "smtp.gmail.com"
;;       smtpmail-smtp-server "smtp.gmail.com"
;;       smtpmail-smtp-service 587)

;; alternatively, for emacs-24 you can use:
(setq message-send-mail-function 'smtpmail-send-it
    smtpmail-stream-type 'starttls
    smtpmail-default-smtp-server "smtp.gmail.com"
    smtpmail-smtp-server "smtp.gmail.com"
    smtpmail-smtp-service 587)

;; don't keep message buffers around
(setq message-kill-buffer-on-exit t)

;; fetch mail every x seconds
(setq mu4e-update-interval 300)

;; enable inline images
(setq mu4e-view-show-images t)
;; use imagemagick, if available
(when (fboundp 'imagemagick-register-types)
      (imagemagick-register-types))

;; enable html view
(setq mu4e-html2text-command  "w3m -dump -T text/html") 
(setq mu4e-view-prefer-html t)
