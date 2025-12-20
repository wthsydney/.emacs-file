;;; gruber-torch-theme.el --- Modified Gruber Darker color theme for Emacs 24.

;;; Commentary:
;;
;; Gruber Darker color theme for Emacs by Jason Blevins. A darker
;; variant of the Gruber Dark theme for BBEdit by John Gruber. Adapted
;; for deftheme and extended by Alexey Kutepov a.k.a. rexim.


(deftheme gruber-torch
  "Modified Gruber Darker color theme for Emacs 24")

(mapc (lambda (mode)
        (font-lock-add-keywords mode
          '(("\\<\\(IMPORTANT\\)" 1 'font-lock-warning-face t)
            ("\\<\\(NOTE\\)"      1 'font-lock-doc-face t)
            ("\\<\\(STUDY\\)"     1 'font-lock-constant-face t)
            ("\\<\\(TODO\\)"      1 'font-lock-warning-face t)
            ("\\<\\(XXX\\)"       1 'font-lock-warning-face t))))
      '(c-mode c++-mode emacs-lisp-mode))

;; Please, install rainbow-mode.
;; Colors with +x are lighter. Colors with -x are darker.
(let ((gruber-torch-fg        "#e4e4ef")
      (gruber-torch-fg+1      "#f4f4ff")
      (gruber-torch-fg+2      "#f5f5f5")
      (gruber-torch-white     "#ffffff")
      (gruber-torch-black     "#000000")
      (gruber-torch-bg-1      "#101010")
      (gruber-torch-bg        "#181818")
      (gruber-torch-bg+1      "#282828")
      (gruber-torch-bg+2      "#453d41")
      (gruber-torch-bg+3      "#484848")
      (gruber-torch-bg+4      "#52494e")
      (gruber-torch-red-1     "#c73c3f")
      (gruber-torch-red       "#f43841")
      (gruber-torch-red+1     "#ff4f58")
      (gruber-torch-green     "#7FFFD4")
      (gruber-torch-yellow    "#D89B75")
      (gruber-torch-brown     "#9f9382")
      (gruber-torch-quartz    "#95a99f")
      (gruber-torch-niagara-2 "#303540")
      (gruber-torch-niagara-1 "#565f73")
      (gruber-torch-niagara   "#96a6c8")
      (gruber-torch-wisteria  "#9e95c7")
      )
  (custom-theme-set-variables
   'gruber-torch
   '(frame-brackground-mode (quote dark)))

  (custom-theme-set-faces
   'gruber-torch

   ;; Agda2
   `(agda2-highlight-datatype-face ((t (:foreground ,gruber-torch-quartz))))
   `(agda2-highlight-primitive-type-face ((t (:foreground ,gruber-torch-quartz))))
   `(agda2-highlight-function-face ((t (:foreground ,gruber-torch-niagara))))
   `(agda2-highlight-keyword-face ((t ,(list :foreground gruber-torch-yellow
                                             :bold t))))
   `(agda2-highlight-inductive-constructor-face ((t (:foreground ,gruber-torch-green))))
   `(agda2-highlight-number-face ((t (:foreground ,gruber-torch-wisteria))))

   ;; AUCTeX
   `(font-latex-bold-face ((t (:foreground ,gruber-torch-quartz :bold t))))
   `(font-latex-italic-face ((t (:foreground ,gruber-torch-quartz :italic t))))
   `(font-latex-math-face ((t (:foreground ,gruber-torch-green))))
   `(font-latex-sectioning-5-face ((t ,(list :foreground gruber-torch-niagara
                                             :bold t))))
   `(font-latex-slide-title-face ((t (:foreground ,gruber-torch-niagara))))
   `(font-latex-string-face ((t (:foreground ,gruber-torch-green))))
   `(font-latex-warning-face ((t (:foreground ,gruber-torch-red))))

   ;; Basic Coloring (or Uncategorized)
   `(border ((t ,(list :background gruber-torch-bg-1
                       :foreground gruber-torch-bg+2))))
   `(cursor ((t (:background ,gruber-torch-yellow))))
   `(default ((t ,(list :foreground gruber-torch-fg
                        :background gruber-torch-bg))))
   `(fringe ((t ,(list :background nil
                       :foreground gruber-torch-bg+2))))
   `(vertical-border ((t ,(list :foreground gruber-torch-bg+2))))
   `(link ((t (:foreground ,gruber-torch-niagara :underline t))))
   `(link-visited ((t (:foreground ,gruber-torch-wisteria :underline t))))
   `(match ((t (:background ,gruber-torch-bg+4))))
   `(shadow ((t (:foreground ,gruber-torch-bg+4))))
   `(minibuffer-prompt ((t (:foreground ,gruber-torch-niagara))))
   `(region ((t (:background ,gruber-torch-bg+3 :foreground nil))))
   `(secondary-selection ((t ,(list :background gruber-torch-bg+3
                                    :foreground nil))))
   `(trailing-whitespace ((t ,(list :foreground gruber-torch-black
                                    :background gruber-torch-red))))
   `(tooltip ((t ,(list :background gruber-torch-bg+4
                        :foreground gruber-torch-white))))

   ;; Calendar
   `(holiday-face ((t (:foreground ,gruber-torch-red))))

   ;; Compilation
   `(compilation-info ((t ,(list :foreground gruber-torch-green
                                 :inherit 'unspecified))))
   `(compilation-warning ((t ,(list :foreground gruber-torch-brown
                                    :bold t
                                    :inherit 'unspecified))))
   `(compilation-error ((t (:foreground ,gruber-torch-red+1))))
   `(compilation-mode-line-fail ((t ,(list :foreground gruber-torch-red
                                           :weight 'bold
                                           :inherit 'unspecified))))
   `(compilation-mode-line-exit ((t ,(list :foreground gruber-torch-green
                                           :weight 'bold
                                           :inherit 'unspecified))))

   ;; Completion
   `(completions-annotations ((t (:inherit 'shadow))))

   ;; Custom
   `(custom-state ((t (:foreground ,gruber-torch-green))))

   ;; Diff
   `(diff-removed ((t ,(list :foreground gruber-torch-red+1
                             :background nil))))
   `(diff-added ((t ,(list :foreground gruber-torch-green
                           :background nil))))

   ;; Dired
   `(dired-directory ((t (:foreground ,gruber-torch-niagara :weight bold))))
   `(dired-ignored ((t ,(list :foreground gruber-torch-quartz
                              :inherit 'unspecified))))

   ;; Ebrowse
   `(ebrowse-root-class ((t (:foreground ,gruber-torch-niagara :weight bold))))
   `(ebrowse-progress ((t (:background ,gruber-torch-niagara))))

   ;; Egg
   `(egg-branch ((t (:foreground ,gruber-torch-yellow))))
   `(egg-branch-mono ((t (:foreground ,gruber-torch-yellow))))
   `(egg-diff-add ((t (:foreground ,gruber-torch-green))))
   `(egg-diff-del ((t (:foreground ,gruber-torch-red))))
   `(egg-diff-file-header ((t (:foreground ,gruber-torch-wisteria))))
   `(egg-help-header-1 ((t (:foreground ,gruber-torch-yellow))))
   `(egg-help-header-2 ((t (:foreground ,gruber-torch-niagara))))
   `(egg-log-HEAD-name ((t (:box (:color ,gruber-torch-fg)))))
   `(egg-reflog-mono ((t (:foreground ,gruber-torch-niagara-1))))
   `(egg-section-title ((t (:foreground ,gruber-torch-yellow))))
   `(egg-text-base ((t (:foreground ,gruber-torch-fg))))
   `(egg-term ((t (:foreground ,gruber-torch-yellow))))

   ;; ERC
   `(erc-notice-face ((t (:foreground ,gruber-torch-wisteria))))
   `(erc-timestamp-face ((t (:foreground ,gruber-torch-green))))
   `(erc-input-face ((t (:foreground ,gruber-torch-red+1))))
   `(erc-my-nick-face ((t (:foreground ,gruber-torch-red+1))))

   ;; EShell
   `(eshell-ls-backup ((t (:foreground ,gruber-torch-quartz))))
   `(eshell-ls-directory ((t (:foreground ,gruber-torch-niagara))))
   `(eshell-ls-executable ((t (:foreground ,gruber-torch-green))))
   `(eshell-ls-symlink ((t (:foreground ,gruber-torch-yellow))))

   ;; Font Lock
   `(font-lock-builtin-face ((t (:foreground ,gruber-torch-yellow))))
   `(font-lock-comment-face ((t (:foreground ,gruber-torch-brown))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,gruber-torch-brown))))
   `(font-lock-constant-face ((t (:foreground ,gruber-torch-quartz))))
   `(font-lock-doc-face ((t (:foreground ,gruber-torch-green))))
   `(font-lock-doc-string-face ((t (:foreground ,gruber-torch-green))))
   `(font-lock-function-name-face ((t (:foreground ,gruber-torch-niagara))))
   `(font-lock-keyword-face ((t (:foreground ,gruber-torch-yellow :bold t))))
   `(font-lock-preprocessor-face ((t (:foreground ,gruber-torch-quartz))))
   `(font-lock-reference-face ((t (:foreground ,gruber-torch-quartz))))
   `(font-lock-string-face ((t (:foreground ,gruber-torch-green))))
   `(font-lock-type-face ((t (:foreground ,gruber-torch-quartz))))
   `(font-lock-variable-name-face ((t (:foreground ,gruber-torch-fg+1))))
   `(font-lock-warning-face ((t (:foreground ,gruber-torch-red))))

   ;; Flymake
   `(flymake-errline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,gruber-torch-red)
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:foreground ,gruber-torch-red :weight bold :underline t))))
   `(flymake-warnline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,gruber-torch-yellow)
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:forground ,gruber-torch-yellow :weight bold :underline t))))
   `(flymake-infoline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,gruber-torch-green)
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:forground ,gruber-torch-green :weight bold :underline t))))

   ;; Flyspell
   `(flyspell-incorrect
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,gruber-torch-red) :inherit unspecified))
      (t (:foreground ,gruber-torch-red :weight bold :underline t))))
   `(flyspell-duplicate
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,gruber-torch-yellow) :inherit unspecified))
      (t (:foreground ,gruber-torch-yellow :weight bold :underline t))))

   ;; Helm
   `(helm-candidate-number ((t ,(list :background gruber-torch-bg+2
                                      :foreground gruber-torch-yellow
                                      :bold t))))
   `(helm-ff-directory ((t ,(list :foreground gruber-torch-niagara
                                  :background gruber-torch-bg
                                  :bold t))))
   `(helm-ff-executable ((t (:foreground ,gruber-torch-green))))
   `(helm-ff-file ((t (:foreground ,gruber-torch-fg :inherit unspecified))))
   `(helm-ff-invalid-symlink ((t ,(list :foreground gruber-torch-bg
                                        :background gruber-torch-red))))
   `(helm-ff-symlink ((t (:foreground ,gruber-torch-yellow :bold t))))
   `(helm-selection-line ((t (:background ,gruber-torch-bg+1))))
   `(helm-selection ((t (:background ,gruber-torch-bg+1 :underline nil))))
   `(helm-source-header ((t ,(list :foreground gruber-torch-yellow
                                   :background gruber-torch-bg
                                   :box (list :line-width -1
                                              :style 'released-button)))))

   ;; Ido
   `(ido-first-match ((t (:foreground ,gruber-torch-yellow :bold nil))))
   `(ido-only-match ((t (:foreground ,gruber-torch-brown :weight bold))))
   `(ido-subdir ((t (:foreground ,gruber-torch-niagara :weight bold))))

   ;; Info
   `(info-xref ((t (:foreground ,gruber-torch-niagara))))
   `(info-visited ((t (:foreground ,gruber-torch-wisteria))))

   ;; Jabber
   `(jabber-chat-prompt-foreign ((t ,(list :foreground gruber-torch-quartz
                                           :bold nil))))
   `(jabber-chat-prompt-local ((t (:foreground ,gruber-torch-yellow))))
   `(jabber-chat-prompt-system ((t (:foreground ,gruber-torch-green))))
   `(jabber-rare-time-face ((t (:foreground ,gruber-torch-green))))
   `(jabber-roster-user-online ((t (:foreground ,gruber-torch-green))))
   `(jabber-activity-face ((t (:foreground ,gruber-torch-red))))
   `(jabber-activity-personal-face ((t (:foreground ,gruber-torch-yellow :bold t))))

   ;; Line Highlighting
   `(highlight ((t (:background ,gruber-torch-bg+1 :foreground nil))))
   `(highlight-current-line-face ((t ,(list :background gruber-torch-bg+1
                                            :foreground nil))))

   ;; line numbers
   `(line-number ((t (:inherit default :foreground ,gruber-torch-bg+4))))
   `(line-number-current-line ((t (:inherit line-number :foreground ,gruber-torch-yellow))))

   ;; Linum
   `(linum ((t `(list :foreground gruber-torch-quartz
                      :background gruber-torch-bg))))

   ;; Magit
   `(magit-branch ((t (:foreground ,gruber-torch-niagara))))
   `(magit-diff-hunk-header ((t (:background ,gruber-torch-bg+2))))
   `(magit-diff-file-header ((t (:background ,gruber-torch-bg+4))))
   `(magit-log-sha1 ((t (:foreground ,gruber-torch-red+1))))
   `(magit-log-author ((t (:foreground ,gruber-torch-brown))))
   `(magit-log-head-label-remote ((t ,(list :foreground gruber-torch-green
                                            :background gruber-torch-bg+1))))
   `(magit-log-head-label-local ((t ,(list :foreground gruber-torch-niagara
                                           :background gruber-torch-bg+1))))
   `(magit-log-head-label-tags ((t ,(list :foreground gruber-torch-yellow
                                          :background gruber-torch-bg+1))))
   `(magit-log-head-label-head ((t ,(list :foreground gruber-torch-fg
                                          :background gruber-torch-bg+1))))
   `(magit-item-highlight ((t (:background ,gruber-torch-bg+1))))
   `(magit-tag ((t ,(list :foreground gruber-torch-yellow
                          :background gruber-torch-bg))))
   `(magit-blame-heading ((t ,(list :background gruber-torch-bg+1
                                    :foreground gruber-torch-fg))))

   ;; Message
   `(message-header-name ((t (:foreground ,gruber-torch-green))))

   ;; Mode Line
   `(mode-line ((t ,(list :background gruber-torch-bg+1
                          :foreground gruber-torch-white))))
   `(mode-line-buffer-id ((t ,(list :background gruber-torch-bg+1
                                    :foreground gruber-torch-white))))
   `(mode-line-inactive ((t ,(list :background gruber-torch-bg+1
                                   :foreground gruber-torch-quartz))))

   ;; Neo Dir
   `(neo-dir-link-face ((t (:foreground ,gruber-torch-niagara))))

   ;; Org Mode
   `(org-agenda-structure ((t (:foreground ,gruber-torch-niagara))))
   `(org-column ((t (:background ,gruber-torch-bg-1))))
   `(org-column-title ((t (:background ,gruber-torch-bg-1 :underline t :weight bold))))
   `(org-done ((t (:foreground ,gruber-torch-green))))
   `(org-todo ((t (:foreground ,gruber-torch-red-1))))
   `(org-upcoming-deadline ((t (:foreground ,gruber-torch-yellow))))

   ;; Search
   `(isearch ((t ,(list :foreground gruber-torch-black
                        :background gruber-torch-fg+2))))
   `(isearch-fail ((t ,(list :foreground gruber-torch-black
                             :background gruber-torch-red))))
   `(isearch-lazy-highlight-face ((t ,(list
                                       :foreground gruber-torch-fg+1
                                       :background gruber-torch-niagara-1))))

   ;; Sh
   `(sh-quoted-exec ((t (:foreground ,gruber-torch-red+1))))

   ;; Show Paren
   `(show-paren-match-face ((t (:background ,gruber-torch-bg+4))))
   `(show-paren-mismatch-face ((t (:background ,gruber-torch-red-1))))

   ;; Slime
   `(slime-repl-inputed-output-face ((t (:foreground ,gruber-torch-red))))

   ;; Tuareg
   `(tuareg-font-lock-governing-face ((t (:foreground ,gruber-torch-yellow))))

   ;; Speedbar
   `(speedbar-directory-face ((t ,(list :foreground gruber-torch-niagara
                                        :weight 'bold))))
   `(speedbar-file-face ((t (:foreground ,gruber-torch-fg))))
   `(speedbar-highlight-face ((t (:background ,gruber-torch-bg+1))))
   `(speedbar-selected-face ((t (:foreground ,gruber-torch-red))))
   `(speedbar-tag-face ((t (:foreground ,gruber-torch-yellow))))

   ;; Which Function
   `(which-func ((t (:foreground ,gruber-torch-wisteria))))

   ;; Whitespace
   `(whitespace-space ((t ,(list :background gruber-torch-bg
                                 :foreground gruber-torch-bg+1))))
   `(whitespace-tab ((t ,(list :background gruber-torch-bg
                               :foreground gruber-torch-bg+1))))
   `(whitespace-hspace ((t ,(list :background gruber-torch-bg
                                  :foreground gruber-torch-bg+2))))
   `(whitespace-line ((t ,(list :background gruber-torch-bg+2
                                :foreground gruber-torch-red+1))))
   `(whitespace-newline ((t ,(list :background gruber-torch-bg
                                   :foreground gruber-torch-bg+2))))
   `(whitespace-trailing ((t ,(list :background gruber-torch-red
                                    :foreground gruber-torch-red))))
   `(whitespace-empty ((t ,(list :background gruber-torch-yellow
                                 :foreground gruber-torch-yellow))))
   `(whitespace-indentation ((t ,(list :background gruber-torch-yellow
                                       :foreground gruber-torch-red))))
   `(whitespace-space-after-tab ((t ,(list :background gruber-torch-yellow
                                           :foreground gruber-torch-yellow))))
   `(whitespace-space-before-tab ((t ,(list :background gruber-torch-brown
                                            :foreground gruber-torch-brown))))

   ;; tab-bar
   `(tab-bar ((t (:background ,gruber-torch-bg+1 :foreground ,gruber-torch-bg+4))))
   `(tab-bar-tab ((t (:background nil :foreground ,gruber-torch-yellow :weight bold))))
   `(tab-bar-tab-inactive ((t (:background nil))))

   ;; vterm / ansi-term
   `(term-color-black ((t (:foreground ,gruber-torch-bg+3 :background ,gruber-torch-bg+4))))
   `(term-color-red ((t (:foreground ,gruber-torch-red-1 :background ,gruber-torch-red-1))))
   `(term-color-green ((t (:foreground ,gruber-torch-green :background ,gruber-torch-green))))
   `(term-color-blue ((t (:foreground ,gruber-torch-niagara :background ,gruber-torch-niagara))))
   `(term-color-yellow ((t (:foreground ,gruber-torch-yellow :background ,gruber-torch-yellow))))
   `(term-color-magenta ((t (:foreground ,gruber-torch-wisteria :background ,gruber-torch-wisteria))))
   `(term-color-cyan ((t (:foreground ,gruber-torch-quartz :background ,gruber-torch-quartz))))
   `(term-color-white ((t (:foreground ,gruber-torch-fg :background ,gruber-torch-white))))

   ;; company-mode
   `(company-tooltip ((t (:foreground ,gruber-torch-fg :background ,gruber-torch-bg+1))))
   `(company-tooltip-annotation ((t (:foreground ,gruber-torch-brown :background ,gruber-torch-bg+1))))
   `(company-tooltip-annotation-selection ((t (:foreground ,gruber-torch-brown :background ,gruber-torch-bg-1))))
   `(company-tooltip-selection ((t (:foreground ,gruber-torch-fg :background ,gruber-torch-bg-1))))
   `(company-tooltip-mouse ((t (:background ,gruber-torch-bg-1))))
   `(company-tooltip-common ((t (:foreground ,gruber-torch-green))))
   `(company-tooltip-common-selection ((t (:foreground ,gruber-torch-green))))
   `(company-scrollbar-fg ((t (:background ,gruber-torch-bg-1))))
   `(company-scrollbar-bg ((t (:background ,gruber-torch-bg+2))))
   `(company-preview ((t (:background ,gruber-torch-green))))
   `(company-preview-common ((t (:foreground ,gruber-torch-green :background ,gruber-torch-bg-1))))

   ;; Proof General
   `(proof-locked-face ((t (:background ,gruber-torch-niagara-2))))

   ;; Orderless
   `(orderless-match-face-0 ((t (:foreground ,gruber-torch-yellow))))
   `(orderless-match-face-1 ((t (:foreground ,gruber-torch-green))))
   `(orderless-match-face-2 ((t (:foreground ,gruber-torch-brown))))
   `(orderless-match-face-3 ((t (:foreground ,gruber-torch-quartz))))
   ))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'gruber-torch)

;; Local Variables:
;; no-byte-compile: t
;; indent-tabs-mode: nil
;; eval: (when (fboundp 'rainbow-mode) (rainbow-mode +1))
;; End:

;;; gruber-torch-theme.el ends here.
