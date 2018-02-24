;; -*- emacs-lisp -*-
;; Time-stamp: <Last changed 2012-11-30 19:31:12 by Art Vandelay, vandelay>

;;keep message buffer complete.
(setq message-log-max t)

(message "Reading configuration file...")

;;Initialize files----------------------------
;; Where to find external lisp-files, for modes, etc. I put my *el
;; files in "~/.emacs.d/elisp/" where ~/.emacs.d/ is the
;; user-emacs-directory
(add-to-list 'load-path (expand-file-name "elisp" user-emacs-directory))
;;--------------------------------------------

;; For the built in customization UI in emacs that no one uses. If
;; some package tries to use it, at least have the decency to keep
;; this config file clean.
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'noerror)

;; Note: Don't (require ...) packages prior to loading them with the
;; emacs package system ("elpa"), as it is not meaningful, doesn't
;; serve any purpose, nor semantically correct. Packages loaded in the
;; package system are autoloaded when visiting files where they're
;; needed (if well written).

(require 'package)

;; Since emacs 24 there's a very neat package system.
(when (>= emacs-major-version 24)
(setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
			 ("melpa" . "http://elpa.emacs-china.org/melpa/"))))

(package-initialize)

(require 'own-ref)

(require 'own-memacs)
