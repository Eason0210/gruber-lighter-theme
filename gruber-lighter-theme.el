;;; gruber-lighter-theme.el --- Gruber Lighter color theme for Emacs 24. -*- lexical-binding: t; -*-

;; Copyright (C) 2025 Eason Huang

;; Author: Eason Huang <aqua0210@163.com>
;; URL: http://github.com/Eason0210/gruber-lighter-theme
;; Version: 0.1

;; Permission is hereby granted, free of charge, to any person
;; obtaining a copy of this software and associated documentation
;; files (the "Software"), to deal in the Software without
;; restriction, including without limitation the rights to use, copy,
;; modify, merge, publish, distribute, sublicense, and/or sell copies
;; of the Software, and to permit persons to whom the Software is
;; furnished to do so, subject to the following conditions:

;; The above copyright notice and this permission notice shall be
;; included in all copies or substantial portions of the Software.

;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
;; EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
;; MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
;; NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
;; BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
;; ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
;; CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
;; SOFTWARE.

;;; Commentary:
;;
;; Gruber Lighter color theme for Emacs.
;; A lighter variant of the Gruber Dark theme for BBEdit by John Gruber.
;; Adapted for deftheme and extended by Eason Huang.

(deftheme gruber-lighter
  "Gruber Lighter color theme for Emacs 24")

