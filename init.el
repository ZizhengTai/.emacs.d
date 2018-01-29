(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
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
 '(global-column-enforce-mode t)
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
    (column-enforce-mode ensime spaceline smooth-scrolling neotree monokai-theme magit flycheck evil all-the-icons alchemist use-package)))
 '(powerline-default-separator (quote arrow))
 '(require-final-newline t)
 '(scroll-bar-mode nil)
 '(show-trailing-whitespace t)
 '(smooth-scroll-margin 1)
 '(smooth-scrolling-mode t)
 '(tab-stop-list (quote (4 8)))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans Mono for Powerline" :foundry "PfEd" :slant normal :weight normal :height 120 :width normal)))))

(use-package alchemist
  :ensure t
  :after elixir-mode
  :config
  (add-hook 'elixir-mode-hook 'alchemist-mode))

(use-package all-the-icons
  :ensure t)

(use-package column-enforce-mode
  :ensure t)

(use-package company
  :ensure t
  :config
  (define-key company-active-map (kbd "TAB") 'company-complete-common-or-cycle)
  (define-key company-active-map (kbd "<tab>") 'company-complete-common-or-cycle)
  (define-key company-active-map (kbd "S-TAB") 'company-select-previous)
  (define-key company-active-map (kbd "<backtab>") 'company-select-previous))

(use-package elixir-mode
  :ensure t)

(use-package ensime
  :ensure t
  :pin melpa-stable)

(use-package evil
  :ensure t
  :after neotree
  :config
  (evil-define-key 'normal neotree-mode-map (kbd "TAB") 'neotree-enter)
  (evil-define-key 'normal neotree-mode-map (kbd "SPC") 'neotree-quick-look)
  (evil-define-key 'normal neotree-mode-map (kbd "q") 'neotree-hide)
  (evil-define-key 'normal neotree-mode-map (kbd "RET") 'neotree-enter)
  (evil-mode 1))

(use-package flycheck
  :ensure t)

(use-package magit
  :ensure t
  :config
  (define-key global-map (kbd "C-x g") 'magit-status))

(use-package monokai-theme
  :ensure t)

(use-package neotree
  :ensure t)

(use-package org
  :ensure t
  :config
  (define-key global-map (kbd "C-c l") 'org-store-link)
  (define-key global-map (kbd "C-c a") 'org-agenda))

(use-package smooth-scrolling
  :ensure t)

(use-package spaceline
  :ensure t
  :config
  (require 'spaceline-config)
  (spaceline-spacemacs-theme))
