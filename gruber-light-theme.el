;;; gruber-light-theme.el --- Gruber Light color theme -*- lexical-binding: t; -*-

;; Copyright (C) 2025 Eason Huang

;; Author: Eason Huang <aqua0210@163.com>
;; URL: http://github.com/Eason0210/gruber-light-theme
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
;; Gruber Light color theme for Emacs is light variant of the Gruber Light
;; theme for BBEdit by John Gruber. Adapted for deftheme and extended by Eason.


(deftheme gruber-light
  "Gruber Darker color theme for Emacs 24")

;; Please, install rainbow-mode.
;; Colors with +x are lighter. Colors with -x are darker.
(let ((gruber-light-fg        "#333333")
      (gruber-light-fg+1      "gray40")
      (gruber-light-fg+2      "gray80")
      (gruber-light-white     "#000000")
      (gruber-light-black     "#ffffff")
      (gruber-light-bg-1      "#e9e9e9")
      (gruber-light-bg        "#ededec")
      (gruber-light-bg+1      "#e0e0e0")
      (gruber-light-bg+2      "#c4c4c7")
      (gruber-light-bg+3      "#b8bcc0")
      (gruber-light-bg+4      "#a8a8a8")
      (gruber-light-red-1     "#c73c3f")
      (gruber-light-red       "#f43841")
      (gruber-light-red+1     "#ff4f58") ;; #c63981 H-doc string
      (gruber-light-green     "#008000")
      (gruber-light-yellow-1  "#fffb1a")
      (gruber-light-yellow    "gold4") ;; #f0ec19
      (gruber-light-orange    "#bb5f0c")
      (gruber-light-brown     "#9b3f22")
      (gruber-light-quartz    "#586e64") ;; #7b8c84
      (gruber-light-niagara-2 "#326699")
      (gruber-light-niagara-1 "#4d4c80")
      (gruber-light-niagara   "#3333b4") ;; #037581 built-in keyword
      (gruber-light-wisteria  "#9e95c7")
      )
  (custom-theme-set-variables
   'gruber-light
   '(frame-background-mode (quote light)))

  (custom-theme-set-faces
   'gruber-light

   ;; Agda2
   `(agda2-highlight-datatype-face ((t (:foreground ,gruber-light-quartz))))
   `(agda2-highlight-primitive-type-face ((t (:foreground ,gruber-light-quartz))))
   `(agda2-highlight-function-face ((t (:foreground ,gruber-light-niagara))))
   `(agda2-highlight-keyword-face ((t ,(list :foreground gruber-light-yellow
                                             :bold t))))
   `(agda2-highlight-inductive-constructor-face ((t (:foreground ,gruber-light-green))))
   `(agda2-highlight-number-face ((t (:foreground ,gruber-light-wisteria))))

   ;; AUCTeX
   `(font-latex-bold-face ((t (:foreground ,gruber-light-quartz :bold t))))
   `(font-latex-italic-face ((t (:foreground ,gruber-light-quartz :italic t))))
   `(font-latex-math-face ((t (:foreground ,gruber-light-green))))
   `(font-latex-sectioning-5-face ((t ,(list :foreground gruber-light-niagara
                                             :bold t))))
   `(font-latex-slide-title-face ((t (:foreground ,gruber-light-niagara))))
   `(font-latex-string-face ((t (:foreground ,gruber-light-green))))
   `(font-latex-warning-face ((t (:foreground ,gruber-light-red))))

   ;; Basic Coloring (or Uncategorized)
   `(border ((t ,(list :background gruber-light-bg-1
                       :foreground gruber-light-bg+2))))
   `(cursor ((t (:background ,gruber-light-niagara))))
   `(default ((t ,(list :foreground gruber-light-fg
                        :background gruber-light-bg))))
   `(fringe ((t ,(list :background 'unspecified
                       :foreground gruber-light-bg+2))))
   `(vertical-border ((t ,(list :foreground gruber-light-bg+2))))
   `(link ((t (:foreground ,gruber-light-niagara :underline t))))
   `(link-visited ((t (:foreground ,gruber-light-wisteria :underline t))))
   `(match ((t (:background ,gruber-light-bg+4))))
   `(shadow ((t (:foreground ,gruber-light-bg+4))))
   `(minibuffer-prompt ((t (:foreground ,gruber-light-niagara))))
   `(region ((t (:background ,gruber-light-bg+3 :foreground unspecified))))
   `(secondary-selection ((t ,(list :background gruber-light-bg+3
                                    :foreground 'unspecified))))
   `(trailing-whitespace ((t ,(list :foreground gruber-light-black
                                    :background gruber-light-red))))
   `(tooltip ((t ,(list :background gruber-light-bg+4
                        :foreground gruber-light-white))))
   `(error ((t (:foreground ,gruber-light-red+1))))

   ;; Calendar
   `(holiday-face ((t (:foreground ,gruber-light-red))))

   ;; Compilation
   `(compilation-info ((t ,(list :foreground gruber-light-green
                                 :inherit 'unspecified))))
   `(compilation-warning ((t ,(list :foreground gruber-light-brown
                                    :bold t
                                    :inherit 'unspecified))))
   `(compilation-error ((t (:foreground ,gruber-light-red+1))))
   `(compilation-mode-line-fail ((t ,(list :foreground gruber-light-red
                                           :weight 'bold
                                           :inherit 'unspecified))))
   `(compilation-mode-line-exit ((t ,(list :foreground gruber-light-green
                                           :weight 'bold
                                           :inherit 'unspecified))))

   ;; Completion
   `(completions-annotations ((t (:inherit 'shadow))))

   ;; Custom
   `(custom-state ((t (:foreground ,gruber-light-green))))

   ;; Diff
   `(diff-removed ((t ,(list :foreground gruber-light-red+1
                             :background 'unspecified))))
   `(diff-added ((t ,(list :foreground gruber-light-green
                           :background 'unspecified))))

   ;; Dired
   `(dired-directory ((t (:foreground ,gruber-light-niagara :weight bold))))
   `(dired-ignored ((t ,(list :foreground gruber-light-quartz
                              :inherit 'unspecified))))

   ;; Ebrowse
   `(ebrowse-root-class ((t (:foreground ,gruber-light-niagara :weight bold))))
   `(ebrowse-progress ((t (:background ,gruber-light-niagara))))

   ;; Egg
   `(egg-branch ((t (:foreground ,gruber-light-yellow))))
   `(egg-branch-mono ((t (:foreground ,gruber-light-yellow))))
   `(egg-diff-add ((t (:foreground ,gruber-light-green))))
   `(egg-diff-del ((t (:foreground ,gruber-light-red))))
   `(egg-diff-file-header ((t (:foreground ,gruber-light-wisteria))))
   `(egg-help-header-1 ((t (:foreground ,gruber-light-yellow))))
   `(egg-help-header-2 ((t (:foreground ,gruber-light-niagara))))
   `(egg-log-HEAD-name ((t (:box (:color ,gruber-light-fg)))))
   `(egg-reflog-mono ((t (:foreground ,gruber-light-niagara-1))))
   `(egg-section-title ((t (:foreground ,gruber-light-yellow))))
   `(egg-text-base ((t (:foreground ,gruber-light-fg))))
   `(egg-term ((t (:foreground ,gruber-light-yellow))))

   ;; ERC
   `(erc-notice-face ((t (:foreground ,gruber-light-wisteria))))
   `(erc-timestamp-face ((t (:foreground ,gruber-light-green))))
   `(erc-input-face ((t (:foreground ,gruber-light-red+1))))
   `(erc-my-nick-face ((t (:foreground ,gruber-light-red+1))))

   ;; EShell
   `(eshell-ls-backup ((t (:foreground ,gruber-light-quartz))))
   `(eshell-ls-directory ((t (:foreground ,gruber-light-niagara))))
   `(eshell-ls-executable ((t (:foreground ,gruber-light-green))))
   `(eshell-ls-symlink ((t (:foreground ,gruber-light-yellow))))

   ;; Font Lock
   `(font-lock-builtin-face ((t (:foreground ,gruber-light-niagara))))
   `(font-lock-comment-face ((t (:foreground ,gruber-light-brown))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,gruber-light-brown))))
   `(font-lock-constant-face ((t (:foreground ,gruber-light-quartz))))
   `(font-lock-doc-face ((t (:foreground ,gruber-light-green))))
   `(font-lock-doc-string-face ((t (:foreground ,gruber-light-green))))
   `(font-lock-function-name-face ((t (:foreground ,gruber-light-niagara-2))))
   `(font-lock-keyword-face ((t (:foreground ,gruber-light-niagara :bold t))))
   `(font-lock-preprocessor-face ((t (:foreground ,gruber-light-quartz))))
   `(font-lock-reference-face ((t (:foreground ,gruber-light-quartz))))
   `(font-lock-string-face ((t (:foreground ,gruber-light-green))))
   `(font-lock-type-face ((t (:foreground ,gruber-light-quartz))))
   `(font-lock-variable-name-face ((t (:foreground ,gruber-light-fg+1))))
   `(font-lock-warning-face ((t (:foreground ,gruber-light-red))))

   ;; Flymake
   `(flymake-errline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,gruber-light-red)
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:foreground ,gruber-light-red :weight bold :underline t))))
   `(flymake-warnline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,gruber-light-yellow)
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:forground ,gruber-light-yellow :weight bold :underline t))))
   `(flymake-infoline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,gruber-light-green)
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:forground ,gruber-light-green :weight bold :underline t))))

   ;; Flyspell
   `(flyspell-incorrect
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,gruber-light-red) :inherit unspecified))
      (t (:foreground ,gruber-light-red :weight bold :underline t))))
   `(flyspell-duplicate
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,gruber-light-yellow) :inherit unspecified))
      (t (:foreground ,gruber-light-yellow :weight bold :underline t))))

   ;; Helm
   `(helm-candidate-number ((t ,(list :background gruber-light-bg+2
                                      :foreground gruber-light-yellow
                                      :bold t))))
   `(helm-ff-directory ((t ,(list :foreground gruber-light-niagara
                                  :background gruber-light-bg
                                  :bold t))))
   `(helm-ff-executable ((t (:foreground ,gruber-light-green))))
   `(helm-ff-file ((t (:foreground ,gruber-light-fg :inherit unspecified))))
   `(helm-ff-invalid-symlink ((t ,(list :foreground gruber-light-bg
                                        :background gruber-light-red))))
   `(helm-ff-symlink ((t (:foreground ,gruber-light-yellow :bold t))))
   `(helm-selection-line ((t (:background ,gruber-light-bg+1))))
   `(helm-selection ((t (:background ,gruber-light-bg+1 :underline nil))))
   `(helm-source-header ((t ,(list :foreground gruber-light-yellow
                                   :background gruber-light-bg
                                   :box (list :line-width -1
                                              :style 'released-button)))))

   ;; Ido
   `(ido-first-match ((t (:foreground ,gruber-light-yellow :bold nil))))
   `(ido-only-match ((t (:foreground ,gruber-light-brown :weight bold))))
   `(ido-subdir ((t (:foreground ,gruber-light-niagara :weight bold))))

   ;; Info
   `(info-xref ((t (:foreground ,gruber-light-niagara))))
   `(info-visited ((t (:foreground ,gruber-light-wisteria))))
   `(Info-quoted ((t (:inherit font-lock-constant-face))))
   `(info-menu-header ((t (:foreground ,gruber-light-green :weight bold :height 1.4))))
   `(info-menu-star ((t (:foreground ,gruber-light-yellow))))
   `(info-node ((t (:foreground ,gruber-light-green :weight bold :slant italic))))
   `(info-title-1 ((t (:weight bold :height 1.4))))
   `(info-title-2 ((t (:weight bold :height 1.2))))
   `(info-title-3 ((t (:weight bold :foreground ,gruber-light-brown))))
   `(info-title-4 ((t (:weight bold :foreground ,gruber-light-wisteria))))

   ;; Jabber
   `(jabber-chat-prompt-foreign ((t ,(list :foreground gruber-light-quartz
                                           :bold nil))))
   `(jabber-chat-prompt-local ((t (:foreground ,gruber-light-yellow))))
   `(jabber-chat-prompt-system ((t (:foreground ,gruber-light-green))))
   `(jabber-rare-time-face ((t (:foreground ,gruber-light-green))))
   `(jabber-roster-user-online ((t (:foreground ,gruber-light-green))))
   `(jabber-activity-face ((t (:foreground ,gruber-light-red))))
   `(jabber-activity-personal-face ((t (:foreground ,gruber-light-yellow :bold t))))

   ;; Line Highlighting
   `(highlight ((t (:background ,gruber-light-bg+1 :foreground unspecified))))
   `(highlight-current-line-face ((t ,(list :background gruber-light-bg+1
                                            :foreground 'unspecified))))

   ;; line numbers
   `(line-number ((t (:inherit default :foreground ,gruber-light-bg+4))))
   `(line-number-current-line ((t (:inherit line-number :foreground ,gruber-light-yellow))))

   ;; Linum
   `(linum ((t `(list :foreground gruber-light-quartz
                      :background gruber-light-bg))))

   ;; Magit
   `(magit-branch ((t (:foreground ,gruber-light-niagara-2))))
   `(magit-branch-local ((t (:foreground ,gruber-light-niagara-2))))
   `(magit-branch-remote ((t (:foreground ,gruber-light-green))))
   `(magit-diff-hunk-header ((t (:background ,gruber-light-bg+2))))
   `(magit-diff-file-header ((t (:background ,gruber-light-bg+4))))
   `(magit-log-sha1 ((t (:foreground ,gruber-light-red+1))))
   `(magit-log-author ((t (:foreground ,gruber-light-brown))))
   `(magit-log-head-label-remote ((t ,(list :foreground gruber-light-green
                                            :background gruber-light-bg+1))))
   `(magit-log-head-label-local ((t ,(list :foreground gruber-light-niagara
                                           :background gruber-light-bg+1))))
   `(magit-log-head-label-tags ((t ,(list :foreground gruber-light-yellow
                                          :background gruber-light-bg+1))))
   `(magit-log-head-label-head ((t ,(list :foreground gruber-light-fg
                                          :background gruber-light-bg+1))))
   `(magit-item-highlight ((t (:background ,gruber-light-bg+1))))
   `(magit-tag ((t ,(list :foreground gruber-light-yellow
                          :background gruber-light-bg))))
   `(magit-blame-heading ((t ,(list :background gruber-light-bg+1
                                    :foreground gruber-light-fg))))

   ;; Message
   `(message-header-name ((t (:foreground ,gruber-light-green))))

   ;; Mode Line
   `(mode-line ((t ,(list :background gruber-light-bg+1
                          :foreground gruber-light-white))))
   `(mode-line-buffer-id ((t ,(list :background gruber-light-bg+1
                                    :foreground gruber-light-white))))
   `(mode-line-inactive ((t ,(list :background gruber-light-bg+1
                                   :foreground gruber-light-quartz))))
   ;; header-line
   `(header-line ((t (:inherit mode-line))))

   ;; Neo Dir
   `(neo-dir-link-face ((t (:foreground ,gruber-light-niagara))))

   ;; Org Mode
   `(org-agenda-done ((t (:foreground ,gruber-light-green))))
   `(org-agenda-structure ((t (:foreground ,gruber-light-niagara :height 1.1))))
   `(org-block ((t (:background ,gruber-light-bg+1))))
   `(org-block-begin-line ((t (:foreground ,gruber-light-bg+4 :slant italic))))
   `(org-block-end-line ((t (:foreground ,gruber-light-bg+4 :slant italic))))
   `(org-code ((t (:foreground ,gruber-light-yellow-1))))
   `(org-column ((t (:background ,gruber-light-bg-1))))
   `(org-column-title ((t (:background ,gruber-light-bg-1 :underline t :weight bold))))
   `(org-document-title ((t (:foreground ,gruber-light-wisteria :weight bold :height 1.4))))
   `(org-document-info ((t (:foreground ,gruber-light-green))))
   `(org-document-info-keyword ((t (:foreground ,gruber-light-bg+4))))
   `(org-done ((t (:foreground ,gruber-light-green))))
   `(org-todo ((t (:foreground ,gruber-light-red-1))))
   `(org-upcoming-deadline ((t (:foreground ,gruber-light-yellow))))
   `(org-scheduled-previously ((t (:foreground ,gruber-light-orange))))
   `(org-table ((t (:foreground ,gruber-light-wisteria))))

   ;; Search
   `(isearch ((t ,(list :foreground gruber-light-black
                        :background gruber-light-fg+2))))
   `(isearch-fail ((t ,(list :foreground gruber-light-black
                             :background gruber-light-red))))
   `(isearch-lazy-highlight-face ((t ,(list
                                       :foreground gruber-light-fg+1
                                       :background gruber-light-niagara-1))))

   ;; Sh
   `(sh-quoted-exec ((t (:foreground ,gruber-light-red+1))))

   ;; Show Paren
   `(show-paren-match-face ((t (:background ,gruber-light-bg+4))))
   `(show-paren-mismatch-face ((t (:background ,gruber-light-red-1))))

   ;; Slime
   `(slime-repl-inputed-output-face ((t (:foreground ,gruber-light-red))))

   ;; Tuareg
   `(tuareg-font-lock-governing-face ((t (:foreground ,gruber-light-yellow))))

   ;; Speedbar
   `(speedbar-directory-face ((t ,(list :foreground gruber-light-niagara
                                        :weight 'bold))))
   `(speedbar-file-face ((t (:foreground ,gruber-light-fg))))
   `(speedbar-highlight-face ((t (:background ,gruber-light-bg+1))))
   `(speedbar-selected-face ((t (:foreground ,gruber-light-red))))
   `(speedbar-tag-face ((t (:foreground ,gruber-light-yellow))))

   ;; Which Function
   `(which-func ((t (:foreground ,gruber-light-wisteria))))

   ;; Whitespace
   `(whitespace-space ((t ,(list :background gruber-light-bg
                                 :foreground gruber-light-bg+1))))
   `(whitespace-tab ((t ,(list :background gruber-light-bg
                               :foreground gruber-light-bg+1))))
   `(whitespace-hspace ((t ,(list :background gruber-light-bg
                                  :foreground gruber-light-bg+2))))
   `(whitespace-line ((t ,(list :background gruber-light-bg+2
                                :foreground gruber-light-red+1))))
   `(whitespace-newline ((t ,(list :background gruber-light-bg
                                   :foreground gruber-light-bg+2))))
   `(whitespace-trailing ((t ,(list :background gruber-light-red
                                    :foreground gruber-light-red))))
   `(whitespace-empty ((t ,(list :background gruber-light-yellow
                                 :foreground gruber-light-yellow))))
   `(whitespace-indentation ((t ,(list :background gruber-light-yellow
                                       :foreground gruber-light-red))))
   `(whitespace-space-after-tab ((t ,(list :background gruber-light-yellow
                                           :foreground gruber-light-yellow))))
   `(whitespace-space-before-tab ((t ,(list :background gruber-light-brown
                                            :foreground gruber-light-brown))))

   ;; tab-bar
   `(tab-bar ((t (:background ,gruber-light-bg+1 :foreground ,gruber-light-bg+4))))
   `(tab-bar-tab ((t (:background unspecified :foreground ,gruber-light-yellow :weight bold))))
   `(tab-bar-tab-inactive ((t (:background unspecified))))

   ;; vterm / ansi-term
   `(term-color-black ((t (:foreground ,gruber-light-bg+3 :background ,gruber-light-bg+4))))
   `(term-color-red ((t (:foreground ,gruber-light-red-1 :background ,gruber-light-red-1))))
   `(term-color-green ((t (:foreground ,gruber-light-green :background ,gruber-light-green))))
   `(term-color-blue ((t (:foreground ,gruber-light-niagara :background ,gruber-light-niagara))))
   `(term-color-yellow ((t (:foreground ,gruber-light-yellow :background ,gruber-light-yellow))))
   `(term-color-magenta ((t (:foreground ,gruber-light-wisteria :background ,gruber-light-wisteria))))
   `(term-color-cyan ((t (:foreground ,gruber-light-quartz :background ,gruber-light-quartz))))
   `(term-color-white ((t (:foreground ,gruber-light-fg :background ,gruber-light-white))))

   ;; ansi-color (built-in)
   `(ansi-color-black ((t (:foreground ,gruber-light-bg+3 :background ,gruber-light-bg+4))))
   `(ansi-color-red ((t (:foreground ,gruber-light-red-1 :background ,gruber-light-red-1))))
   `(ansi-color-green ((t (:foreground ,gruber-light-green :background ,gruber-light-green))))
   `(ansi-color-blue ((t (:foreground ,gruber-light-niagara :background ,gruber-light-niagara))))
   `(ansi-color-yellow ((t (:foreground ,gruber-light-yellow :background ,gruber-light-yellow))))
   `(ansi-color-magenta ((t (:foreground ,gruber-light-wisteria :background ,gruber-light-wisteria))))
   `(ansi-color-cyan ((t (:foreground ,gruber-light-quartz :background ,gruber-light-quartz))))
   `(ansi-color-white ((t (:foreground ,gruber-light-fg :background ,gruber-light-white))))
   `(ansi-color-bright-black ((t (:inherit ansi-color-black :weight bold))))
   `(ansi-color-bright-red ((t (:inherit ansi-color-red :weight bold))))
   `(ansi-color-bright-green ((t (:inherit ansi-color-green :weight bold))))
   `(ansi-color-bright-yellow ((t (:inherit ansi-color-yellow :weight bold))))
   `(ansi-color-bright-blue ((t (:inherit ansi-color-blue :weight bold))))
   `(ansi-color-bright-magenta ((t (:inherit ansi-color-magenta :weight bold))))
   `(ansi-color-bright-cyan ((t (:inherit ansi-color-cyan :weight bold))))
   `(ansi-color-bright-white ((t (:inherit ansi-color-white :weight bold))))

   ;; company-mode
   `(company-tooltip ((t (:foreground ,gruber-light-fg :background ,gruber-light-bg+1))))
   `(company-tooltip-annotation ((t (:foreground ,gruber-light-brown :background ,gruber-light-bg+1))))
   `(company-tooltip-annotation-selection ((t (:foreground ,gruber-light-brown :background ,gruber-light-bg-1))))
   `(company-tooltip-selection ((t (:foreground ,gruber-light-fg :background ,gruber-light-bg-1))))
   `(company-tooltip-mouse ((t (:background ,gruber-light-bg-1))))
   `(company-tooltip-common ((t (:foreground ,gruber-light-green))))
   `(company-tooltip-common-selection ((t (:foreground ,gruber-light-green))))
   `(company-scrollbar-fg ((t (:background ,gruber-light-bg-1))))
   `(company-scrollbar-bg ((t (:background ,gruber-light-bg+2))))
   `(company-preview ((t (:background ,gruber-light-green))))
   `(company-preview-common ((t (:foreground ,gruber-light-green :background ,gruber-light-bg-1))))

   ;; Proof General
   `(proof-locked-face ((t (:background ,gruber-light-niagara-2))))

   ;; Orderless
   `(orderless-match-face-0 ((t (:foreground ,gruber-light-yellow))))
   `(orderless-match-face-1 ((t (:foreground ,gruber-light-green))))
   `(orderless-match-face-2 ((t (:foreground ,gruber-light-brown))))
   `(orderless-match-face-3 ((t (:foreground ,gruber-light-quartz))))

   ;; diff-hl
   `(diff-hl-insert ((t (:inherit diff-added))))
   `(diff-hl-change ((t (:background unspecified :foreground ,gruber-light-niagara))))
   `(diff-hl-delete ((t (:inherit diff-removed))))

   ;; breadcrumb
   `(breadcrumb-face ((t (:background ,gruber-light-bg+1 :foreground ,gruber-light-fg))))
   `(breadcrumb-project-leaf-face ((t (:inherit mode-line-buffer-id :bold t))))

   ;; symbol-overlay
   `(symbol-overlay-default-face ((t (:inherit highlight :underline t))))

   ;; diredfl
   `(diredfl-dir-heading ((t (:inherit font-lock-string-face))))
   `(diredfl-dir-name ((t (:inherit dired-directory))))
   `(diredfl-file-name ((t (:foreground ,gruber-light-yellow ))))
   `(diredfl-file-suffix ((t (:foreground ,gruber-light-green))))
   `(diredfl-flag-mark ((t (:inherit dired-mark))))
   `(diredfl-flag-mark-line ((t (:background unspecified :inherit highlight))))
   `(diredfl-deletion ((t (:inherit error :inverse-video t))))
   `(diredfl-deletion-file-name ((t (:inherit error))))
   `(diredfl-compressed-file-suffix ((t (:foreground ,gruber-light-red))))
   `(diredfl-compressed-file-name ((t (:foreground ,gruber-light-red))))
   `(diredfl-ignored-file-name ((t (:inherit dired-ignored))))
   `(diredfl-symlink ((t (:foreground ,gruber-light-wisteria))))
   `(diredfl-number ((t (:foreground ,gruber-light-brown))))
   `(diredfl-date-time ((t (:foreground ,gruber-light-wisteria))))
   `(diredfl-no-priv ((t (:background unspecified))))
   `(diredfl-dir-priv ((t (:inherit dired-directory))))
   `(diredfl-read-priv ((t (:foreground ,gruber-light-green :background unspecified))))
   `(diredfl-write-priv ((t (:foreground ,gruber-light-brown :background unspecified))))
   `(diredfl-exec-priv ((t (:foreground ,gruber-light-yellow :background unspecified))))
   `(diredfl-executable-tag ((t (:foreground ,gruber-light-brown :background unspecified))))
   `(diredfl-link-priv ((t (:foreground ,gruber-light-wisteria :background unspecified))))
   `(diredfl-other-priv ((t (:foreground ,gruber-light-quartz :background unspecified))))
   `(diredfl-rare-priv ((t (:foreground ,gruber-light-red :background unspecified))))

   ;; Outline (built-in)
   `(outline-2 ((t (:foreground ,gruber-light-yellow))))
   `(outline-3 ((t (:foreground ,gruber-light-green))))
   `(outline-6 ((t (:foreground ,gruber-light-niagara-2))))

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

(provide-theme 'gruber-light)

;; Local Variables:
;; no-byte-compile: t
;; indent-tabs-mode: nil
;; End:

;;; gruber-light-theme.el ends here.
