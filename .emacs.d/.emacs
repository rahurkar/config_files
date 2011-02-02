;; Erase backwards
(normal-erase-is-backspace-mode 0)

;; Goto-line short-cut key                                                                                                   
(global-set-key "\M-g" 'goto-line)

;;;
;;; Org Mode
;;;
(require 'org-install)
(add-to-list 'auto-mode-alist '("\\.\\(org\\|org_archive\\|txt\\)$" . org-mode))

;;
;; Standard key bindings
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

;; Custom Key Bindings
(global-set-key (kbd "<f7>") 'org-agenda)

(setq org-agenda-files (quote ("~/work/notes/woo.org"
			       "~/work/notes/mandar.org"
			       "~/work/notes/learn.org")))

