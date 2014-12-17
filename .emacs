(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-enabled-themes (quote (wombat)))
 '(display-time-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(load "~/.emacs.d/go.el")
(require 'package)
(push '("marmalade" . "http://marmalade-repo.org/packages/")
	package-archives)
(push '("melpa" . "http://melpa.milkbox.net/packages/")
	package-archives)
(add-to-list 'load-path "/home/me/.emacs.d/elpa/neotree-20141119.443/")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
