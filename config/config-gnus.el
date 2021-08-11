;;;;;; read imap email with gnus + nnimap
;(setq gnus-select-method '(nnnil ""))
;(setq gnus-secondary-select-methods

(setq smtpmail-smtp-server "smtp.office365.com")
(setq smtpmail-smtp-service 587)
(setq message-send-mail-function 'smtpmail-send-it)
(setq send-mail-function 'smtpmail-send-it)

(setq gnus-select-method '(nnnil nil))
(setq gnus-secondary-select-methods
      '( (nnimap "brillywu@viatech.com.cn"
         (nnimap-address "outlook.office365.com")
         (nnimap-server-port 993)
         (nnimap-stream ssl)
         (nnimap-authenticator login)
	 )
	 )
)


(provide 'config-gnus)
