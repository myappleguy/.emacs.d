(set-face-attribute 'default nil :height 100)

(setq-default major-mode 'text-mode)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(line-number-mode 1)
(column-number-mode 1)

;;*************************************************************

(require 'package)

(add-to-list 'load-path "~/.emacs.d/elpa")

;;(add-to-list 'load-path "~/emacs.d/emmet-mode")
;;(require 'emmet-mode)

(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
  '("gnu" . "http://elpa.gnu.org/packages/") t)

(package-initialize)

;;*************************************************************

(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/elpa//ac-dict")
(ac-config-default)
(setq ac-use-quick-help t)

;;*************************************************************

(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)
(add-hook 'cider-repl-mode-hook 'paredit-mode)
(add-hook 'cider-repl-mode-hook 'rainbow-delimiters-mode)

(add-hook 'clojure-mode-hook 'paredit-mode)
(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)

(add-hook 'emacs-lisp-mode-hook 'paredit-mode)
(add-hook 'emacs-lisp-mode-hook 'rainbow-delimiters-mode)

(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation

;;*************************************************************

(setq cider-show-error-buffer nil)
(setq nrepl-buffer-name-show-port t)
(setq cider-repl-display-in-current-window t) ;;C-c C-z show cider repl in current window
(setq cider-repl-result-prefix ";; => ")
;; Not working! (setq cider-known-endpoints '(("groops" "127.0.0.1" "8030")))
(setq-default tab-width 2) ;; Tab width of 2
(fset 'yes-or-no-p 'y-or-n-p) ;; Accept y or n instead of whole word

;; Interactive Do mode
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;; Clojure Auto-files
(setq auto-mode-alist (cons '("\\.edn$" . clojure-mode) auto-mode-alist)) ;; *.edn are Clojure files
(setq auto-mode-alist (cons '("\\.cljs$" . clojure-mode) auto-mode-alist)) ;; *.cljs are Clojure files

;; Smex Ido on M-x
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;;*************************************************************

(global-set-key (kbd "<C-S-up>") 'buf-move-up)
(global-set-key (kbd "<C-S-down>") 'buf-move-down)
(global-set-key (kbd "<C-S-right>") 'buf-move-right)
(global-set-key (kbd "<C-S-left>") 'buf-move-left)

(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

(global-set-key (kbd "M-p") 'package-list-packages)

(auto-dim-other-buffers-mode) ; Makes other buffers less prominent

;;*************************************************************

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-modules (quote (org-bbdb org-bibtex org-docview org-gnus org-info org-jsinfo org-irc org-mew org-mhe org-rmail org-vm org-wl org-w3m org-drill))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
