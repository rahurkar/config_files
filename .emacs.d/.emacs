;; Erase backwards
(normal-erase-is-backspace-mode 0)

;; Goto-line short-cut key                                                                                                   
(global-set-key "\M-g" 'goto-line)

;;Invoke Alt-X with control key combinations
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Org Mode ;;
(setq load-path (cons "~/work/notes/org-7.4/lisp" load-path))
(add-to-list 'auto-mode-alist '("\\.\\(org\\|org_archive\\|txt\\|gpg\\)$" . org-mode))
(require 'org-install)

;; Standard key bindings
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

;; Custom Key Bindings
(global-set-key (kbd "<f7>") 'org-agenda)

(setq org-agenda-files (quote ("~/work/notes/woo.org.gpg"
			       "~/work/notes/personal.org.gpg"
			       "~/work/notes/learn.org.gpg")))


;; Emacs 23: bundled EasyPG
(require 'epa)
(epa-file-enable)


;; turn iswitch-mode 1
(iswitchb-mode 1)
(setq iswitchb-buffer-ignore '("^ " "*Buffer"))
