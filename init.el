(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(eval-when-compile
  (require 'use-package))
(require 'bind-key)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(before-save-hook (quote (delete-trailing-whitespace)))
 '(c-basic-offset 4)
 '(company-idle-delay 0)
 '(company-require-match nil)
 '(custom-enabled-themes (quote (dracula)))
 '(custom-safe-themes
   (quote
    ("ff7625ad8aa2615eae96d6b4469fcc7d3d20b2e1ebc63b761a349bebbb9d23cb" default)))
 '(elpy-rpc-python-command "python3")
 '(flycheck-display-errors-delay 0)
 '(global-company-mode t)
 '(global-display-line-numbers-mode t)
 '(global-flycheck-mode t)
 '(global-whitespace-mode t)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(neo-smart-open t)
 '(neo-theme (quote icons))
 '(org-from-is-user-regexp "\\<Zizheng Tai\\>")
 '(org-log-done (quote time))
 '(package-selected-packages
   (quote
    (alchemist all-the-icons dracula-theme elixir-mode elpy ensime evil evil-magit flycheck magit neotree smooth-scrolling spaceline use-package)))
 '(powerline-default-separator (quote arrow))
 '(powerline-image-apple-rgb t)
 '(require-final-newline t)
 '(scroll-bar-mode nil)
 '(show-trailing-whitespace t)
 '(smooth-scroll-margin 1)
 '(smooth-scrolling-mode t)
 '(tab-stop-list (quote (4 8)))
 '(tool-bar-mode nil)
 '(whitespace-style (quote (face lines-tail))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans Mono for Powerline" :foundry "PfEd" :slant normal :weight normal :height 120 :width normal))))
 '(line-number ((t (:inherit (shadow default) :slant italic))))
 '(line-number-current-line ((t (:inherit line-number :foreground "white" :slant italic :weight bold))))
 '(whitespace-line ((t (:background "#FF5555" :foreground "#F8F8F2")))))

(use-package alchemist
  :ensure t
  :after elixir-mode
  :config
  (add-hook 'elixir-mode-hook 'alchemist-mode))

(use-package all-the-icons
  :ensure t)

(use-package company
  :ensure t
  :bind (:map company-active-map
              ("TAB" . company-complete-common-or-cycle)
              ("<tab>" . company-complete-common-or-cycle)
              ("S-TAB" . company-select-previous)
              ("<backtab>" . company-select-previous)))

(use-package dracula-theme
  :ensure t)

(use-package elixir-mode
  :ensure t)

(use-package elpy
  :ensure t
  :config
  (elpy-enable))

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

(use-package evil-magit
  :ensure t
  :after (evil magit))

(use-package flycheck
  :ensure t)

(use-package magit
  :ensure t
  :bind ("C-x g" . magit-status)
  :config
  (defun not-magit-mode ()
    (not (derived-mode-p 'magit-mode)))
  (add-function :before-while whitespace-enable-predicate 'not-magit-mode))

(use-package neotree
  :ensure t)

(use-package org
  :ensure t
  :bind (("C-c l" . org-store-link)
         ("C-c a" . org-agenda)))

(use-package smooth-scrolling
  :ensure t)

(use-package spaceline
  :ensure t
  :config
  (require 'spaceline-config)
  (spaceline-spacemacs-theme))

;;; init.el ends here
