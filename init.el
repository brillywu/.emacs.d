(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(calendar-week-start-day 1)
 '(make-backup-files nil)
 '(package-selected-packages '(ace-window ztree))
 '(show-paren-mode t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Cascadia Mono" :foundry "outline" :slant normal :weight normal :height 143 :width normal))))
 '(error ((t (:foreground "OrangeRed1" :weight bold)))))


(add-to-list 'load-path "~/.emacs.d/config/")
(add-to-list 'load-path "~/.emacs.d/lisp/")
(require 'datetime)
(require 'config-packages)
(require 'config-gnus)
(require 'config-kbd)

;;;;;;;;;;;; recent file list
(require 'recentf)
(setq recentf-auto-cleanup 36000)
(setq recentf-mode 1)
(setq recentf-max-menu-item 50)


;;;;;;;;;;;;; themes setup ;;;;;;;;;;;;
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'zenburn t)


;;;;;;;;;;;;;;;;;;;; 快速打开配置文件 ;;;;;;;;;;;;;;;;
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
;; 这一行代码，将函数 open-init-file 绑定到 <f2> 键上
(global-set-key (kbd "<f2>") 'open-init-file)


;;;;;;;;;; org-mode
;; org 自动换行
(add-hook 'org-mode-hook (lambda () (setq toggle-truncate-lines t)))


(display-time)
(calendar)
