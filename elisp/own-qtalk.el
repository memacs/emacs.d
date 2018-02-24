(add-to-list 'load-path "~/.emacs.d/qim-emacs.git") ; 本工程目录

; (setq jabber-qim-pubkey-file
;    "~/Documents/sources/qim-emacs/resources/qtalk_pub_key.pem") ; 公钥文件路径，默认为本工程目录下的jabber-qim-exts/resources/qtalk_pub_key.pem文件

; (setq jabber-qim-local-file-dir
;    "~/qim-local-files") ; qim保存收到的文件的目录（默认为本工程目录下的jabber-qim-exts/.cache目录）

(load "jabber-autoloads")

; (setq jabber-debug-log-xml t)

(setq jabber-invalid-certificate-servers '("qt.corp.qunar.com"))

(setq starttls-extra-arguments  '("--insecure"))
(setq jabber-history-enabled t)
(setq jabber-use-global-history nil)
(setq jabber-history-muc-enabled t)
(setq jabber-history-dir "~/qtalk-logs")
(setq jabber-muc-colorize-foreign t) ;; nick color


(setq jabber-alert-presence-message-function
    (lambda (WHO OLDSTATUS NEWSTATUS STATUSTEXT)
    nil))


;; account list
(setq jabber-account-list
`(
    ("lffan.liu@ejabhost1" ; 例如：geng.li@ejabhost1
    (:network-server . "qt.corp.qunar.com")
    (:port . "5222")
    (:password . ,(jabber-qim-password "lffan.liu" "Qunar.com.4034")))))

(jabber-connect-all)

(provide 'own-qtalk)
