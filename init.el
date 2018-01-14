(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-basic-offset 4)
 '(company-frontends
   (quote
    (company-pseudo-tooltip-unless-just-one-frontend company-echo-metadata-frontend company-preview-frontend)))
 '(company-idle-delay 0)
 '(company-require-match nil)
 '(custom-enabled-themes (quote (monokai)))
 '(custom-safe-themes
   (quote
    ("53f97243218e8be82ba035ae34c024fd2d2e4de29dc6923e026d5580c77ff702" default)))
 '(flycheck-display-errors-delay 0)
 '(global-company-mode t)
 '(global-flycheck-mode t)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(neo-smart-open t)
 '(neo-theme (quote icons))
 '(org-from-is-user-regexp "\\<Zizheng Tai\\>")
 '(org-log-done (quote time))
 '(package-selected-packages
   (quote
    (spaceline-all-the-icons spaceline monokai-theme magit flycheck all-the-icons neotree alchemist evil smooth-scrolling)))
 '(require-final-newline t)
 '(scroll-bar-mode nil)
 '(show-trailing-whitespace t)
 '(smooth-scroll-margin 1)
 '(smooth-scrolling-mode t)
 '(spaceline-all-the-icons-hide-long-buffer-path t)
 '(spaceline-all-the-icons-highlight-file-name t)
 '(spaceline-all-the-icons-separator-type (quote arrow))
 '(tab-stop-list (quote (4 8)))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :foreground "#F8F8F2" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 130 :width normal :foundry "nil" :family "Droid Sans Mono for Powerline"))))
 '(custom-face-tag ((t (:inherit variable-pitch :foreground "#6c71c4" :weight normal :height 1.2 :family "Droid Sans Mono for Powerline"))))
 '(custom-group-tag ((t (:inherit variable-pitch :foreground "#268bd2" :height 1.2 :family "Droid Sans Mono for Powerline"))))
 '(custom-group-tag-1 ((t (:inherit variable-pitch :foreground "#dc322f" :height 1.2 :family "Droid Sans Mono for Powerline"))))
 '(custom-variable-tag ((t (:inherit variable-pitch :foreground "#2aa198" :height 1.2 :family "Droid Sans Mono for Powerline"))))
 '(org-level-1 ((t (:inherit variable-pitch :foreground "#cb4b16" :height 1.3 :family "Droid Sans Mono for Powerline"))))
 '(org-level-2 ((t (:inherit variable-pitch :foreground "#859900" :height 1.2 :family "Droid Sans Mono for Powerline"))))
 '(org-level-3 ((t (:inherit variable-pitch :foreground "#268bd2" :height 1.15 :family "Droid Sans Mono for Powerline"))))
 '(org-level-4 ((t (:inherit variable-pitch :foreground "#b58900" :height 1.1 :family "Droid Sans Mono for Powerline"))))
 '(org-level-5 ((t (:inherit variable-pitch :foreground "#2aa198" :family "Droid Sans Mono for Powerline"))))
 '(org-level-6 ((t (:inherit variable-pitch :foreground "#859900" :family "Droid Sans Mono for Powerline"))))
 '(org-level-7 ((t (:inherit variable-pitch :foreground "#dc322f" :family "Droid Sans Mono for Powerline"))))
 '(org-level-8 ((t (:inherit variable-pitch :foreground "#268bd2" :family "Droid Sans Mono for Powerline")))))

(require 'company)
(eval-after-load 'company
  '(progn
     (define-key company-active-map (kbd "TAB") 'company-complete-common-or-cycle)
     (define-key company-active-map (kbd "<tab>") 'company-complete-common-or-cycle)))
(eval-after-load 'company
  '(progn
     (define-key company-active-map (kbd "S-TAB") 'company-select-previous)
     (define-key company-active-map (kbd "<backtab>") 'company-select-previous)))

(require 'elixir-mode)
(add-to-list 'elixir-mode-hook 'alchemist-mode)

(require 'evil)
(evil-mode 1)
(evil-define-key 'normal neotree-mode-map (kbd "TAB") 'neotree-enter)
(evil-define-key 'normal neotree-mode-map (kbd "SPC") 'neotree-quick-look)
(evil-define-key 'normal neotree-mode-map (kbd "q") 'neotree-hide)
(evil-define-key 'normal neotree-mode-map (kbd "RET") 'neotree-enter)

(require 'magit)
(define-key global-map (kbd "C-x g") 'magit-status)

(require 'org)
(define-key global-map (kbd "C-c l") 'org-store-link)
(define-key global-map (kbd "C-c a") 'org-agenda)

(require 'spaceline-config)
(spaceline-spacemacs-theme)