;; Please, install rainbow-mode.
;; Colors with +x are lighter. Colors with -x are darker.
(let ((gruber-lighter-fg        "#333333")
      (gruber-lighter-fg+1      "gray40")
      (gruber-lighter-fg+2      "gray80")
      (gruber-lighter-white     "#000000")
      (gruber-lighter-black     "#ffffff")
      (gruber-lighter-bg-1      "#e9e9e9")
      (gruber-lighter-bg        "#ededec")
      (gruber-lighter-bg+1      "#e0e0e0")
      (gruber-lighter-bg+2      "#c4c4c7")
      (gruber-lighter-bg+3      "#b8bcc0")
      (gruber-lighter-bg+4      "#a8a8a8")
      (gruber-lighter-red-1     "#f43841")
      (gruber-lighter-red       "#d02324")
      (gruber-lighter-red+1     "#aa0000") ;; python decorators, #c73a82 triple string, #c63981 H-doc string,
      (gruber-lighter-green     "#008000")
      (gruber-lighter-yellow    "gold4") ;; #f0ec19
      (gruber-lighter-orange    "#bb5f0c")
      (gruber-lighter-brown     "#9b3f22")
      (gruber-lighter-quartz    "#586e64") ;; #7b8c84
      (gruber-lighter-niagara-2 "#326699")
      (gruber-lighter-niagara-1 "#4d4c80")
      (gruber-lighter-niagara   "#3333b4") ;; #037581 built-in keyword
      (gruber-lighter-wisteria  "#746b99")
      )
  (custom-theme-set-variables
   'gruber-lighter
   '(frame-background-mode (quote light)))

  (custom-theme-set-faces
   'gruber-lighter

   ;; Agda2
   `(agda2-highlight-datatype-face ((t (:foreground ,gruber-lighter-quartz))))
   `(agda2-highlight-primitive-type-face ((t (:foreground ,gruber-lighter-quartz))))
   `(agda2-highlight-function-face ((t (:foreground ,gruber-lighter-niagara))))
   `(agda2-highlight-keyword-face ((t ,(list :foreground gruber-lighter-yellow
                                             :bold t))))
   `(agda2-highlight-inductive-constructor-face ((t (:foreground ,gruber-lighter-green))))
   `(agda2-highlight-number-face ((t (:foreground ,gruber-lighter-wisteria))))

   ;; AUCTeX
   `(font-latex-bold-face ((t (:foreground ,gruber-lighter-quartz :bold t))))
   `(font-latex-italic-face ((t (:foreground ,gruber-lighter-quartz :italic t))))
   `(font-latex-math-face ((t (:foreground ,gruber-lighter-green))))
   `(font-latex-sectioning-5-face ((t ,(list :foreground gruber-lighter-niagara
                                             :bold t))))
   `(font-latex-slide-title-face ((t (:foreground ,gruber-lighter-niagara))))
   `(font-latex-string-face ((t (:foreground ,gruber-lighter-green))))
   `(font-latex-warning-face ((t (:foreground ,gruber-lighter-red))))

   ;; Basic Coloring (or Uncategorized)
   `(border ((t ,(list :background gruber-lighter-bg-1
                       :foreground gruber-lighter-bg+2))))
   `(cursor ((t (:background ,gruber-lighter-niagara))))
   `(default ((t ,(list :foreground gruber-lighter-fg
                        :background gruber-lighter-bg))))
   `(fringe ((t ,(list :background 'unspecified
                       :foreground gruber-lighter-bg+2))))
   `(vertical-border ((t ,(list :foreground gruber-lighter-bg+2))))
   `(link ((t (:foreground ,gruber-lighter-niagara :underline t))))
   `(link-visited ((t (:foreground ,gruber-lighter-wisteria :underline t))))
   `(match ((t (:background ,gruber-lighter-bg+4))))
   `(shadow ((t (:foreground ,gruber-lighter-bg+4))))
   `(minibuffer-prompt ((t (:foreground ,gruber-lighter-niagara))))
   `(region ((t (:background ,gruber-lighter-bg+3 :foreground unspecified))))
   `(secondary-selection ((t ,(list :background gruber-lighter-bg+3
                                    :foreground 'unspecified))))
   `(trailing-whitespace ((t ,(list :foreground gruber-lighter-black
                                    :background gruber-lighter-red))))
   `(tooltip ((t ,(list :background gruber-lighter-bg+4
                        :foreground gruber-lighter-white))))
   `(error ((t (:foreground ,gruber-lighter-red+1))))

   ;; Calendar
   `(holiday-face ((t (:foreground ,gruber-lighter-red))))

   ;; Compilation
   `(compilation-info ((t ,(list :foreground gruber-lighter-green
                                 :inherit 'unspecified))))
   `(compilation-warning ((t ,(list :foreground gruber-lighter-brown
                                    :bold t
                                    :inherit 'unspecified))))
   `(compilation-error ((t (:foreground ,gruber-lighter-red+1))))
   `(compilation-mode-line-fail ((t ,(list :foreground gruber-lighter-red
                                           :weight 'bold
                                           :inherit 'unspecified))))
   `(compilation-mode-line-exit ((t ,(list :foreground gruber-lighter-green
                                           :weight 'bold
                                           :inherit 'unspecified))))

   ;; Completion
   `(completions-annotations ((t (:inherit 'shadow))))

   ;; Custom
   `(custom-state ((t (:foreground ,gruber-lighter-green))))

   ;; Diff
   `(diff-removed ((t ,(list :foreground gruber-lighter-red+1
                             :background 'unspecified))))
   `(diff-added ((t ,(list :foreground gruber-lighter-green
                           :background 'unspecified))))

   ;; Dired
   `(dired-directory ((t (:foreground ,gruber-lighter-niagara :weight bold))))
   `(dired-ignored ((t ,(list :foreground gruber-lighter-quartz
                              :inherit 'unspecified))))

   ;; Ebrowse
   `(ebrowse-root-class ((t (:foreground ,gruber-lighter-niagara :weight bold))))
   `(ebrowse-progress ((t (:background ,gruber-lighter-niagara))))

   ;; Egg
   `(egg-branch ((t (:foreground ,gruber-lighter-yellow))))
   `(egg-branch-mono ((t (:foreground ,gruber-lighter-yellow))))
   `(egg-diff-add ((t (:foreground ,gruber-lighter-green))))
   `(egg-diff-del ((t (:foreground ,gruber-lighter-red))))
   `(egg-diff-file-header ((t (:foreground ,gruber-lighter-wisteria))))
   `(egg-help-header-1 ((t (:foreground ,gruber-lighter-yellow))))
   `(egg-help-header-2 ((t (:foreground ,gruber-lighter-niagara))))
   `(egg-log-HEAD-name ((t (:box (:color ,gruber-lighter-fg)))))
   `(egg-reflog-mono ((t (:foreground ,gruber-lighter-niagara-1))))
   `(egg-section-title ((t (:foreground ,gruber-lighter-yellow))))
   `(egg-text-base ((t (:foreground ,gruber-lighter-fg))))
   `(egg-term ((t (:foreground ,gruber-lighter-yellow))))

   ;; ERC
   `(erc-notice-face ((t (:foreground ,gruber-lighter-wisteria))))
   `(erc-timestamp-face ((t (:foreground ,gruber-lighter-green))))
   `(erc-input-face ((t (:foreground ,gruber-lighter-red+1))))
   `(erc-my-nick-face ((t (:foreground ,gruber-lighter-red+1))))

   ;; EShell
   `(eshell-ls-backup ((t (:foreground ,gruber-lighter-quartz))))
   `(eshell-ls-directory ((t (:foreground ,gruber-lighter-niagara))))
   `(eshell-ls-executable ((t (:foreground ,gruber-lighter-green))))
   `(eshell-ls-symlink ((t (:foreground ,gruber-lighter-yellow))))

   ;; Font Lock
   `(font-lock-builtin-face ((t (:foreground ,gruber-lighter-niagara))))
   `(font-lock-comment-face ((t (:foreground ,gruber-lighter-brown))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,gruber-lighter-brown))))
   `(font-lock-constant-face ((t (:foreground ,gruber-lighter-quartz))))
   `(font-lock-doc-face ((t (:foreground ,gruber-lighter-green))))
   `(font-lock-doc-string-face ((t (:foreground ,gruber-lighter-green))))
   `(font-lock-function-name-face ((t (:foreground ,gruber-lighter-niagara-2))))
   `(font-lock-keyword-face ((t (:foreground ,gruber-lighter-niagara :bold t))))
   `(font-lock-preprocessor-face ((t (:foreground ,gruber-lighter-quartz))))
   `(font-lock-reference-face ((t (:foreground ,gruber-lighter-quartz))))
   `(font-lock-string-face ((t (:foreground ,gruber-lighter-green))))
   `(font-lock-type-face ((t (:foreground ,gruber-lighter-quartz))))
   `(font-lock-variable-name-face ((t (:foreground ,gruber-lighter-fg+1))))
   `(font-lock-warning-face ((t (:foreground ,gruber-lighter-red))))

   ;; Flymake
   `(flymake-errline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,gruber-lighter-red)
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:foreground ,gruber-lighter-red :weight bold :underline t))))
   `(flymake-warnline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,gruber-lighter-yellow)
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:forground ,gruber-lighter-yellow :weight bold :underline t))))
   `(flymake-infoline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,gruber-lighter-green)
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:forground ,gruber-lighter-green :weight bold :underline t))))

   ;; Flyspell
   `(flyspell-incorrect
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,gruber-lighter-red) :inherit unspecified))
      (t (:foreground ,gruber-lighter-red :weight bold :underline t))))
   `(flyspell-duplicate
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,gruber-lighter-yellow) :inherit unspecified))
      (t (:foreground ,gruber-lighter-yellow :weight bold :underline t))))

   ;; Helm
   `(helm-candidate-number ((t ,(list :background gruber-lighter-bg+2
                                      :foreground gruber-lighter-yellow
                                      :bold t))))
   `(helm-ff-directory ((t ,(list :foreground gruber-lighter-niagara
                                  :background gruber-lighter-bg
                                  :bold t))))
   `(helm-ff-executable ((t (:foreground ,gruber-lighter-green))))
   `(helm-ff-file ((t (:foreground ,gruber-lighter-fg :inherit unspecified))))
   `(helm-ff-invalid-symlink ((t ,(list :foreground gruber-lighter-bg
                                        :background gruber-lighter-red))))
   `(helm-ff-symlink ((t (:foreground ,gruber-lighter-yellow :bold t))))
   `(helm-selection-line ((t (:background ,gruber-lighter-bg+1))))
   `(helm-selection ((t (:background ,gruber-lighter-bg+1 :underline nil))))
   `(helm-source-header ((t ,(list :foreground gruber-lighter-yellow
                                   :background gruber-lighter-bg
                                   :box (list :line-width -1
                                              :style 'released-button)))))

   ;; Ido
   `(ido-first-match ((t (:foreground ,gruber-lighter-yellow :bold nil))))
   `(ido-only-match ((t (:foreground ,gruber-lighter-brown :weight bold))))
   `(ido-subdir ((t (:foreground ,gruber-lighter-niagara :weight bold))))

   ;; Info
   `(info-xref ((t (:foreground ,gruber-lighter-niagara))))
   `(info-visited ((t (:foreground ,gruber-lighter-wisteria))))
   `(Info-quoted ((t (:inherit font-lock-constant-face))))
   `(info-menu-header ((t (:foreground ,gruber-lighter-green :weight bold :height 1.4))))
   `(info-menu-star ((t (:foreground ,gruber-lighter-yellow))))
   `(info-node ((t (:foreground ,gruber-lighter-green :weight bold :slant italic))))
   `(info-title-1 ((t (:weight bold :height 1.4))))
   `(info-title-2 ((t (:weight bold :height 1.2))))
   `(info-title-3 ((t (:weight bold :foreground ,gruber-lighter-brown))))
   `(info-title-4 ((t (:weight bold :foreground ,gruber-lighter-wisteria))))

   ;; Jabber
   `(jabber-chat-prompt-foreign ((t ,(list :foreground gruber-lighter-quartz
                                           :bold nil))))
   `(jabber-chat-prompt-local ((t (:foreground ,gruber-lighter-yellow))))
   `(jabber-chat-prompt-system ((t (:foreground ,gruber-lighter-green))))
   `(jabber-rare-time-face ((t (:foreground ,gruber-lighter-green))))
   `(jabber-roster-user-online ((t (:foreground ,gruber-lighter-green))))
   `(jabber-activity-face ((t (:foreground ,gruber-lighter-red))))
   `(jabber-activity-personal-face ((t (:foreground ,gruber-lighter-yellow :bold t))))

   ;; Line Highlighting
   `(highlight ((t (:background ,gruber-lighter-bg+1 :foreground unspecified))))
   `(highlight-current-line-face ((t ,(list :background gruber-lighter-bg+1
                                            :foreground 'unspecified))))

   ;; line numbers
   `(line-number ((t (:inherit default :foreground ,gruber-lighter-bg+4))))
   `(line-number-current-line ((t (:inherit line-number :foreground ,gruber-lighter-yellow))))

   ;; Linum
   `(linum ((t `(list :foreground gruber-lighter-quartz
                      :background gruber-lighter-bg))))

   ;; Magit
   `(magit-branch ((t (:foreground ,gruber-lighter-niagara-2))))
   `(magit-branch-local ((t (:foreground ,gruber-lighter-niagara-2))))
   `(magit-branch-remote ((t (:foreground ,gruber-lighter-green))))
   `(magit-diff-hunk-header ((t (:background ,gruber-lighter-bg+2))))
   `(magit-diff-file-header ((t (:background ,gruber-lighter-bg+4))))
   `(magit-log-sha1 ((t (:foreground ,gruber-lighter-red+1))))
   `(magit-log-author ((t (:foreground ,gruber-lighter-brown))))
   `(magit-log-head-label-remote ((t ,(list :foreground gruber-lighter-green
                                            :background gruber-lighter-bg+1))))
   `(magit-log-head-label-local ((t ,(list :foreground gruber-lighter-niagara-2
                                           :background gruber-lighter-bg+1))))
   `(magit-log-head-label-tags ((t ,(list :foreground gruber-lighter-yellow
                                          :background gruber-lighter-bg+1))))
   `(magit-log-head-label-head ((t ,(list :foreground gruber-lighter-fg
                                          :background gruber-lighter-bg+1))))
   `(magit-item-highlight ((t (:background ,gruber-lighter-bg+1))))
   `(magit-tag ((t ,(list :foreground gruber-lighter-yellow
                          :background gruber-lighter-bg))))
   `(magit-blame-heading ((t ,(list :background gruber-lighter-bg+1
                                    :foreground gruber-lighter-fg))))

   ;; Message
   `(message-header-name ((t (:foreground ,gruber-lighter-green))))

   ;; Mode Line
   `(mode-line ((t ,(list :background gruber-lighter-bg+1
                          :foreground gruber-lighter-white))))
   `(mode-line-buffer-id ((t ,(list :background gruber-lighter-bg+1
                                    :foreground gruber-lighter-white))))
   `(mode-line-inactive ((t ,(list :background gruber-lighter-bg+1
                                   :foreground gruber-lighter-quartz))))
   ;; header-line
   `(header-line ((t (:inherit mode-line))))

   ;; Neo Dir
   `(neo-dir-link-face ((t (:foreground ,gruber-lighter-niagara))))

   ;; Org Mode
   `(org-agenda-done ((t (:foreground ,gruber-lighter-green))))
   `(org-agenda-structure ((t (:foreground ,gruber-lighter-niagara-2 :height 1.1))))
   `(org-block ((t (:background ,gruber-lighter-bg+1))))
   `(org-block-begin-line ((t (:foreground ,gruber-lighter-bg+4 :slant italic))))
   `(org-block-end-line ((t (:foreground ,gruber-lighter-bg+4 :slant italic))))
   `(org-code ((t (:foreground ,gruber-lighter-yellow))))
   `(org-column ((t (:background ,gruber-lighter-bg-1))))
   `(org-column-title ((t (:background ,gruber-lighter-bg-1 :underline t :weight bold))))
   `(org-document-title ((t (:foreground ,gruber-lighter-wisteria :weight bold :height 1.4))))
   `(org-document-info ((t (:foreground ,gruber-lighter-green))))
   `(org-document-info-keyword ((t (:foreground ,gruber-lighter-bg+4))))
   `(org-done ((t (:foreground ,gruber-lighter-green))))
   `(org-todo ((t (:foreground ,gruber-lighter-red-1))))
   `(org-upcoming-deadline ((t (:foreground ,gruber-lighter-yellow))))
   `(org-scheduled-previously ((t (:foreground ,gruber-lighter-orange))))
   `(org-table ((t (:foreground ,gruber-lighter-wisteria))))

   ;; Search
   `(isearch ((t ,(list :foreground gruber-lighter-black
                        :background gruber-lighter-fg+2))))
   `(isearch-fail ((t ,(list :foreground gruber-lighter-black
                             :background gruber-lighter-red))))
   `(isearch-lazy-highlight-face ((t ,(list
                                       :foreground gruber-lighter-fg+1
                                       :background gruber-lighter-niagara-1))))

   ;; Sh
   `(sh-quoted-exec ((t (:foreground ,gruber-lighter-red+1))))

   ;; Show Paren
   `(show-paren-match-face ((t (:background ,gruber-lighter-bg+4))))
   `(show-paren-mismatch-face ((t (:background ,gruber-lighter-red-1))))

   ;; Slime
   `(slime-repl-inputed-output-face ((t (:foreground ,gruber-lighter-red))))

   ;; Tuareg
   `(tuareg-font-lock-governing-face ((t (:foreground ,gruber-lighter-yellow))))

   ;; Speedbar
   `(speedbar-directory-face ((t ,(list :foreground gruber-lighter-niagara
                                        :weight 'bold))))
   `(speedbar-file-face ((t (:foreground ,gruber-lighter-fg))))
   `(speedbar-highlight-face ((t (:background ,gruber-lighter-bg+1))))
   `(speedbar-selected-face ((t (:foreground ,gruber-lighter-red))))
   `(speedbar-tag-face ((t (:foreground ,gruber-lighter-yellow))))

   ;; Which Function
   `(which-func ((t (:foreground ,gruber-lighter-wisteria))))

   ;; Whitespace
   `(whitespace-space ((t ,(list :background gruber-lighter-bg
                                 :foreground gruber-lighter-bg+1))))
   `(whitespace-tab ((t ,(list :background gruber-lighter-bg
                               :foreground gruber-lighter-bg+1))))
   `(whitespace-hspace ((t ,(list :background gruber-lighter-bg
                                  :foreground gruber-lighter-bg+2))))
   `(whitespace-line ((t ,(list :background gruber-lighter-bg+2
                                :foreground gruber-lighter-red+1))))
   `(whitespace-newline ((t ,(list :background gruber-lighter-bg
                                   :foreground gruber-lighter-bg+2))))
   `(whitespace-trailing ((t ,(list :background gruber-lighter-red
                                    :foreground gruber-lighter-red))))
   `(whitespace-empty ((t ,(list :background gruber-lighter-yellow
                                 :foreground gruber-lighter-yellow))))
   `(whitespace-indentation ((t ,(list :background gruber-lighter-yellow
                                       :foreground gruber-lighter-red))))
   `(whitespace-space-after-tab ((t ,(list :background gruber-lighter-yellow
                                           :foreground gruber-lighter-yellow))))
   `(whitespace-space-before-tab ((t ,(list :background gruber-lighter-brown
                                            :foreground gruber-lighter-brown))))

   ;; tab-bar
   `(tab-bar ((t (:background ,gruber-lighter-bg+1 :foreground ,gruber-lighter-bg+4))))
   `(tab-bar-tab ((t (:background unspecified :foreground ,gruber-lighter-yellow :weight bold))))
   `(tab-bar-tab-inactive ((t (:background unspecified))))

   ;; vterm / ansi-term
   `(term-color-black ((t (:foreground ,gruber-lighter-bg+3 :background ,gruber-lighter-bg+4))))
   `(term-color-red ((t (:foreground ,gruber-lighter-red-1 :background ,gruber-lighter-red-1))))
   `(term-color-green ((t (:foreground ,gruber-lighter-green :background ,gruber-lighter-green))))
   `(term-color-blue ((t (:foreground ,gruber-lighter-niagara :background ,gruber-lighter-niagara))))
   `(term-color-yellow ((t (:foreground ,gruber-lighter-yellow :background ,gruber-lighter-yellow))))
   `(term-color-magenta ((t (:foreground ,gruber-lighter-wisteria :background ,gruber-lighter-wisteria))))
   `(term-color-cyan ((t (:foreground ,gruber-lighter-quartz :background ,gruber-lighter-quartz))))
   `(term-color-white ((t (:foreground ,gruber-lighter-fg :background ,gruber-lighter-white))))

   ;; ansi-color (built-in)
   `(ansi-color-black ((t (:foreground ,gruber-lighter-bg+3 :background ,gruber-lighter-bg+4))))
   `(ansi-color-red ((t (:foreground ,gruber-lighter-red-1 :background ,gruber-lighter-red-1))))
   `(ansi-color-green ((t (:foreground ,gruber-lighter-green :background ,gruber-lighter-green))))
   `(ansi-color-blue ((t (:foreground ,gruber-lighter-niagara :background ,gruber-lighter-niagara))))
   `(ansi-color-yellow ((t (:foreground ,gruber-lighter-yellow :background ,gruber-lighter-yellow))))
   `(ansi-color-magenta ((t (:foreground ,gruber-lighter-wisteria :background ,gruber-lighter-wisteria))))
   `(ansi-color-cyan ((t (:foreground ,gruber-lighter-quartz :background ,gruber-lighter-quartz))))
   `(ansi-color-white ((t (:foreground ,gruber-lighter-fg :background ,gruber-lighter-white))))
   `(ansi-color-bright-black ((t (:inherit ansi-color-black :weight bold))))
   `(ansi-color-bright-red ((t (:inherit ansi-color-red :weight bold))))
   `(ansi-color-bright-green ((t (:inherit ansi-color-green :weight bold))))
   `(ansi-color-bright-yellow ((t (:inherit ansi-color-yellow :weight bold))))
   `(ansi-color-bright-blue ((t (:inherit ansi-color-blue :weight bold))))
   `(ansi-color-bright-magenta ((t (:inherit ansi-color-magenta :weight bold))))
   `(ansi-color-bright-cyan ((t (:inherit ansi-color-cyan :weight bold))))
   `(ansi-color-bright-white ((t (:inherit ansi-color-white :weight bold))))

   ;; company-mode
   `(company-tooltip ((t (:foreground ,gruber-lighter-fg :background ,gruber-lighter-bg+1))))
   `(company-tooltip-annotation ((t (:foreground ,gruber-lighter-brown :background ,gruber-lighter-bg+1))))
   `(company-tooltip-annotation-selection ((t (:foreground ,gruber-lighter-brown :background ,gruber-lighter-bg-1))))
   `(company-tooltip-selection ((t (:foreground ,gruber-lighter-fg :background ,gruber-lighter-bg-1))))
   `(company-tooltip-mouse ((t (:background ,gruber-lighter-bg-1))))
   `(company-tooltip-common ((t (:foreground ,gruber-lighter-green))))
   `(company-tooltip-common-selection ((t (:foreground ,gruber-lighter-green))))
   `(company-scrollbar-fg ((t (:background ,gruber-lighter-bg-1))))
   `(company-scrollbar-bg ((t (:background ,gruber-lighter-bg+2))))
   `(company-preview ((t (:background ,gruber-lighter-green))))
   `(company-preview-common ((t (:foreground ,gruber-lighter-green :background ,gruber-lighter-bg-1))))

   ;; Proof General
   `(proof-locked-face ((t (:background ,gruber-lighter-niagara-2))))

   ;; Orderless
   `(orderless-match-face-0 ((t (:foreground ,gruber-lighter-yellow))))
   `(orderless-match-face-1 ((t (:foreground ,gruber-lighter-green))))
   `(orderless-match-face-2 ((t (:foreground ,gruber-lighter-brown))))
   `(orderless-match-face-3 ((t (:foreground ,gruber-lighter-quartz))))

   ;; diff-hl
   `(diff-hl-insert ((t (:inherit diff-added))))
   `(diff-hl-change ((t (:background unspecified :foreground ,gruber-lighter-niagara))))
   `(diff-hl-delete ((t (:inherit diff-removed))))

   ;; breadcrumb
   `(breadcrumb-face ((t (:background ,gruber-lighter-bg+1 :foreground ,gruber-lighter-fg))))
   `(breadcrumb-project-leaf-face ((t (:inherit mode-line-buffer-id :bold t))))

   ;; symbol-overlay
   `(symbol-overlay-default-face ((t (:inherit highlight :underline t))))

   ;; diredfl
   `(diredfl-dir-heading ((t (:inherit font-lock-string-face))))
   `(diredfl-dir-name ((t (:inherit dired-directory))))
   `(diredfl-file-name ((t (:foreground ,gruber-lighter-yellow ))))
   `(diredfl-file-suffix ((t (:foreground ,gruber-lighter-green))))
   `(diredfl-flag-mark ((t (:inherit dired-mark))))
   `(diredfl-flag-mark-line ((t (:background unspecified :inherit highlight))))
   `(diredfl-deletion ((t (:inherit error :inverse-video t))))
   `(diredfl-deletion-file-name ((t (:inherit error))))
   `(diredfl-compressed-file-suffix ((t (:foreground ,gruber-lighter-red))))
   `(diredfl-compressed-file-name ((t (:foreground ,gruber-lighter-red))))
   `(diredfl-ignored-file-name ((t (:inherit dired-ignored))))
   `(diredfl-symlink ((t (:foreground ,gruber-lighter-wisteria))))
   `(diredfl-number ((t (:foreground ,gruber-lighter-brown))))
   `(diredfl-date-time ((t (:foreground ,gruber-lighter-wisteria))))
   `(diredfl-no-priv ((t (:background unspecified))))
   `(diredfl-dir-priv ((t (:inherit dired-directory))))
   `(diredfl-read-priv ((t (:foreground ,gruber-lighter-green :background unspecified))))
   `(diredfl-write-priv ((t (:foreground ,gruber-lighter-brown :background unspecified))))
   `(diredfl-exec-priv ((t (:foreground ,gruber-lighter-yellow :background unspecified))))
   `(diredfl-executable-tag ((t (:foreground ,gruber-lighter-brown :background unspecified))))
   `(diredfl-link-priv ((t (:foreground ,gruber-lighter-wisteria :background unspecified))))
   `(diredfl-other-priv ((t (:foreground ,gruber-lighter-quartz :background unspecified))))
   `(diredfl-rare-priv ((t (:foreground ,gruber-lighter-red :background unspecified))))

   ;; Outline (built-in)
   `(outline-2 ((t (:foreground ,gruber-lighter-yellow))))
   `(outline-3 ((t (:foreground ,gruber-lighter-green))))
   `(outline-6 ((t (:foreground ,gruber-lighter-niagara-2))))

   ;; Rainbow-delimiters (borrowed from `leuven-dark-theme')
   `(rainbow-delimiters-depth-1-face ((t (:foreground "#938e84"))))
   `(rainbow-delimiters-depth-2-face ((t (:foreground "#907733"))))
   `(rainbow-delimiters-depth-3-face ((t (:foreground "#736e84"))))
   `(rainbow-delimiters-depth-4-face ((t (:foreground "#936797"))))
   `(rainbow-delimiters-depth-5-face ((t (:foreground "#738c94"))))
   `(rainbow-delimiters-depth-6-face ((t (:foreground "#a1894f"))))
   `(rainbow-delimiters-depth-7-face ((t (:foreground "#7e7a87"))))
   `(rainbow-delimiters-depth-8-face ((t (:foreground "#835787"))))
   `(rainbow-delimiters-depth-9-face ((t (:foreground "#7b8f97"))))
   `(rainbow-delimiters-mismatched-face ((t (:underline t :background "#065a64"))))
   `(rainbow-delimiters-unmatched-face ((t (:underline t :background "#065a64"))))

   ))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'gruber-lighter)

;; Local Variables:
;; no-byte-compile: t
;; indent-tabs-mode: nil
;; End:

;;; gruber-lighter-theme.el ends here.
