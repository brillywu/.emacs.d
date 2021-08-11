;; melpa package 
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
;;(add-to-list 'pcakage-archives '("gnu" . "http://elpa.emacs-china.org/gnu/") t)
(package-initialize)

;; Add Packages
(defvar brillywu/packages '(
			   ;; --- Auto-completion ---
			   company
			   ;; --- Better Editor ---
			   smooth-scrolling
			   hungry-delete
			   swiper
			   counsel
			   smartparens
			   popwin
			   ;; --- Major Mode ---
			   js2-mode
			   markdown-mode
			   )
)


(provide 'config-packages)
