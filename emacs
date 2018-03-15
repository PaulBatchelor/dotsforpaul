;; -*- mode: elisp -*-

(require 'package)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))

(add-to-list 'load-path "~/.emacs.d/lisp/")
 
(setq package-enable-at-startup nil)
(package-initialize)
    
;; Disable the splash screen (to enable it agin, replace the t with 0)
(setq inhibit-splash-screen t)

;; Enable transient mark mode
(transient-mark-mode 1)

;;;;Org mode configuration
;; Enable Org mode
(require 'org)
;; Make Org mode work with files ending in .org
;; (add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
;; The above is the default in recent emacsen

;; Some keybindings from David O'Toole Tutorial
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(define-key global-map "\C-c\C-c" 'org-toggle-checkbox)
; override keybindings in org-agenda mode
(require 'org-agenda)
(define-key org-agenda-mode-map "j" 'org-agenda-next-line)
(define-key org-agenda-mode-map "k" 'org-agenda-previous-line)
(setq org-log-done t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files
        (quote
         ("~/proj/TODO/TODO.org" "~/proj/TODO/muviklabs.org" "~/proj/TODO/palestrina.org")))
 '(package-selected-packages
        (quote
         (fill-column-indicator w3m w3 org-link-minor-mode evil-visual-mark-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


; Automatically append files 
(setq org-agenda-files
      (append (file-expand-wildcards "~/proj/TODO/*.org")))

 
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)
(setq c-default-style "linux") 
(setq c-basic-offset 4) 
(c-set-offset 'comment-intro 0)
(setq evil-want-C-u-scroll t) 
(evil-mode t)
(setq linum-format "%d ")

; remap buffer-list to buffer-menu
(global-set-key (kbd "C-x C-b") 'buffer-menu)

; color marker
; (require 'fill-column-indicator)
; (setq fci-rule-column 80)
; (setq fci-rule-character 124)
; (fci-mode t)

(setq-default fill-column 80)
; darkroom: downloaded from https://github.com/joaotavora/darkroom
;(require 'darkroom)
; Use darkroom with CWEB .w files by default
;(add-to-list 'auto-mode-alist '("\\.w\\'" . darkroom-tentative-mode))


(require 'olivetti)

(setq olivetti-hide-mode-line t)
