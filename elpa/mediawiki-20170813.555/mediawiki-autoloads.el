;;; mediawiki-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (mediawiki-draft mediawiki-site) "mediawiki" "mediawiki.el"
;;;;;;  (23668 60475 942239 486000))
;;; Generated autoloads from mediawiki.el

(autoload 'mediawiki-site "mediawiki" "\
Set up mediawiki.el for a SITE.
Without an argument, use `mediawiki-site-default'.
Interactively, prompt for a SITE.

\(fn &optional SITE)" t nil)

(autoload 'mediawiki-draft "mediawiki" "\
Open a temporary buffer in mediawiki-mode.
This is for editing a draft.  After finishing the editing either
use \\[mediawiki-draft-buffer] to send the data into the
mediawiki-draft-data-file, or send the buffer using
\\[mediawiki-save] and insert it later into a mediawiki article.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("mediawiki-pkg.el") (23668 60475 957107
;;;;;;  337000))

;;;***

(provide 'mediawiki-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; mediawiki-autoloads.el ends here
