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
 '(custom-enabled-themes (quote (monokai)))
 '(custom-safe-themes
   (quote
    ("d3a406c5905923546d8a3ad0164a266deaf451856eca5f21b36594ffcb08413a" default)))
 '(flycheck-display-errors-delay 0)
 '(global-company-mode t)
 '(global-flycheck-mode t)
 '(global-linum-mode t)
 '(global-whitespace-mode t)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(linum-format (quote linum-format-func))
 '(neo-smart-open t)
 '(neo-theme (quote icons))
 '(org-from-is-user-regexp "\\<Zizheng Tai\\>")
 '(org-log-done (quote time))
 '(package-selected-packages
   (quote
    (alchemist all-the-icons ensime evil flycheck magit monokai-theme neotree smooth-scrolling spaceline use-package)))
 '(powerline-default-separator (quote arrow))
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
 '(linum ((t (:inherit default :background "#313335" :foreground "#8F908A" :underline nil))))
 '(whitespace-line ((t (:background "#F92672" :foreground "white")))))

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

(use-package linum
  :ensure t
  :config
  (defvar-local linum-format-string nil)
  (add-hook 'linum-before-numbering-hook
            (lambda ()
              (setq linum-format-string
                    (let ((w (length (number-to-string
                                      (count-lines (point-min) (point-max))))))
                      (concat "%" (number-to-string (max 3 w)) "d ")))))
  (defun linum-format-func (line)
    (propertize (format linum-format-string line) 'face 'linum)))

(use-package magit
  :ensure t
  :bind ("C-x g" . magit-status))

(use-package monokai-theme
  :ensure t)

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
