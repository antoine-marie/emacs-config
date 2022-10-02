;; Personal information
(setq user-full-name "Antoine Marie"
      user-mail-address "antoine.marie3@protonmail.com")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; This is all kinds of necessary
(require 'package)
(setq package-enable-at-startup nil)

(setq package-archives '(("gnu"   . "http://elpa.gnu.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")
			 ))
(package-initialize)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Bootstrapping use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package org
  :ensure t
  :pin gnu)

;;; This is the actual config file. It is omitted if it doesn't exist so emacs won't refuse to launch.
(when (file-readable-p "~/.emacs.d/config.org")
  (org-babel-load-file (expand-file-name "~/.emacs.d/config.org")))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auth-source-save-behavior nil)
 '(org-agenda-files
   '("/home/amarie/BeepBoop/Org/todo.org" "/home/amarie/BeepBoop/Org/anniv.org" "/home/amarie/BeepBoop/Org/livres.org"))
 '(package-selected-packages
   '(org simple-httpd org-roam-bibtex git-gutter-fringe git-gutter magit company-auctex popup-kill-ring doom-themes zenburn-theme rainbow-delimiters auctex-latexmk avy beacon darkburn-theme which-key use-package))
 '(warning-suppress-types '((comp) (use-package) (:warning))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 160 :width normal :foundry "1ASC" :family "xos4 Terminus"))))
 '(fringe ((t (:background "#292b2e")))))
