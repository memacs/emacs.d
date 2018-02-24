;;Auto-install missing packages ---------------

;; packages I use all the time, which _must_
;; be installed on all my emacs-machines:
(setq my-must-have-packages
      '(auctex                          ; a must for LaTeX
        avy                             ; awesome for jumping / navigating cursor on screen
        bbcode-mode                     ; for editing forum-posts
        beacon                          ; show whre the cursor is when jumping between buffers & frames
        browse-kill-ring                ; a must! C-y (and M-y) on steroids!
        color-theme-sanityinc-tomorrow  ; blue version is nice (doesn't need the old color-theme package)
        command-log-mode                ; log pressed keys to buffer (e.g. useful for presentations)
        company                         ; for auto-compleate variables/functions (with drop down menu)
        company-auctex                  ; auto-complete for latex
        dtrt-indent                     ; awesome: automagically guess indentation style of file
        ;;emms                          ; emacs multimedia system, (for playlists etc.)
        erc-hl-nicks                    ; colour names on IRC
        ;;flycheck                        ; check code sanity while I type
        geiser                          ; for writing Scheme lisp
        gnuplot                         ; gnuplot-mode
        goto-chg                        ; navigate in buffer by using undo-history
        graphviz-dot-mode               ; because syntax highlight in graphviz scripts is nice
        green-phosphor-theme            ; a color theme, as the name suggests
        htmlize                         ; render current buffer face and syntax highlight to html
        lua-mode                        ; at least gives syntax highlight for Lua-code
        magit                           ; powerful git-interface
        matlab-mode                     ; yuck! when you must, you must
        markdown-mode                   ; markdown-mode for github posts
        mediawiki                       ; mode for editing mediawiki-buffers
        org                             ; use a more recent than default emacs
        paredit                         ; excellet for lisp, but steep lerning, for parenthesis manegement
        pov-mode                        ; for editing pov-ray files, (raytracer)
        rainbow-mode                    ; Colour hex rgb values, e.q. "#00ff00" in it's colour
        slime                           ; Superios Lisp Interaction Mode for Emacs
        ;;smartparens                   ; better parenthesis management: insert/delete/replace pairs
        smex                            ; smarter "M-x"
        sml-modeline                    ; I use it to replaces scrollbar, show info in modeline instead
        stumpwm-mode                    ; I'm not actually using this, but for my WM
        volatile-highlights             ; slightly shade just pasted region
        wanderlust                      ; email-client
        which-key                       ; smarter when half finished key combo
        with-editor                     ; make emacs default $EDITOR
        yasnippet                       ; auto-complete templates (e.g. if, for, do ...)
        ))

;; install any packages in my-must-have-packages,
;; if they are not installed already
(let ((refreshed nil))
  (when (not package-archive-contents)
    (package-refresh-contents)
    (setq refreshed t))
  (dolist (pkg my-must-have-packages)
    (when (and (not (package-installed-p pkg))
               (assoc pkg package-archive-contents))
      (unless refreshed
        (package-refresh-contents)
        (setq refreshed t))
      (package-install pkg))))

(defun package-list-unaccounted-packages ()
  "Like `package-list-packages', but shows only the packages that
  are installed and are not in `my-must-have-packages'.  Useful for
  cleaning out unwanted packages."
  (interactive)
  (package-show-package-list
   (remove-if-not (lambda (x) (and (not (memq x my-must-have-packages))
                                   (not (package-built-in-p x))
                                   (package-installed-p x)))
                  (mapcar 'car package-archive-contents))))
;;---------------------------------------------

;; Where to find Emacs24 themes for M-x load-theme
(when (>= emacs-major-version 24)
  (add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
  (load-theme 'zenburn t nil)
  ;;(load-theme 'sanityinc-tomorrow-blue t nil)
  )

;;--------------------------------------------
(tool-bar-mode -1)                        ;;never have a retarded tool-bar at top
(menu-bar-mode -1)                        ;;never have a retarded menu-bar at top
(scroll-bar-mode -1)                      ;;never have a retarded scrill-bar at side
(setq-default indicate-empty-lines t)     ;;show (in left margin) marker for empty lines

;;NOTE: not good when in daemon mode...
;; (cond ((eq window-system 'x)
;;        ;;Put properties for emacs in Xorg here:
;;        (message "Running in X")
;;        (setq-default indicate-empty-lines t))
;;       (t
;;        ;; Put properties for emacs in CLI here
;;        (message "Running in terminal")
;;        ;;(menu-bar-mode 0)
;;        ))
;;--------------------------------------------

;;Modline-------------------------------------
(line-number-mode t)                        ;; show line numbers
(column-number-mode t)                      ;; show column numbers
;;(size-indication-mode t)                    ;; show file size (emacs 22+)

;;(when (> (display-color-cells) 16)          ;if not in CLI
(if (require 'sml-modeline nil 'noerror)  ;; use sml-modeline if available
    (progn
      (sml-modeline-mode 1)               ;; show buffer pos in the mode line
      (scroll-bar-mode -1))               ;; turn off the scrollbar
  (scroll-bar-mode -1))                   ;; otherwise, still don't show a scrollbar...
;;--------------------------------------------

(require 'yasnippet)

(provide 'own-ref)
