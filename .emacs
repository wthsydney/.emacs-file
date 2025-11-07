;; My emacs configuration file
(scroll-bar-mode 0)
(tool-bar-mode 0)
(menu-bar-mode 0)
(global-display-line-numbers-mode 0)
(set-default 'truncate-lines t)
(electric-pair-mode 1)
(delete-selection-mode 1)
(global-hl-line-mode 1)
'(delete-auto-save-files nil)
(setq ring-bell-function 'ignore)
(setq backup-directory-alist `(("." . "~/.saves")))
;;(set-frame-font "Fira Code 12" nil t)
;;(set-frame-font "Cascadia Code 11" nil t)
(set-frame-font "0xProto Regular 11" nil t)
;;(set-frame-font "ProFontWindows 11" nil t)
;;(set-frame-font "Consolas 13" nil t)
;;(set-frame-font "Liberation Mono Regular 11" nil t)
(global-auto-revert-mode t)
(load-theme 'tron-legacy t)

;;Disable warnings
(setq warning-minimum-level :emergency)
;;Make backspace actually delete words and not copy them to the clipboard
(defun backward-delete-word (arg)
  "Delete characters backward until encountering the beginning of a word.
With argument ARG, do this that many times."
 (interactive "p")
 (delete-region (point) (progn (backward-word arg) (point))))

(global-set-key (kbd "C-<backspace>") 'backward-delete-word)
(global-set-key (kbd "M-d") 'delete-char)
(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "M-f") 'forward-char)
(global-set-key (kbd "M-b") 'backward-char)
(global-set-key (kbd "C-f") 'forward-word)
(global-set-key (kbd "C-b") 'backward-word)
(global-set-key (kbd "C-q") 'query-replace)
(global-set-key (kbd "C-o") 'find-file)
(global-set-key (kbd "<f5>") 'save-buffer)
(global-set-key (kbd "<f6>") 'compile)
(setq compile-command "build.bat")
(global-set-key (kbd "C-;") 'other-window)
(global-set-key (kbd "C-'") 'find-file)
;;(global-set-key (kbd "C-v") 'yank)

(add-to-list 'default-frame-alist '(fullscreen . maximized))

(defun my-c-mode-setup ()
  (c-set-style "stroustrup")
  (local-set-key (kbd "<S-backspace>") 'delete-indentation)
  (local-set-key (kbd "C-d") 'kill-word))

(add-hook 'c-mode-common-hook #'my-c-mode-setup)

(setq-default message-log-max nil)
(kill-buffer "*Messages*")
