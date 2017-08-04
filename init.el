;; 设置启动时屏蔽欢迎信息
;; (setq inhibit-startup-message t)

;; 加载package文件
(require 'package)
;; 设置启动是不自动加载所有package
(setq package-enable-at-startup nil)
;; 添加package源
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
;; 初始化package
(package-initialize)

;;https://github.com/jwiegley/use-package
;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
	(package-refresh-contents)
	(package-install 'use-package))

;; https://github.com/larstvei/Try
(use-package try
	:ensure t)

;; https://github.com/justbur/emacs-which-key
(use-package which-key
	:ensure t 
	:config
	(which-key-mode))

;;https://github.com/sabof/org-bullets
(use-package org-bullets
  :ensure t
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))


;;
(use-package lua-mode
  :ensure t)

(use-package random-splash-image
  :ensure t
  :config
  (setq random-splash-image-dir (concat (getenv "HOME") "/Pictures/splash-images"))
  (random-splash-image-set))

(use-package cal-china-x
  :ensure t)

;; 隐藏toolbar
(tool-bar-mode -1)
