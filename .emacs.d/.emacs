;; Erase backwards
(normal-erase-is-backspace-mode 0)

;; Goto-line short-cut key                                                                                                   
(global-set-key "\M-g" 'goto-line)

;;Invoke Alt-X with control key combinations
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Org Mode ;;
(require 'org-install)
(add-to-list 'auto-mode-alist '("\\.\\(org\\|org_archive\\|txt\\|gpg\\)$" . org-mode))

;; Standard key bindings
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

;; Custom Key Bindings
(global-set-key (kbd "<f7>") 'org-agenda)

(setq org-agenda-files (quote ("~/work/notes/woo.org.gpg"
			       "~/work/notes/vespa.org.gpg"
			       "~/work/notes/yinst.org.gpg"
			       "~/work/notes/goals_2011.org.gpg"
			       "~/work/notes/decomposition.org.gpg"
			       "~/work/notes/personal.org.gpg"
			       "~/work/notes/mandar.org.gpg"
			       "~/work/notes/learn.org.gpg")))


;; Emacs 23: bundled EasyPG
(require 'epa)
(epa-file-enable)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(org-agenda-files (quote ("~/work/notes/woo.org.gpg" "~/work/notes/vespa.org.gpg" "~/work/notes/yinst.org.gpg" "~/work/notes/goals_2011.org.gpg" "~/work/notes/decomposition.org.gpg" "~/work/notes/personal.org.gpg" "~/work/notes/mandar.org.gpg" "~/work/notes/learn.org.gpg"))))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )


;; turn iswitch-mode 1
(iswitchb-mode 1)
(setq iswitchb-buffer-ignore '("^ " "*Buffer"))
