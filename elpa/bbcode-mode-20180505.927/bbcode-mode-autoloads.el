;;; bbcode-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (bbcode-scratch bbcode-mode) "bbcode-mode" "bbcode-mode.el"
;;;;;;  (23668 55504 888552 317000))
;;; Generated autoloads from bbcode-mode.el

(autoload 'bbcode-mode "bbcode-mode" "\
Major mode for writing BBCode markup.

\\{bbcode-mode-map}

\(fn)" t nil)

(autoload 'bbcode-scratch "bbcode-mode" "\
Open *bbcode-scratch* buffer to quickly edit BBCode posts.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.bbcode$" . bbcode-mode))

;;;***

;;;### (autoloads nil nil ("bbcode-mode-pkg.el") (23668 55504 905231
;;;;;;  799000))

;;;***

(provide 'bbcode-mode-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; bbcode-mode-autoloads.el ends here
