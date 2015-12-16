(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))

(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)

(setq initial-scratch-message "")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("cc60d17db31a53adf93ec6fad5a9cfff6e177664994a52346f81f62840fe8e23" "cb1cf5e453f66d21f5d4decefcca85b945f422bc63f827672ad84e4e139a3b07" "2bed8550c6f0a5ce635373176d5f0e079fb4fb5919005bfa743c71b5eed29d81" "19ba41b6dc0b5dd34e1b8628ad7ae47deb19f968fe8c31853d64ea8c4df252b8" "6c0a087a4f49c04d4002393ffd149672f70e4ab38d69bbe8b39059b61682b61c" "357d5abe6f693f2875bb3113f5c031b7031f21717e8078f90d9d9bc3a14bcbd8" "bed4d169698488b8b5b90f7dbdbaca2e7b9c4a18727adbb7b3ddcb4df0577ce0" default)))
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'nodejs-repl)
(require 'evil)
(evil-mode 1)
(require 'evil-tabs)
(evil-tabs-mode 1)
(require 'twittering-mode)
(require 'nyan-mode)
(nyan-mode 1)
(nyan-start-animation)
(require 'git-gutter)
(require 'js3-mode)

(load "elscreen" "ElScreen" t)
(elscreen-start)
(define-key evil-normal-state-map (kbd "C-w t") 'elscreen-create) ;creat tab
(define-key evil-normal-state-map (kbd "C-w x") 'elscreen-kill) ;kill tab

(define-key evil-normal-state-map "gT" 'elscreen-previous) ;previous tab
(define-key evil-normal-state-map "gt" 'elscreen-next) ;next tab

(require 'sr-speedbar)
(global-set-key (kbd "s-s") 'sr-speedbar-toggle)

(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)

(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
