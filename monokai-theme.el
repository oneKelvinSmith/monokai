;;; monokai-theme.el --- A fruity color theme for Emacs.

;; Copyright (C) 2011-2013

;; Author: Kelvin Smith <oneKelvinSmith@gmail.com>
;; URL: http://github.com/oneKelvinSmith/monokai
;; Version: 1.0

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; A port of the popular Vim theme Monokai for Emacs 24, built on top
;; of the new built-in theme support in Emacs 24.
;;
;;; Credits:
;;
;; Wimer Hazenberg created the original theme for vim on which this port
;; is based.
;; Bozhidar Batsov created zenburn-theme.el on which this file is based.
;; http://colorschemedesigner.com/ for complementary colours.

;;; Code:
(deftheme monokai "The Monokai color theme")

(let ((class '((class color) (min-colors 89)))
      ;; Monokai palette
      ;; colors with +x are lighter, colors with -x are darker
      (monokai-bg-2 "#171A0B")
      (monokai-bg-1 "#1D1E1B")
      (monokai-bg "#272822")
      (monokai-bg+1 "#373631")
      (monokai-bg+2 "#49483E")
      (monokai-red-1 "#A20C41")
      (monokai-red "#F92672")
      (monokai-red+1 "#FC5C94")
      (monokai-red+2 "#FC87B0")
      (monokai-green-1 "#67930F")
      (monokai-green "#A6E22E")
      (monokai-green+1 "#C1F161")
      (monokai-green+2"#CDF187")
      (monokai-orange-1 "#A45E0A")
      (monokai-orange "#FD971F")
      (monokai-orange+1 "#FEB257")
      (monokai-orange+2 "#FEC683")
      (monokai-yellow-1 "#968B26")
      (monokai-yellow "#E6DB74")
      (monokai-yellow+1 "#F3EA98")
      (monokai-yellow+2 "#F3ECB0")
      (monokai-blue-1 "#21889B")
      (monokai-blue "#66D9EF")
      (monokai-blue+1 "#8DE6F7")
      (monokai-blue+2 "#A9EBF7")
      (monokai-purple-1 "#562AA6")
      (monokai-purple "#AE81FF")
      (monokai-purple+1 "#C2A1FF")
      (monokai-purple+2 "#D2BAFFn")
      (monokai-magenta-1 "#A41F99")
      (monokai-magenta "#FD5FF0")
      (monokai-magenta+1 "#FE87F4")
      (monokai-magenta+2 "#FEA7F7")
      (monokai-cyan-1 "#349B8D")
      (monokai-cyan "#A1EFE4")
      (monokai-cyan+1 "#BBF7EF")
      (monokai-cyan+2 "#CBF7F1")
      (monokai-fg-1 "#75715E")
      (monokai-fg "#F8F8F2")
      (monokai-fg+1 "#F8F8F0"))
  (custom-theme-set-faces
   'monokai
   '(button ((t (:underline t))))
   `(link ((t (:foreground ,monokai-red :underline t :weight bold))))
   `(link-visited ((t (:foreground ,monokai-purple :underline t :weight normal))))

   ;;; basic coloring
   `(default ((t (:foreground ,monokai-fg :background ,monokai-bg))))
   `(cursor ((t (:foreground ,monokai-bg :background ,monokai-fg+1))))
   `(escape-glyph ((t (:foreground ,monokai-fg-1 :bold t))))
   `(fringe ((t (:foreground ,monokai-fg :background ,monokai-bg))))
   `(header-line ((t (:foreground ,monokai-fg-1
                                  :background ,monokai-bg-2
                                  :box (:line-width -1 :style released-button)))))
   `(highlight ((t (:background ,monokai-bg+2))))

   ;;; compilation
   `(compilation-column-face ((t (:foreground ,monokai-yellow))))
   `(compilation-enter-directory-face ((t (:foreground ,monokai-green))))
   `(compilation-error-face ((t (:foreground ,monokai-red :weight bold :underline t))))
   `(compilation-face ((t (:foreground ,monokai-fg))))
   `(compilation-info-face ((t (:foreground ,monokai-blue))))
   `(compilation-info ((t (:foreground ,monokai-purple :underline t))))
   `(compilation-leave-directory-face ((t (:foreground ,monokai-green))))
   `(compilation-line-face ((t (:foreground ,monokai-fg-1))))
   `(compilation-line-number ((t (:foreground ,monokai-fg-1))))
   `(compilation-message-face ((t (:foreground ,monokai-blue))))
   `(compilation-warning-face ((t (:foreground ,monokai-orange :weight bold :underline t))))

   ;;; grep
   `(grep-context-face ((t (:foreground ,monokai-fg))))
   `(grep-error-face ((t (:foreground ,monokai-red :weight bold :underline t))))
   `(grep-hit-face ((t (:foreground ,monokai-orange))))
   `(grep-match-face ((t (:foreground ,monokai-green :weight bold))))
   `(match ((t (:background ,monokai-bg-1 :foreground ,monokai-green :weight bold))))

   ;; faces used by isearch
   `(isearch ((t (:foreground ,monokai-orange :background ,monokai-bg))))
   `(isearch-fail ((t (:foreground ,monokai-fg+1 :background ,monokai-red))))
   `(lazy-highlight ((t (:foreground ,monokai-fg+1 :background ,monokai-bg+1))))

   `(menu ((t (:foreground ,monokai-fg :background ,monokai-bg))))
   `(minibuffer-prompt ((t (:foreground ,monokai-blue))))
   `(mode-line
     ((,class (:foreground ,monokai-red
                           :background ,monokai-bg-1
                           :box (:line-width -1 :style released-button)))
      (t :inverse-video t)))
   `(mode-line-buffer-id ((t (:foreground ,monokai-green :weight bold))))
   `(mode-line-inactive
     ((t (:foreground ,monokai-bg+2
                      :background ,monokai-bg
                      :box (:line-width -1 :style released-button)))))
   `(region ((,class (:background ,monokai-bg-1))
             (t :inverse-video t)))
   `(secondary-selection ((t (:background ,monokai-bg+1))))
   `(trailing-whitespace ((t (:background ,monokai-red))))
   `(vertical-border ((t (:foreground ,monokai-bg-2))))

   ;;; font lock
   `(font-lock-builtin-face ((t (:foreground ,monokai-blue))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,monokai-fg-1))))
   `(font-lock-comment-face ((t (:foreground ,monokai-fg-1))))
   `(font-lock-constant-face ((t (:foreground ,monokai-purple))))
   `(font-lock-doc-face ((t (:foreground ,monokai-purple))))
   `(font-lock-doc-string-face ((t (:foreground ,monokai-orange))))
   `(font-lock-function-name-face ((t (:foreground ,monokai-green))))
   `(font-lock-keyword-face ((t (:foreground ,monokai-red :weight bold))))
   `(font-lock-negation-char-face ((t (:foreground ,monokai-fg-1))))
   `(font-lock-preprocessor-face ((t (:foreground ,monokai-red))))
   `(font-lock-reference-face ((t (:foreground ,monokai-purple))))
   `(font-lock-string-face ((t (:foreground ,monokai-yellow))))
   `(font-lock-type-face ((t (:foreground ,monokai-blue))))
   `(font-lock-variable-name-face ((t (:foreground ,monokai-orange))))
   `(font-lock-warning-face ((t (:foreground ,monokai-red+1 :weight bold))))

   `(c-annotation-face ((t (:inherit font-lock-constant-face))))

   ;;; newsticker
   `(newsticker-date-face ((t (:foreground ,monokai-fg))))
   `(newsticker-default-face ((t (:foreground ,monokai-fg))))
   `(newsticker-enclosure-face ((t (:foreground ,monokai-green+1))))
   `(newsticker-extra-face ((t (:foreground ,monokai-fg-1 :height 0.8))))
   `(newsticker-feed-face ((t (:foreground ,monokai-fg))))
   `(newsticker-immortal-item-face ((t (:foreground ,monokai-green))))
   `(newsticker-new-item-face ((t (:foreground ,monokai-blue))))
   `(newsticker-obsolete-item-face ((t (:foreground ,monokai-red))))
   `(newsticker-old-item-face ((t (:foreground ,monokai-fg-1))))
   `(newsticker-statistics-face ((t (:foreground ,monokai-fg))))
   `(newsticker-treeview-face ((t (:foreground ,monokai-fg))))
   `(newsticker-treeview-immortal-face ((t (:foreground ,monokai-green))))
   `(newsticker-treeview-listwindow-face ((t (:foreground ,monokai-fg))))
   `(newsticker-treeview-new-face ((t (:foreground ,monokai-blue :weight bold))))
   `(newsticker-treeview-obsolete-face ((t (:foreground ,monokai-red))))
   `(newsticker-treeview-old-face ((t (:foreground ,monokai-fg-1))))
   `(newsticker-treeview-selection-face ((t (:foreground ,monokai-orange))))

   ;;; external

   ;; full-ack
   `(ack-separator ((t (:foreground ,monokai-fg))))
   `(ack-file ((t (:foreground ,monokai-blue))))
   `(ack-line ((t (:foreground ,monokai-yellow))))
   `(ack-match ((t (:foreground ,monokai-orange :background ,monokai-bg-2 :weight bold))))

   ;; auctex
   `(font-latex-bold ((t (:inherit bold))))
   `(font-latex-warning ((t (:inherit font-lock-warning))))
   `(font-latex-sedate ((t (:foreground ,monokai-fg-1 :weight bold ))))
   `(font-latex-title-4 ((t (:inherit variable-pitch :weight bold))))

   ;; auto-complete
   `(ac-candidate-face ((t (:background ,monokai-bg :foreground ,monokai-red))))
   `(ac-selection-face ((t (:background ,monokai-bg-1 :foreground ,monokai-green))))
   `(popup-tip-face ((t (:background ,monokai-bg-1 :foreground ,monokai-fg-1))))
   `(popup-scroll-bar-foreground-face ((t (:background ,monokai-bg-1))))
   `(popup-scroll-bar-background-face ((t (:background ,monokai-bg-2))))
   `(popup-isearch-match ((t (:background ,monokai-bg+1 :foreground ,monokai-orange))))

   ;; clojure-test-mode
   `(clojure-test-failure-face ((t (:foreground ,monokai-orange :weight bold :underline t))))
   `(clojure-test-error-face ((t (:foreground ,monokai-red :weight bold :underline t))))
   `(clojure-test-success-face ((t (:foreground ,monokai-green :weight bold :underline t))))

   ;; diff
   `(diff-added ((,class (:foreground ,monokai-purple+1))
                 (t (:foreground ,monokai-green-1))))
   `(diff-changed ((t (:foreground ,monokai-yellow))))
   `(diff-removed ((,class (:foreground ,monokai-red))
                   (t (:foreground ,monokai-magenta))))
   `(diff-header ((,class (:background ,monokai-bg))
                  (t (:background ,monokai-fg :foreground ,monokai-bg))))
   `(diff-file-header
     ((,class (:background ,monokai-bg+2 :foreground ,monokai-fg :bold t))
      (t (:background ,monokai-fg :foreground ,monokai-bg :bold t))))

   ;; ert
   `(ert-test-result-expected ((t (:foreground ,monokai-purple+1 :background ,monokai-bg))))
   `(ert-test-result-unexpected ((t (:foreground ,monokai-red :background ,monokai-bg))))

   ;; eshell
   `(eshell-prompt ((t (:foreground ,monokai-fg-1 :weight bold))))
   `(eshell-ls-archive ((t (:foreground ,monokai-red :weight bold))))
   `(eshell-ls-backup ((t (:inherit font-lock-comment))))
   `(eshell-ls-clutter ((t (:inherit font-lock-comment))))
   `(eshell-ls-directory ((t (:foreground ,monokai-blue+1 :weight bold))))
   `(eshell-ls-executable ((t (:foreground ,monokai-red+1 :weight bold))))
   `(eshell-ls-unreadable ((t (:foreground ,monokai-fg))))
   `(eshell-ls-missing ((t (:inherit font-lock-warning))))
   `(eshell-ls-product ((t (:inherit font-lock-doc))))
   `(eshell-ls-special ((t (:foreground ,monokai-yellow :weight bold))))
   `(eshell-ls-symlink ((t (:foreground ,monokai-cyan :weight bold))))

   ;; flycheck
   `(flycheck-error-face ((t (:foreground ,monokai-red :weight bold :underline t))))
   `(flycheck-warning-face ((t (:foreground ,monokai-yellow :weight bold :underline t))))

   ;; flymake
   `(flymake-errline ((t (:foreground ,monokai-red+1 :background ,monokai-bg-2
                                      :weight bold :underline t))))
   `(flymake-warnline ((t (:foreground ,monokai-orange+1 :background ,monokai-bg-2
                                       :weight bold :underline t))))

   ;; flyspell
   `(flyspell-duplicate ((t (:foreground ,monokai-yellow :weight bold :underline t))))
   `(flyspell-incorrect ((t (:foreground ,monokai-red :weight bold :underline t))))

   ;; erc
   `(erc-action-face ((t (:inherit erc-default-face))))
   `(erc-bold-face ((t (:weight bold))))
   `(erc-current-nick-face ((t (:foreground ,monokai-blue :weight bold))))
   `(erc-dangerous-host-face ((t (:inherit font-lock-warning))))
   `(erc-default-face ((t (:foreground ,monokai-fg))))
   `(erc-direct-msg-face ((t (:inherit erc-default))))
   `(erc-error-face ((t (:inherit font-lock-warning))))
   `(erc-fool-face ((t (:inherit erc-default))))
   `(erc-highlight-face ((t (:inherit hover-highlight))))
   `(erc-input-face ((t (:foreground ,monokai-fg-1))))
   `(erc-keyword-face ((t (:foreground ,monokai-blue :weight bold))))
   `(erc-nick-default-face ((t (:foreground ,monokai-fg-1 :weight bold))))
   `(erc-my-nick-face ((t (:foreground ,monokai-red :weight bold))))
   `(erc-nick-msg-face ((t (:inherit erc-default))))
   `(erc-notice-face ((t (:foreground ,monokai-green))))
   `(erc-pal-face ((t (:foreground ,monokai-orange :weight bold))))
   `(erc-prompt-face ((t (:foreground ,monokai-orange :background ,monokai-bg :weight bold))))
   `(erc-timestamp-face ((t (:foreground ,monokai-green+1))))
   `(erc-underline-face ((t (:underline t))))

   ;; git-gutter
   `(git-gutter:added ((,class (:foreground ,monokai-green :weight bold :inverse-video t))))
   `(git-gutter:deleted ((,class (:foreground ,monokai-red :weight bold :inverse-video t))))
   `(git-gutter:modified ((,class (:foreground ,monokai-orange :weight bold :inverse-video t))))

   ;; gnus
   `(gnus-group-mail-1 ((t (:bold t :inherit gnus-group-mail-1-empty))))
   `(gnus-group-mail-1-empty ((t (:inherit gnus-group-news-1-empty))))
   `(gnus-group-mail-2 ((t (:bold t :inherit gnus-group-mail-2-empty))))
   `(gnus-group-mail-2-empty ((t (:inherit gnus-group-news-2-empty))))
   `(gnus-group-mail-3 ((t (:bold t :inherit gnus-group-mail-3-empty))))
   `(gnus-group-mail-3-empty ((t (:inherit gnus-group-news-3-empty))))
   `(gnus-group-mail-4 ((t (:bold t :inherit gnus-group-mail-4-empty))))
   `(gnus-group-mail-4-empty ((t (:inherit gnus-group-news-4-empty))))
   `(gnus-group-mail-5 ((t (:bold t :inherit gnus-group-mail-5-empty))))
   `(gnus-group-mail-5-empty ((t (:inherit gnus-group-news-5-empty))))
   `(gnus-group-mail-6 ((t (:bold t :inherit gnus-group-mail-6-empty))))
   `(gnus-group-mail-6-empty ((t (:inherit gnus-group-news-6-empty))))
   `(gnus-group-mail-low ((t (:bold t :inherit gnus-group-mail-low-empty))))
   `(gnus-group-mail-low-empty ((t (:inherit gnus-group-news-low-empty))))
   `(gnus-group-news-1 ((t (:bold t :inherit gnus-group-news-1-empty))))
   `(gnus-group-news-2 ((t (:bold t :inherit gnus-group-news-2-empty))))
   `(gnus-group-news-3 ((t (:bold t :inherit gnus-group-news-3-empty))))
   `(gnus-group-news-4 ((t (:bold t :inherit gnus-group-news-4-empty))))
   `(gnus-group-news-5 ((t (:bold t :inherit gnus-group-news-5-empty))))
   `(gnus-group-news-6 ((t (:bold t :inherit gnus-group-news-6-empty))))
   `(gnus-group-news-low ((t (:bold t :inherit gnus-group-news-low-empty))))
   `(gnus-header-content ((t (:inherit message-header-other))))
   `(gnus-header-from ((t (:inherit message-header-from))))
   `(gnus-header-name ((t (:inherit message-header-name))))
   `(gnus-header-newsgroups ((t (:inherit message-header-other))))
   `(gnus-header-subject ((t (:inherit message-header-subject))))
   `(gnus-summary-cancelled ((t (:foreground ,monokai-orange))))
   `(gnus-summary-high-ancient ((t (:foreground ,monokai-blue))))
   `(gnus-summary-high-read ((t (:foreground ,monokai-green :weight bold))))
   `(gnus-summary-high-ticked ((t (:foreground ,monokai-orange :weight bold))))
   `(gnus-summary-high-unread ((t (:foreground ,monokai-fg :weight bold))))
   `(gnus-summary-low-ancient ((t (:foreground ,monokai-blue))))
   `(gnus-summary-low-read ((t (:foreground ,monokai-green))))
   `(gnus-summary-low-ticked ((t (:foreground ,monokai-orange :weight bold))))
   `(gnus-summary-low-unread ((t (:foreground ,monokai-fg))))
   `(gnus-summary-normal-ancient ((t (:foreground ,monokai-blue))))
   `(gnus-summary-normal-read ((t (:foreground ,monokai-green))))
   `(gnus-summary-normal-ticked ((t (:foreground ,monokai-orange :weight bold))))
   `(gnus-summary-normal-unread ((t (:foreground ,monokai-fg))))
   `(gnus-summary-selected ((t (:foreground ,monokai-fg-1 :weight bold))))
   `(gnus-cite-1 ((t (:foreground ,monokai-blue))))
   `(gnus-cite-10 ((t (:foreground ,monokai-yellow-1))))
   `(gnus-cite-11 ((t (:foreground ,monokai-yellow))))
   `(gnus-cite-2 ((t (:foreground ,monokai-blue-1))))
   `(gnus-cite-3 ((t (:foreground ,monokai-cyan))))
   `(gnus-cite-4 ((t (:foreground ,monokai-purple))))
   `(gnus-cite-5 ((t (:foreground ,monokai-green+1))))
   `(gnus-cite-6 ((t (:foreground ,monokai-green))))
   `(gnus-cite-7 ((t (:foreground ,monokai-red))))
   `(gnus-cite-8 ((t (:foreground ,monokai-red))))
   `(gnus-cite-9 ((t (:foreground ,monokai-purple))))
   `(gnus-group-news-1-empty ((t (:foreground ,monokai-fg-1))))
   `(gnus-group-news-2-empty ((t (:foreground ,monokai-green+1))))
   `(gnus-group-news-3-empty ((t (:foreground ,monokai-green+1))))
   `(gnus-group-news-4-empty ((t (:foreground ,monokai-cyan))))
   `(gnus-group-news-5-empty ((t (:foreground ,monokai-cyan+1))))
   `(gnus-group-news-6-empty ((t (:foreground ,monokai-bg+2))))
   `(gnus-group-news-low-empty ((t (:foreground ,monokai-bg+2))))
   `(gnus-signature ((t (:foreground ,monokai-fg-1))))
   `(gnus-x ((t (:background ,monokai-fg :foreground ,monokai-bg))))

   ;; helm
   `(helm-header
     ((t (:foreground ,monokai-green
                      :background ,monokai-bg
                      :underline nil
                      :box nil))))
   `(helm-source-header
     ((t (:foreground ,monokai-fg-1
                      :background ,monokai-bg-1
                      :underline nil
                      :weight bold
                      :box (:line-width -1 :style released-button)))))
   `(helm-selection ((t (:background ,monokai-bg+1 :underline nil))))
   `(helm-selection-line ((t (:background ,monokai-bg+2))))
   `(helm-visible-mark ((t (:foreground ,monokai-bg :background ,monokai-green))))
   `(helm-candidate-number ((t (:foreground ,monokai-red :background ,monokai-bg-1))))

   ;; hl-line-mode
   `(hl-line-face ((,class (:background ,monokai-bg+2))
                   (t :weight bold)))
   `(hl-line ((,class (:background ,monokai-bg+2)) ; old emacsen
              (t :weight bold)))

   ;; hl-sexp
   `(hl-sexp-face ((,class (:background ,monokai-bg+2))
                   (t :weight bold)))

   ;; ido-mode
   `(ido-first-match ((t (:foreground ,monokai-fg-1 :weight bold))))
   `(ido-only-match ((t (:foreground ,monokai-orange :weight bold))))
   `(ido-subdir ((t (:foreground ,monokai-yellow))))

   ;; js2-mode
   `(js2-warning-face ((t (:underline ,monokai-orange))))
   `(js2-error-face ((t (:foreground ,monokai-red :weight bold))))
   `(js2-jsdoc-tag-face ((t (:foreground ,monokai-green))))
   `(js2-jsdoc-type-face ((t (:foreground ,monokai-blue))))
   `(js2-jsdoc-value-face ((t (:foreground ,monokai-purple))))
   `(js2-function-param-face ((t (:foreground ,monokai-green))))
   `(js2-external-variable-face ((t (:foreground ,monokai-yellow))))

   ;; jabber-mode
   `(jabber-roster-user-away ((t (:foreground ,monokai-purple))))
   `(jabber-roster-user-online ((t (:foreground ,monokai-green))))
   `(jabber-roster-user-dnd ((t (:foreground ,monokai-red))))
   `(jabber-rare-time-face ((t (:foreground ,monokai-purple))))
   `(jabber-chat-prompt-local ((t (:foreground ,monokai-blue))))
   `(jabber-chat-prompt-foreign ((t (:foreground ,monokai-orange))))
   `(jabber-activity-face((t (:foreground ,monokai-red))))
   `(jabber-activity-personal-face ((t (:foreground ,monokai-cyan))))
   `(jabber-title-small ((t (:height 1.1 :weight bold))))
   `(jabber-title-medium ((t (:height 1.2 :weight bold))))
   `(jabber-title-large ((t (:height 1.3 :weight bold))))

   ;; linum-mode
   `(linum ((t (:foreground ,monokai-purple :background ,monokai-bg))))

   ;; magit
   `(magit-section-title ((t (:foreground ,monokai-fg-1 :weight bold))))
   `(magit-branch ((t (:foreground ,monokai-orange :weight bold))))
   `(magit-item-highlight ((t (:background ,monokai-bg+2))))

   ;; message-mode
   `(message-cited-text ((t (:inherit font-lock-comment))))
   `(message-header-name ((t (:foreground ,monokai-green+1))))
   `(message-header-other ((t (:foreground ,monokai-green))))
   `(message-header-to ((t (:foreground ,monokai-fg-1 :weight bold))))
   `(message-header-from ((t (:foreground ,monokai-fg-1 :weight bold))))
   `(message-header-cc ((t (:foreground ,monokai-fg-1 :weight bold))))
   `(message-header-newsgroups ((t (:foreground ,monokai-fg-1 :weight bold))))
   `(message-header-subject ((t (:foreground ,monokai-orange :weight bold))))
   `(message-header-xheader ((t (:foreground ,monokai-green))))
   `(message-mml ((t (:foreground ,monokai-fg-1 :weight bold))))
   `(message-separator ((t (:inherit font-lock-comment))))

   ;; mew
   `(mew-face-header-subject ((t (:foreground ,monokai-orange))))
   `(mew-face-header-from ((t (:foreground ,monokai-yellow))))
   `(mew-face-header-date ((t (:foreground ,monokai-green))))
   `(mew-face-header-to ((t (:foreground ,monokai-red))))
   `(mew-face-header-key ((t (:foreground ,monokai-blue))))
   `(mew-face-header-private ((t (:foreground ,monokai-purple))))
   `(mew-face-header-important ((t (:foreground ,monokai-blue))))
   `(mew-face-header-marginal ((t (:foreground ,monokai-fg :weight bold))))
   `(mew-face-header-warning ((t (:foreground ,monokai-red))))
   `(mew-face-header-xmew ((t (:foreground ,monokai-green))))
   `(mew-face-header-xmew-bad ((t (:foreground ,monokai-red))))
   `(mew-face-body-url ((t (:foreground ,monokai-blue))))
   `(mew-face-body-comment ((t (:foreground ,monokai-fg :slant italic))))
   `(mew-face-body-cite1 ((t (:foreground ,monokai-cyan))))
   `(mew-face-body-cite2 ((t (:foreground ,monokai-purple))))
   `(mew-face-body-cite3 ((t (:foreground ,monokai-orange))))
   `(mew-face-body-cite4 ((t (:foreground ,monokai-yellow))))
   `(mew-face-body-cite5 ((t (:foreground ,monokai-red))))
   `(mew-face-mark-review ((t (:foreground ,monokai-blue))))
   `(mew-face-mark-escape ((t (:foreground ,monokai-green))))
   `(mew-face-mark-delete ((t (:foreground ,monokai-red))))
   `(mew-face-mark-unlink ((t (:foreground ,monokai-yellow))))
   `(mew-face-mark-refile ((t (:foreground ,monokai-orange))))
   `(mew-face-mark-unread ((t (:foreground ,monokai-purple))))
   `(mew-face-eof-message ((t (:foreground ,monokai-red))))
   `(mew-face-eof-part ((t (:foreground ,monokai-yellow))))

   ;; mic-paren
   `(paren-face-match ((t (:foreground ,monokai-green :background ,monokai-bg :weight bold))))
   `(paren-face-mismatch ((t (:foreground ,monokai-bg :background ,monokai-orange :weight bold))))
   `(paren-face-no-match ((t (:foreground ,monokai-bg :background ,monokai-red :weight bold))))

   ;; nav
   `(nav-face-heading ((t (:foreground ,monokai-fg-1))))
   `(nav-face-button-num ((t (:foreground ,monokai-blue))))
   `(nav-face-dir ((t (:foreground ,monokai-green))))
   `(nav-face-hdir ((t (:foreground ,monokai-red))))
   `(nav-face-file ((t (:foreground ,monokai-fg))))
   `(nav-face-hfile ((t (:foreground ,monokai-purple))))

   ;; mu4e
   `(mu4e-cited-1-face ((t (:foreground ,monokai-blue   :slant italic))))
   `(mu4e-cited-2-face ((t (:foreground ,monokai-purple :slant italic))))
   `(mu4e-cited-3-face ((t (:foreground ,monokai-cyan   :slant italic))))
   `(mu4e-cited-4-face ((t (:foreground ,monokai-green  :slant italic))))
   `(mu4e-cited-5-face ((t (:foreground ,monokai-orange :slant italic))))
   `(mu4e-cited-6-face ((t (:foreground ,monokai-purple :slant italic))))
   `(mu4e-cited-7-face ((t (:foreground ,monokai-yellow :slant italic))))
   `(mu4e-replied-face ((t (:foreground ,monokai-fg-1))))
   `(mu4e-trashed-face ((t (:foreground ,monokai-fg-1 :strike-through t))))

   ;; mumamo
   `(mumamo-background-chunk-major ((t (:background nil))))
   `(mumamo-background-chunk-submode1 ((t (:background ,monokai-bg-2))))
   `(mumamo-background-chunk-submode2 ((t (:background ,monokai-bg+2))))
   `(mumamo-background-chunk-submode3 ((t (:background ,monokai-fg-1))))
   `(mumamo-background-chunk-submode4 ((t (:background ,monokai-bg+2))))

   ;; org-mode
   `(org-agenda-date-today
     ((t (:foreground ,monokai-fg+1 :slant italic :weight bold))) t)
   `(org-agenda-structure
     ((t (:inherit font-lock-comment-face))))
   `(org-archived ((t (:foreground ,monokai-fg :weight bold))))
   `(org-checkbox ((t (:background ,monokai-bg+2 :foreground ,monokai-fg+1
                                   :box (:line-width 1 :style released-button)))))
   `(org-date ((t (:foreground ,monokai-blue :underline t))))
   `(org-deadline-announce ((t (:foreground ,monokai-red))))
   `(org-done ((t (:bold t :weight bold :foreground ,monokai-green+1))))
   `(org-formula ((t (:foreground ,monokai-yellow))))
   `(org-headline-done ((t (:foreground ,monokai-green+1))))
   `(org-hide ((t (:foreground ,monokai-bg-2))))
   `(org-level-1 ((t (:foreground ,monokai-orange))))
   `(org-level-2 ((t (:foreground ,monokai-orange+1))))
   `(org-level-3 ((t (:foreground ,monokai-cyan))))
   `(org-level-4 ((t (:foreground ,monokai-cyan+1))))
   `(org-level-5 ((t (:foreground ,monokai-purple))))
   `(org-level-6 ((t (:foreground ,monokai-purple+1))))
   `(org-level-7 ((t (:foreground ,monokai-red+1))))
   `(org-level-8 ((t (:foreground ,monokai-red+2))))
   `(org-link ((t (:foreground ,monokai-blue :underline t))))
   `(org-scheduled ((t (:foreground ,monokai-purple+1))))
   `(org-scheduled-previously ((t (:foreground ,monokai-red))))
   `(org-scheduled-today ((t (:foreground ,monokai-blue+1))))
   `(org-special-keyword ((t (:foreground ,monokai-fg-1 :weight normal))))
   `(org-table ((t (:foreground ,monokai-purple))))
   `(org-tag ((t (:bold t :weight bold))))
   `(org-time-grid ((t (:foreground ,monokai-orange))))
   `(org-todo ((t (:bold t :foreground ,monokai-red :weight bold))))
   `(org-upcoming-deadline ((t (:inherit font-lock-keyword-face))))
   `(org-warning ((t (:bold t :foreground ,monokai-red :weight bold :underline nil))))
   `(org-column ((t (:background ,monokai-bg-2))))
   `(org-column-title ((t (:background ,monokai-bg-2 :underline t :weight bold))))

   ;; outline
   `(outline-1 ((t (:foreground ,monokai-orange))))
   `(outline-2 ((t (:foreground ,monokai-magenta))))
   `(outline-3 ((t (:foreground ,monokai-blue))))
   `(outline-4 ((t (:foreground ,monokai-yellow))))
   `(outline-5 ((t (:foreground ,monokai-cyan))))
   `(outline-6 ((t (:foreground ,monokai-purple))))
   `(outline-7 ((t (:foreground ,monokai-red))))
   `(outline-8 ((t (:foreground ,monokai-green))))

   ;; rainbow-delimiters
   `(rainbow-delimiters-depth-1-face ((t (:foreground ,monokai-fg))))
   `(rainbow-delimiters-depth-2-face ((t (:foreground ,monokai-blue))))
   `(rainbow-delimiters-depth-3-face ((t (:foreground ,monokai-red))))
   `(rainbow-delimiters-depth-4-face ((t (:foreground ,monokai-green))))
   `(rainbow-delimiters-depth-5-face ((t (:foreground ,monokai-purple))))
   `(rainbow-delimiters-depth-6-face ((t (:foreground ,monokai-cyan))))
   `(rainbow-delimiters-depth-7-face ((t (:foreground ,monokai-orange))))
   `(rainbow-delimiters-depth-8-face ((t (:foreground ,monokai-blue+1))))
   `(rainbow-delimiters-depth-9-face ((t (:foreground ,monokai-red+1))))
   `(rainbow-delimiters-depth-10-face ((t (:foreground ,monokai-green+1))))
   `(rainbow-delimiters-depth-11-face ((t (:foreground ,monokai-purple+1))))
   `(rainbow-delimiters-depth-12-face ((t (:foreground ,monokai-orange+1))))

   ;;rcirc
   `(rcirc-my-nick ((t (:foreground ,monokai-blue))))
   `(rcirc-other-nick ((t (:foreground ,monokai-orange))))
   `(rcirc-bright-nick ((t (:foreground ,monokai-blue+1))))
   `(rcirc-dim-nick ((t (:foreground ,monokai-blue-1))))
   `(rcirc-server ((t (:foreground ,monokai-green))))
   `(rcirc-server-prefix ((t (:foreground ,monokai-green+1))))
   `(rcirc-timestamp ((t (:foreground ,monokai-purple))))
   `(rcirc-nick-in-message ((t (:foreground ,monokai-yellow))))
   `(rcirc-nick-in-message-full-line ((t (:bold t))))
   `(rcirc-prompt ((t (:foreground ,monokai-fg-1 :bold t))))
   `(rcirc-track-nick ((t (:inverse-video t))))
   `(rcirc-track-keyword ((t (:bold t))))
   `(rcirc-url ((t (:bold t))))
   `(rcirc-keyword ((t (:foreground ,monokai-red :bold t))))

   ;; rpm-mode
   `(rpm-spec-dir-face ((t (:foreground ,monokai-green))))
   `(rpm-spec-doc-face ((t (:foreground ,monokai-blue))))
   `(rpm-spec-ghost-face ((t (:foreground ,monokai-magenta))))
   `(rpm-spec-macro-face ((t (:foreground ,monokai-yellow))))
   `(rpm-spec-obsolete-tag-face ((t (:foreground ,monokai-red))))
   `(rpm-spec-package-face ((t (:foreground ,monokai-purple))))
   `(rpm-spec-section-face ((t (:foreground ,monokai-yellow))))
   `(rpm-spec-tag-face ((t (:foreground ,monokai-purple))))
   `(rpm-spec-var-face ((t (:foreground ,monokai-orange))))

   ;; rst-mode
   `(rst-level-1-face ((t (:foreground ,monokai-orange))))
   `(rst-level-2-face ((t (:foreground ,monokai-green))))
   `(rst-level-3-face ((t (:foreground ,monokai-blue))))
   `(rst-level-4-face ((t (:foreground ,monokai-yellow))))
   `(rst-level-5-face ((t (:foreground ,monokai-purple))))
   `(rst-level-6-face ((t (:foreground ,monokai-red))))

   ;; show-paren
   `(show-paren-mismatch ((t (:foreground ,monokai-red :background ,monokai-bg :weight bold))))
   `(show-paren-match ((t (:foreground ,monokai-green :background ,monokai-bg :weight bold))))

   ;; sml-mode-line
   '(sml-modeline-end-face ((t :inherit default :width condensed)))

   ;; SLIME
   `(slime-repl-inputed-output-face ((t (:foreground ,monokai-red))))

   ;; tabbar
   `(tabbar-button ((t (:foreground ,monokai-fg
                                    :background ,monokai-bg))))
   `(tabbar-selected ((t (:foreground ,monokai-fg
                                      :background ,monokai-bg
                                      :box (:line-width -1 :style pressed-button)))))
   `(tabbar-unselected ((t (:foreground ,monokai-fg
                                        :background ,monokai-bg+2
                                        :box (:line-width -1 :style released-button)))))

   ;; term
   `(term-color-black ((t (:foreground ,monokai-bg+2
                                       :background ,monokai-fg-1))))
   `(term-color-red ((t (:foreground ,monokai-red
                                       :background ,monokai-red+1))))
   `(term-color-green ((t (:foreground ,monokai-green
                                       :background ,monokai-green+1))))
   `(term-color-yellow ((t (:foreground ,monokai-orange
                                       :background ,monokai-orange+1))))
   `(term-color-blue ((t (:foreground ,monokai-blue-1
                                      :background ,monokai-blue+1))))
   `(term-color-magenta ((t (:foreground ,monokai-purple
                                         :background ,monokai-purple+1))))
   `(term-color-cyan ((t (:foreground ,monokai-cyan
                                       :background ,monokai-cyan+1))))
   `(term-color-white ((t (:foreground ,monokai-fg
                                       :background ,monokai-fg+1))))
   '(term-default-fg-color ((t (:inherit term-color-white))))
   '(term-default-bg-color ((t (:inherit term-color-black))))

   ;; volatile-highlights
   `(vhl/default-face ((t (:background ,monokai-bg+2))))

   ;; emacs-w3m
   `(w3m-anchor ((t (:foreground ,monokai-fg-1 :underline t
                                 :weight bold))))
   `(w3m-arrived-anchor ((t (:foreground ,monokai-yellow-1
                                         :underline t :weight normal))))
   `(w3m-form ((t (:foreground ,monokai-red :underline t))))
   `(w3m-header-line-location-title ((t (:foreground ,monokai-fg-1
                                                     :underline t :weight bold))))
   '(w3m-history-current-url ((t (:inherit match))))
   `(w3m-lnum ((t (:foreground ,monokai-purple :background ,monokai-bg))))
   `(w3m-lnum-match ((t (:background ,monokai-bg-2
                                     :foreground ,monokai-orange
                                     :weight bold))))
   `(w3m-lnum-minibuffer-prompt ((t (:foreground ,monokai-fg-1))))

   ;; whitespace-mode
   `(whitespace-space ((t (:background ,monokai-bg :foreground ,monokai-bg-2))))
   `(whitespace-hspace ((t (:background ,monokai-bg :foreground ,monokai-bg-2))))
   `(whitespace-tab ((t (:background ,monokai-red))))
   `(whitespace-newline ((t (:foreground ,monokai-bg-2))))
   `(whitespace-trailing ((t (:background ,monokai-red))))
   `(whitespace-line ((t (:background ,monokai-bg :foreground ,monokai-red))))
   `(whitespace-space-before-tab ((t (:background ,monokai-bg :foreground ,monokai-orange))))
   `(whitespace-indentation ((t (:background ,monokai-fg-1 :foreground ,monokai-red))))
   `(whitespace-empty ((t (:background ,monokai-fg-1))))
   `(whitespace-space-after-tab ((t (:background ,monokai-fg-1 :foreground ,monokai-red))))

   ;; wanderlust
   `(wl-highlight-folder-few-face ((t (:foreground ,monokai-purple))))
   `(wl-highlight-folder-many-face ((t (:foreground ,monokai-red))))
   `(wl-highlight-folder-path-face ((t (:foreground ,monokai-orange))))
   `(wl-highlight-folder-unread-face ((t (:foreground ,monokai-blue))))
   `(wl-highlight-folder-zero-face ((t (:foreground ,monokai-fg))))
   `(wl-highlight-folder-unknown-face ((t (:foreground ,monokai-cyan))))
   `(wl-highlight-message-citation-header ((t (:foreground ,monokai-yellow))))
   `(wl-highlight-message-cited-text-1 ((t (:foreground ,monokai-purple))))
   `(wl-highlight-message-cited-text-2 ((t (:foreground ,monokai-purple+1))))
   `(wl-highlight-message-cited-text-3 ((t (:foreground ,monokai-blue))))
   `(wl-highlight-message-cited-text-4 ((t (:foreground ,monokai-blue+1))))
   `(wl-highlight-message-header-contents-face ((t (:foreground ,monokai-green))))
   `(wl-highlight-message-headers-face ((t (:foreground ,monokai-red+1))))
   `(wl-highlight-message-important-header-contents ((t (:foreground ,monokai-purple))))
   `(wl-highlight-message-header-contents ((t (:foreground ,monokai-green+1))))
   `(wl-highlight-message-important-header-contents2 ((t (:foreground ,monokai-purple+1))))
   `(wl-highlight-message-signature ((t (:foreground ,monokai-green))))
   `(wl-highlight-message-unimportant-header-contents ((t (:foreground ,monokai-fg))))
   `(wl-highlight-summary-answered-face ((t (:foreground ,monokai-blue))))
   `(wl-highlight-summary-disposed-face ((t (:foreground ,monokai-fg
                                                         :slant italic))))
   `(wl-highlight-summary-new-face ((t (:foreground ,monokai-blue))))
   `(wl-highlight-summary-normal-face ((t (:foreground ,monokai-fg))))
   `(wl-highlight-summary-thread-top-face ((t (:foreground ,monokai-fg-1))))
   `(wl-highlight-thread-indent-face ((t (:foreground ,monokai-magenta))))
   `(wl-highlight-summary-refiled-face ((t (:foreground ,monokai-fg))))
   `(wl-highlight-summary-displaying-face ((t (:underline t :weight bold))))

   ;; which-func-mode
   `(which-func ((t (:foreground ,monokai-purple+1))))

   ;; yascroll
   `(yascroll:thumb-text-area ((t (:background ,monokai-bg-2))))
   `(yascroll:thumb-fringe ((t (:background ,monokai-bg-2 :foreground ,monokai-bg-2)))))

  ;;; custom theme variables
  (custom-theme-set-variables
   'monokai
   `(ansi-color-names-vector [,monokai-bg
                              ,monokai-red
                              ,monokai-green
                              ,monokai-orange
                              ,monokai-blue
                              ,monokai-purple
                              ,monokai-cyan
                              ,monokai-fg])

   ;; fill-column-indicator
   `(fci-rule-color ,monokai-bg)))

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'monokai)

;; Local Variables:
;; no-byte-compile: t
;; indent-tabs-mode: nil
;; eval: (when (fboundp 'rainbow-mode) (rainbow-mode +1))
;; End:

;;; monokai-theme.el ends here
