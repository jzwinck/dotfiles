(setq inhibit-splash-screen t)
(setq initial-scratch-message nil)

(setq vc-follow-symlinks t)

(setq-default indent-tabs-mode nil)

(setq column-number-mode t)

(setq read-file-name-completion-ignore-case t)

(setq c-mode-hook (function (lambda () (setq c-indent-level 4))))
(setq lua-mode-hook (function (lambda () (setq lua-indent-level 4))))
(setq cmake-mode-hook (function (lambda () (setq cmake-indent-level 4)))) ;; doesn't seem to work

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(c-default-style (quote ((c-mode . "c") (c++-mode . "stroustrup") (java-mode . "java") (awk-mode . "awk") (other . "gnu"))))
 '(c-offsets-alist (quote ((inline-open . 0) (innamespace . 0))))
 '(nxml-child-indent 4))

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "white" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 122 :width normal :foundry "unknown" :family "Liberation Mono")))))

; (global-set-key (kbd "C-z") 'undo)

;; keep auto-save files under home directory, not side-by-side with originals
(defvar user-temporary-file-directory
  (concat temporary-file-directory user-login-name "/"))
(make-directory user-temporary-file-directory t)
(setq backup-by-copying t)
(setq backup-directory-alist
      `(("." . ,user-temporary-file-directory)
        (,tramp-file-name-regexp nil)))
(setq auto-save-list-file-prefix
      (concat user-temporary-file-directory ".auto-saves-"))
(setq auto-save-file-name-transforms
      `((".*" ,user-temporary-file-directory t)))
(put 'upcase-region 'disabled nil)

;(setq auto-mode-alist
;      (append '(("\\.h\\'" . c++-mode))
;              auto-mode-alist))

(setq auto-mode-alist (append '(("/schedule/cron/\\w+/" . sh-mode)) auto-mode-alist))

(add-to-list 'interpreter-mode-alist '("python2" . python-mode))
(add-to-list 'interpreter-mode-alist '("python3" . python-mode))

;; CMake mode
(require 'cmake-mode)
(setq auto-mode-alist
      (append '(("CMakeLists\\.txt\\'" . cmake-mode)
                ("\\.cmake\\'" . cmake-mode)
                ("build\\.make" . makefile-mode)
                )
              auto-mode-alist))
(put 'downcase-region 'disabled nil)

(setq-default show-trailing-whitespace t)
