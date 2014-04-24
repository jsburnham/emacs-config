(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["black" "red" "green" "yellow" "blue" "magenta" "cyan" "white"])
 '(inhibit-startup-screen t)
 '(menu-bar-mode nil)
 '(semantic-tag-folding-allow-folding-of (quote ((type) (function) (variable) (include) (comment) (package) (code) (block))))
 '(term-default-fg-color "green")
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 71 :width normal :foundry "unknown" :family "DejaVu Sans Mono"))))
 '(org-hide ((t (:foreground "black"))))
 '(term-color-blue ((t (:background "blue2" :foreground "deep sky blue")))))

;; Turn off menu bar
(menu-bar-mode -1)
;; Turn off tool bar
(tool-bar-mode -1)
;; Turn off scroll bar
(scroll-bar-mode -1)

;; Put backups in one directory
(setq backup-directory-alist `(("." . "~/.saves")))
(setq backup-by-copying t)

;; Make default style linux.
(setq c-default-style "linux"
      c-basic-offset 4)

;; No tabs - only spaces
(setq-default indent-tabs-mode nil)

;; Four spaces for tabs
(setq-default c-basic-indent 4)
(setq-default tab-width 4)

;; Set tab-stops
(setq tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76))

;; Pretty theme for coding
;(require 'color-theme)
;(color-theme-initialize)
;(color-theme-clarity)

;; Source browsing
;(require 'xcscope)

;; Org mode, from orgguide.pdf
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(add-hook 'org-mode-hook 'turn-on-font-lock)
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

; Org mode, clean outline view.
(setq org-startup-indented "t")
(setq org-hide-leading-stars "t")

; Default browser
(setq browse-url-browser-function (quote browse-url-generic))
(setq browse-url-generic-program "conkeror")

; Extra Org mode todo sequences
(setq org-todo-keywords
      '((sequence "TODO" "|" "DONE")
        (sequence "UNSEEN" "|" "WATCHED")))

;; Load CEDET
;(load-file "/home/jonathan/projects/cedet/cedet-1.0.1/common/cedet.el")
;(semantic-load-enable-gaudy-code-helpers)
;(require 'semantic-ia)
;(require 'semantic-sb)
;(require 'semantic-tag-folding)
;(global-semantic-tag-folding-mode)


;; Setup ECB
;(add-to-list 'load-path "/home/jonathan/projects/cedet/ecb-2.40")
;(require 'ecb)

;; IDO mode - fuzzy buffer and file lookup
(ido-mode 1)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)

;;;;;;;;;;;;;;;;;;;;;; Evil! ;;;;;;;;;;;;;;;;;;;;;;
;;(add-to-list 'load-path "~/.emacs.d/evil/lib")
;;(require 'goto-chg)

;;(add-to-list 'load-path "~/.emacs.d/evil")
;;(require 'evil)
;;(evil-mode 1)

;; Don't be evil for terminal buffers.
;;(evil-set-initial-state 'term-mode 'emacs)

;; Add SHIFT-SPACE as an escape to normal mode.
;;   Should probably change this to search through evil state maps for
;;   entries with escape and make a copy for SHIFT-SPACE
;;(define-key evil-insert-state-map  (kbd "S-SPC") 'evil-normal-state)
;;(define-key evil-visual-state-map  (kbd "S-SPC") 'evil-exit-visual-state)
;;(define-key evil-replace-state-map (kbd "S-SPC") 'evil-normal-state)
;;(define-key evil-normal-state-map  (kbd "S-SPC") 'evil-force-normal-state)

(ansi-term "/bin/bash" "terminal")
(put 'upcase-region 'disabled nil)
