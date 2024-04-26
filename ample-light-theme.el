;;; ample-light-theme.el --- Calm Light Theme for Emacs
;;
;; Filename: ample-light-theme.el
;; Description: Light version of the ample themes.
;; Author: Jordon Biondo <jordonbiondo@gmail.com>
;; Created: Wed Jul 24 01:04:58 2013 (-0400)
;; Version: 0.3.0
;; Last-Updated: Mon Nov  3 11:16:30 2014 (-0500)
;;           By: Jordon Biondo
;;     Update #: 33
;; URL: https://github.com/jordonbiondo/ample-theme
;; Keywords: theme, light, ample
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Commentary:
;;
;;  ample-light-theme is part of the ample themes, a collection of 3 themes
;;  sharing a similar pallet with a light, dark, and flat version.
;;
;;  Ample-light-theme is a calm light theme with a focus on being easy on the eyes
;;  during night and day.
;;
;;  Terminals with 256 colors and up will display this theme correctly.
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation; either version 3, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth
;; Floor, Boston, MA 02110-1301, USA.
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Code:
(deftheme ample-light "A smooth light theme to pair with ample-dark.")

;; Not a bad idea to define a palette...
(let* ((ample/green "#4A8F30")
       (ample/dark-green "#057F40")
       (ample/light-green-bg "#BBC8A1")
       (ample/blue "#4170B3")
       (ample/light-blue "#528FD1")
       (ample/light-blue-bg "#BBB9B1")
       (ample/lighter-blue "#68A5E9")
       (ample/orange "#FF8512")
       (ample/tan "#5D5C01")
       (ample/dark-tan "#7D7C21")
       (ample/yellow "#787800")
       (ample/bright-yellow "#BFBE6A")
       (ample/purple "#9B55C3")
       (ample/gray "#959595")
       (ample/dark-gray "#959595")
       (ample/darker-gray "#757575")
       (ample/darkest-gray "#252525")
       (ample/red "#CD5542")
       (ample/dark-red "#9D2512")
       (ample/light-red-bg "#CAB9A1")

       (ample/cursor "#F57E00")
       (ample/fringe "#CBC9B1")

       (ample/region "#BBB9A1")
       (ample/region-dark "#ABA991")
       (ample/region-light "#d2d0b1")

       (ample/rb0 "#215083")
       (ample/rb1 "#555555")
       (ample/rb2 "#515003")
       (ample/rb3 "#555555")
       (ample/rb4 "#215083")
       (ample/rb5 "#515003")

       (ample/bg "#cBc9b1")
       (ample/fg "gray43"))



  ;; Set faces
  (custom-theme-set-faces
   `ample-light ;; you must use the same theme name here...
   `(default ((t (:foreground ,ample/fg :background ,ample/bg))))
   `(cursor  ((t (:foreground ,ample/bg :background ,ample/cursor))))
   `(fringe  ((t (:background ,ample/fringe))))
   `(link    ((t (:foreground ,ample/lighter-blue :underline t))))
   `(region  ((t (:background ,ample/region))))

   ;; standard font lock
   `(font-lock-builtin-face		((t (:foreground ,ample/light-blue))))
   `(font-lock-comment-face		((t (:foreground ,ample/gray))))
   `(font-lock-comment-delimiter-face	((t (:foreground ,ample/dark-gray))))
   `(font-lock-function-name-face	((t (:foreground ,ample/green))))
   `(font-lock-keyword-face		((t (:foreground ,ample/blue))))
   `(font-lock-string-face		((t (:foreground ,ample/tan))))
   `(font-lock-preprocessor-face	((t (:foreground ,ample/orange))))
   `(font-lock-type-face		((t (:foreground ,ample/red))))
   `(font-lock-constant-face		((t (:foreground ,ample/purple))))
   `(font-lock-warning-face		((t (:foreground "red" :bold t))))
   `(font-lock-variable-name-face	((t (:foreground ,ample/yellow))))
   `(font-lock-doc-face			((t (:foreground ,ample/dark-tan))))

   ;; mode line & powerline
   `(powerline-active1	((t (:foreground ,ample/darkest-gray))))
   `(mode-line-inactive ((t (:background ,ample/region-dark :foreground ,ample/bg))))
   `(mode-line		((t (:background ,ample/region :foreground ,ample/fg))))

   `(linum ((t (:background unspecified :foreground ,ample/gray))))

   `(popup-tip-face ((t (:background ,ample/region-dark :foreground ,ample/dark-tan))))

   `(header-line ((t (:background ,ample/fg :foreground ,ample/bg))))

   `(button  ((t (:foreground ,ample/lighter-blue :background unspecified :underline t))))

   ;; search
   `(isearch		((t (:background ,ample/blue :foreground ,ample/bg))))
   `(lazy-highlight	((t (:background ,ample/bg :foreground ,ample/purple :underline t))))

   ;; evil-search-highlight-persist
   `(evil-search-highlight-persist-highlight-face ((t (:background ,ample/blue :foreground ,ample/bg))))

   ;; ace-jump
   `(ace-jump-face-background ((t (:inherit font-lock-comment-face :background unspecified))))
   `(ace-jump-face-foreground ((t (:foreground ,ample/purple :bold t :background unspecified))))

   `(avy-background-face  ((t (:foreground ,ample/dark-gray :background unspecified))))
   `(avy-lead-face  ((t (:foreground "white" :background ,ample/purple))))
   `(avy-lead-face-0  ((t (:foreground "white" :background ,ample/blue))))
   `(avy-lead-face-1  ((t (:foreground "white" :background ,ample/fg))))

   `(vertical-border ((t (:background ,ample/darker-gray :foreground ,ample/darkest-gray))))

   `(hl-line ((t (:background ,ample/region-light))))

   `(highlight-indentation-face ((t (:background ,ample/darkest-gray))))

   ;; mini buff
   `(minibuffer-prompt ((t (:foreground ,ample/purple :bold t :background unspecified))))


   `(compilation-error		((t (:foreground ,ample/red :bold t))))
   `(compilation-warning	((t (:foreground ,ample/orange :bold t))))
   `(compilation-info		((t (:foreground ,ample/green :bold t))))

   ;; eshell
   `(eshell-prompt ((t (:foreground ,ample/purple))))
   `(eshell-ls-directory ((t (:foreground ,ample/blue))))
   `(eshell-ls-product ((t (:foreground ,ample/orange))))
   `(eshell-ls-backup ((t (:foreground ,ample/darker-gray))))
   `(eshell-ls-executable ((t (:foreground ,ample/green))))

   ;; shell
   `(comint-highlight-prompt ((t (:foreground ,ample/green))))

   ;; term
   `(term-color-black ((t (:foreground ,ample/darkest-gray :background ,ample/darkest-gray))))
   `(term-color-red ((t (:foreground ,ample/red :background ,ample/red))))
   `(term-color-green ((t (:foreground ,ample/green :background ,ample/green))))
   `(term-color-yellow ((t (:foreground ,ample/yellow :background ,ample/yellow))))
   `(term-color-blue ((t (:foreground ,ample/blue :background ,ample/blue))))
   `(term-color-magenta ((t (:foreground ,ample/purple :background ,ample/purple))))
   `(term-color-cyan ((t (:foreground ,ample/lighter-blue :background ,ample/lighter-blue))))
   `(term-color-white ((t (:foreground ,ample/fg :background ,ample/fg))))
   `(term-default-fg-color ((t (:inherit ample/fg))))
   `(term-default-bg-color ((t (:inherit ample/bg))))

   ;; erc
   `(erc-nick-default-face ((t (:foreground ,ample/blue))))
   `(erc-my-nick-face ((t (:foreground ,ample/yellow))))
   `(erc-current-nick-face ((t (:foreground ,ample/light-blue))))
   `(erc-notice-face ((t (:inherit font-lock-comment-face))))
   `(erc-input-face ((t (:foreground ,ample/fg :background unspecified :underline unspecified :box unspecified))))
   `(erc-timestamp-face ((t (:foreground ,ample/darker-gray))))
   `(erc-prompt-face ((t (:foreground "#191919" :background ,ample/purple))))

   ;;undo-tree
   `(undo-tree-visualizer-active-branch-face ((t (:inherit default))))
   `(undo-tree-visualizer-default-face ((t (:inherit font-lock-comment-face))))
   `(undo-tree-visualizer-register-face ((t (:foreground ,ample/yellow :background unspecified))))
   `(undo-tree-visualizer-current-face ((t (:foreground ,ample/red :background unspecified))))
   `(undo-tree-visualizer-unmodified-face ((t (:foreground ,ample/purple :background unspecified))))

   ;;show paren
   `(show-paren-match ((t (:foreground unspecified :background ,ample/dark-gray))))
   `(show-paren-mismatch ((t (:inherit error))))

   ;; error
   `(error ((t (:foreground "red"))))

   ;; ido
   `(ido-only-match		((t (:foreground ,ample/green))))
   `(ido-first-match		((t (:foreground ,ample/blue))))
   `(ido-incomplete-regexp	((t (:foreground ,ample/red))))
   `(ido-subdir			((t (:foreground ,ample/yellow))))

   ;;js2
   `(js2-external-variable		((t (:foreground ,ample/orange :background unspecified))))
   `(js2-function-param			((t (:foreground ,ample/dark-green :background unspecified))))
   `(js2-instance-member		((t (:foreground ,ample/purple :background unspecified))))
   `(js2-jsdoc-html-tag-delimiter	((t (:foreground ,ample/dark-gray :background unspecified))))
   `(js2-jsdoc-html-tag-name		((t (:foreground ,ample/darkest-gray :background unspecified))))
   `(js2-jsdoc-tag			((t (:foreground ,ample/dark-red :background unspecified))))
   `(js2-jsdoc-type			((t (:foreground ,ample/red :background unspecified))))
   `(js2-jsdoc-value			((t (:foreground ,ample/tan :background unspecified))))
   `(js2-private-function-call		((t (:foreground ,ample/dark-green :background unspecified))))
   `(js2-private-member			((t (:foreground ,ample/dark-tan :background unspecified))))
   `(js2-warning			((t (:foreground unspecified :background unspecified :underline ,ample/orange))))

   ;;web-mode
   `(web-mode-block-attr-name-face              ((t (:foreground "#8fbc8f" :background unspecified))))
   `(web-mode-block-attr-value-face             ((t (:inherit font-lock-string-face))))
   `(web-mode-block-comment-face                ((t (:inherit font-lock-comment-face))))
   `(web-mode-block-control-face                ((t (:inherit font-lock-preprocessor-face))))
   `(web-mode-block-delimiter-face              ((t (:inherit font-lock-preprocessor-face))))
   `(web-mode-block-face                        ((t (:foreground unspecified :background "LightYellow1"))))
   `(web-mode-block-string-face                 ((t (:inherit font-lock-string-face))))
   `(web-mode-builtin-face                      ((t (:inherit font-lock-builtin-face))))
   `(web-mode-comment-face                      ((t (:inherit font-lock-comment-face))))
   `(web-mode-comment-keyword-face              ((t (:foreground unspecified :background unspecified :bold t))))
   `(web-mode-constant-face                     ((t (:foreground ,ample/purple :background unspecified))))
   `(web-mode-css-at-rule-face                  ((t (:foreground ,ample/purple :background unspecified))))
   `(web-mode-css-color-face                    ((t (:foreground ,ample/light-blue :background unspecified))))
   `(web-mode-css-comment-face                  ((t (:inherit font-lock-comment-face))))
   `(web-mode-css-function-face                 ((t (:foreground ,ample/light-blue :background unspecified))))
   `(web-mode-css-priority-face                 ((t (:foreground ,ample/light-blue :background unspecified))))
   `(web-mode-css-property-name-face            ((t (:inherit font-lock-variable-name-face))))
   `(web-mode-css-pseudo-class-face             ((t (:foreground ,ample/light-blue :background unspecified))))
   `(web-mode-css-selector-face                 ((t (:foreground ,ample/blue :background unspecified))))
   `(web-mode-css-string-face                   ((t (:foreground ,ample/tan :background unspecified))))
   `(web-mode-current-element-highlight-face    ((t (:foreground unspecified :background "#000000"))))
   `(web-mode-doctype-face                      ((t (:inherit font-lock-doc-face))))
   `(web-mode-error-face                        ((t (:inherit error))))
   `(web-mode-folded-face                       ((t (:foreground unspecified :background unspecified :underline t))))
   `(web-mode-function-call-face                ((t (:inherit font-lock-function-name-face))))
   `(web-mode-function-name-face                ((t (:inherit font-lock-function-name-face))))
   `(web-mode-html-attr-custom-face             ((t (:inherit font-lock-comment-face))))
   `(web-mode-html-attr-equal-face              ((t (:inherit font-lock-comment-face))))
   `(web-mode-html-attr-name-face               ((t (:inherit font-lock-keyword-face))))
   `(web-mode-html-attr-value-face              ((t (:inherit font-lock-string-face))))
   `(web-mode-html-tag-bracket-face             ((t (:inherit font-lock-comment-face))))
   `(web-mode-html-tag-custom-face              ((t (:inherit font-lock-comment-face))))
   `(web-mode-html-tag-face                     ((t (:inherit font-lock-comment-face ))))
   `(web-mode-javascript-comment-face           ((t (:inherit font-lock-comment-face))))
   `(web-mode-javascript-string-face            ((t (:inherit font-lock-string-face))))
   `(web-mode-json-comment-face                 ((t (:inherit font-lock-comment-face))))
   `(web-mode-json-context-face                 ((t (:foreground "orchid3" :background unspecified))))
   `(web-mode-json-key-face                     ((t (:foreground "plum" :background unspecified))))
   `(web-mode-json-string-face                  ((t (:inherit font-lock-string-face))))
   `(web-mode-keyword-face                      ((t (:inherit font-lock-keyword-face))))
   `(web-mode-param-name-face                   ((t (:foreground "Snow3" :background unspecified))))
   `(web-mode-part-comment-face                 ((t (:inherit font-lock-comment-face))))
   `(web-mode-part-face                         ((t (:foreground unspecified :background "LightYellow1"))))
   `(web-mode-part-string-face                  ((t (:inherit font-lock-string-face))))
   `(web-mode-preprocessor-face                 ((t (:inherit font-lock-preprocessor-face))))
   `(web-mode-string-face                       ((t (:inherit font-lock-string-face))))
   `(web-mode-symbol-face                       ((t (:foreground "gold" :background unspecified))))
   `(web-mode-type-face                         ((t (:inherit font-lock-type-face))))
   `(web-mode-variable-name-face                ((t (:inherit font-lock-variable-name-face))))
   `(web-mode-warning-face                      ((t (:inherit font-lock-warning-face))))
   `(web-mode-whitespace-face                   ((t (:foreground unspecified :background "DarkOrchid4"))))

   ;; helm
   `(helm-M-x-key			((t (:foreground ,ample/orange :underline unspecified))))
   ;;`(helm-action			((t ())))
   ;;`(helm-bookmark-addressbook	((t ())))
   ;;`(helm-bookmark-directory		((t ())))
   ;;`(helm-bookmark-file		((t ())))
   ;;`(helm-bookmark-gnus		((t ())))
   ;;`(helm-bookmark-info		((t ())))
   ;;`(helm-bookmark-man		((t ())))
   ;;`(helm-bookmark-w3m		((t ())))
   ;;`(helm-buffer-not-saved		((t ())))
   ;;`(helm-buffer-process		((t ())))
   ;;`(helm-buffer-saved-out		((t ())))
   ;;`(helm-buffer-size			((t ())))
   `(helm-candidate-number		((t (:foreground ,ample/green :background ,ample/darker-gray))))
   `(helm-ff-directory			((t (:foreground ,ample/blue))))
   `(helm-ff-executable			((t (:foreground ,ample/green))))
   `(helm-ff-file			((t (:inherit default))))
   ;;`(helm-ff-invalid-symlink		((t ())))
   `(helm-ff-prefix			((t (:foreground ,ample/red))))
   ;;`(helm-ff-symlink			((t ())))
   ;;`(helm-grep-cmd-line		((t ())))
   ;;`(helm-grep-file			((t ())))
   ;;`(helm-grep-finish			((t ())))
   ;;`(helm-grep-lineno			((t ())))
   ;;`(helm-grep-match			((t ())))
   ;;`(helm-grep-running		((t ())))
   `(helm-header			((t (:foreground ,ample/bg :background ,ample/fg))))
   ;;`(helm-helper			((t ())))
   ;;`(helm-history-deleted		((t ())))
   ;;`(helm-history-remote		((t ())))
   ;;`(helm-lisp-completion-info	((t ())))
   ;;`(helm-lisp-show-completion	((t ())))
   `(helm-match				((t (:foreground ,ample/fg :background ,ample/light-green-bg))))
   ;;`(helm-moccur-buffer		((t ())))
   `(helm-selection			((t (:foreground ,ample/red :background ,ample/light-green-bg :bold t))))
   ;;`(helm-selection-line		((t ())))
   ;;`(helm-separator			((t ())))
   `(helm-source-header			((t (:foreground ,ample/darkest-gray :background ,ample/region-dark))))
   ;;`(helm-visible-mark		((t ())))

   ;; jabber
   `(jabber-activity-face		((t (:inherit font-lock-variable-name-face :bold t))))
   `(jabber-activity-personal-face	((t (:inherit font-lock-function-name-face :bold t))))
   `(jabber-chat-error			((t (:inherit error :bold t))))
   ;; `(jabber-chat-prompt-foreign	((t (:foreground "red" :background unspecified :bold t))))
   ;;`(jabber-chat-prompt-local		((t (:foreground "blue" :background unspecified :bold t))))
   ;;`(jabber-chat-prompt-system	((t (:foreground "green" :background unspecified :bold t))))
   `(jabber-chat-text-foreign		((t (:inherit font-lock-function-name-face))))
   `(jabber-chat-text-local		((t (:inherit font-lock-keyword-face))))
   ;;`(jabber-rare-time-face		((t (:foreground "darkgreen" :background unspecified :underline t))))
   `(jabber-roster-user-away		((t (:inherit font-lock-string-face))))
   `(jabber-roster-user-chatty		((t (:foreground ,ample/orange :background unspecified :bold t))))
   ;;`(jabber-roster-user-dnd		((t (:foreground "red" :background unspecified))))
   `(jabber-roster-user-error		((t (:inherit error))))
   `(jabber-roster-user-offline		((t (:inherit font-lock-comment-face))))
   `(jabber-roster-user-online		((t (:inherit font-lock-keyword-face :bold t))))
   `(jabber-roster-user-xa		((t (:inherit font-lock-doc-face))))
   ;;`(jabber-title-large		((t (:foreground unspecified :background unspecified :bold t))))
   ;;`(jabber-title-medium		((t (:foreground unspecified :background unspecified :bold t))))
   ;;`(jabber-title-small		((t (:foreground unspecified :background unspecified :bold t))))


   ;; rainbow delim
   `(rainbow-delimiters-depth-1-face ((t (:foreground ,ample/rb0 :background unspecified))))
   `(rainbow-delimiters-depth-2-face ((t (:foreground ,ample/rb1 :background unspecified))))
   `(rainbow-delimiters-depth-3-face ((t (:foreground ,ample/rb2 :background unspecified))))
   `(rainbow-delimiters-depth-4-face ((t (:foreground ,ample/rb3 :background unspecified))))
   `(rainbow-delimiters-depth-5-face ((t (:foreground ,ample/rb4 :background unspecified))))
   `(rainbow-delimiters-depth-6-face ((t (:foreground ,ample/rb5 :background unspecified))))
   `(rainbow-delimiters-depth-7-face ((t (:foreground ,ample/rb0 :background unspecified))))
   `(rainbow-delimiters-depth-8-face ((t (:foreground ,ample/rb1 :background unspecified))))
   `(rainbow-delimiters-depth-9-face ((t (:foreground ,ample/rb2 :background unspecified))))
   `(rainbow-delimiters-unmatched-face ((t (:inherit error))))

   ;; auto complete
   `(ac-candidate-face			((t (:foreground ,ample/bg :background ,ample/region-dark))))
   `(ac-selection-face			((t (:foreground ,ample/blue :background ,ample/region-dark))))
   `(ac-candidate-mouse-face		((t (:inherit ac-selection-face))))
   `(ac-clang-candidate-face		((t (:inherit ac-candidate-face))))
   `(ac-clang-selection-face		((t (:inherit ac-selection-face))))
   `(ac-completion-face			((t (:inherit font-lock-comment-face :underline t))))
   `(ac-gtags-candidate-face		((t (:inherit ac-candidate-face))))
   `(ac-gtags-selection-face		((t (:inherit ac-selection-face))))
   `(ac-slime-menu-face			((t (:inherit ac-candidate-face))))
   `(ac-slime-selection-face		((t (:inherit ac-selection-face))))
   `(ac-yasnippet-candidate-face	((t (:inherit ac-candidate-face))))
   `(ac-yasnippet-selection-face	((t (:inherit ac-selection-face))))

   ;;`(company-echo                        ((t (:foreground unspecified :background unspecified))))
   ;;`(company-echo-common              ((t (:foreground unspecified :background "firebrick4"))))
   ;;`(company-preview                  ((t (:foreground "wheat" :background "blue4"))))
   `(company-preview-common             ((t (:inherit font-lock-comment-face))))
   ;;`(company-preview-search           ((t (:foreground "wheat" :background "blue1"))))
   ;;`(company-template-field           ((t (:foreground "black" :background "orange"))))
   `(company-scrollbar-bg               ((t (:foreground unspecified :background ,ample/fg))))
   `(company-scrollbar-fg               ((t (:foreground unspecified :background ,ample/dark-gray))))
   `(company-tooltip                    ((t (:foreground ,ample/bg :background ,ample/region-dark))))
   `(company-tooltip-common             ((t (:foreground ,ample/light-blue :background ,ample/region-dark))))
   `(company-tooltip-common-selection   ((t (:foreground ,ample/bg :background ,ample/region))))
   `(company-tooltip-mouse              ((t (:foreground unspecified :background ,ample/light-red-bg))))
   `(company-tooltip-selection          ((t (:foreground ,ample/fg :background ,ample/region-dark))))
   `(company-tooltip-annotation         ((t (:foreground ,ample/red :background ,ample/region-dark))))


   ;; w3m
   ;;`(w3m-anchor			((t (:foreground "cyan" :background unspecified))))
   ;;`(w3m-arrived-anchor		((t (:foreground "LightSkyBlue" :background unspecified))))
   `(w3m-bold				((t (:foreground ,ample/blue :background unspecified :bold t))))
   `(w3m-current-anchor			((t (:foreground unspecified :background unspecified :underline t :bold t))))
   ;;`(w3m-form				((t (:foreground "red" :background unspecified :underline t))))
   ;;`(w3m-form-button			((t (:foreground "red" :background unspecified :underline t))))
   ;;`(w3m-form-button-mouse		((t (:foreground "red" :background unspecified :underline t))))
   ;;`(w3m-form-button-pressed		((t (:foreground "red" :background unspecified :underline t))))
   ;;`(w3m-form-inactive		((t (:foreground "grey70" :background unspecified :underline t))))
   ;;`(w3m-header-line-location-content ((t (:foreground "LightGoldenrod" :background "Gray20"))))
   ;;`(w3m-header-line-location-title	((t (:foreground "Cyan" :background "Gray20"))))
   ;;`(w3m-history-current-url		((t (:foreground "LightSkyBlue" :background "SkyBlue4"))))
   ;;`(w3m-image			((t (:foreground "PaleGreen" :background unspecified))))
   ;;`(w3m-image-anchor			((t (:foreground unspecified :background "dark green"))))
   ;;`(w3m-insert			((t (:foreground "orchid" :background unspecified))))
   `(w3m-italic				((t (:foreground ,ample/orange :background unspecified :underline t))))
   ;;`(w3m-session-select		((t (:foreground "cyan" :background unspecified))))
   ;;`(w3m-session-selected		((t (:foreground "cyan" :background unspecified :underline t :bold t))))
   ;;`(w3m-strike-through		((t (:foreground unspecified :background unspecified))))
   ;;`(w3m-tab-background		((t (:foreground "black" :background "white"))))
   ;;`(w3m-tab-mouse			((t (:foreground unspecified :background unspecified))))
   ;;`(w3m-tab-selected			((t (:foreground "black" :background "cyan"))))
   ;;`(w3m-tab-selected-background	((t (:foreground "black" :background "white"))))
   ;;`(w3m-tab-selected-retrieving	((t (:foreground "red" :background "cyan"))))
   ;;`(w3m-tab-unselected		((t (:foreground "black" :background "blue"))))
   ;;`(w3m-tab-unselected-retrieving	((t (:foreground "OrangeRed" :background "blue"))))
   ;;`(w3m-tab-unselected-unseen	((t (:foreground "gray60" :background "blue"))))
   `(w3m-underline			((t (:foreground ,ample/green :background unspecified :underline t))))


   ;; ediff
   `(ediff-current-diff-A((t (:foreground unspecified :background ,ample/light-red-bg))))
   `(ediff-current-diff-B((t (:foreground unspecified :background ,ample/light-green-bg))))
   `(ediff-current-diff-C((t (:foreground unspecified :background ,ample/light-blue-bg))))
   ;;`(ediff-current-diff-Ancestor((t ())))
   `(ediff-even-diff-A			((t (:foreground unspecified :background ,ample/region-dark))))
   `(ediff-even-diff-B			((t (:foreground unspecified :background ,ample/region-dark))))
   `(ediff-even-diff-C			((t (:foreground unspecified :background ,ample/region-dark))))
   ;;`(ediff-even-diff-Ancestor		((t ())))

   `(ediff-fine-diff-A			((t (:foreground ,ample/fg :background ,ample/red))))
   `(ediff-fine-diff-B			((t (:foreground ,ample/fg :background ,ample/green))))
   `(ediff-fine-diff-C			((t (:foreground ,ample/fg :background ,ample/blue))))
   ;;`(ediff-fine-diff-Ancestor		((t ())))

   `(ediff-odd-diff-A			((t (:foreground unspecified :background ,ample/region-dark))))
   `(ediff-odd-diff-B			((t (:foreground unspecified :background ,ample/region-dark))))
   `(ediff-odd-diff-C			((t (:foreground unspecified :background ,ample/region-dark))))
   ;;`(ediff-odd-diff-Ancestor		((t ())))

   `(diff-added             ((t (:foreground unspecified :background ,ample/light-green-bg))))
   `(diff-changed           ((t (:foreground unspecified :background ,ample/light-blue-bg))))
   `(diff-removed           ((t (:foreground unspecified :background ,ample/light-red-bg))))
   `(diff-context           ((t (:foreground ,ample/fg :background unspecified))))
   `(diff-file-header       ((t (:foreground ,ample/bg :background ,ample/region-dark :bold t))))
   `(diff-function          ((t (:foreground ,ample/bg :background ,ample/region-dark))))
   `(diff-header            ((t (:foreground ,ample/bg :background ,ample/region-dark))))
   `(diff-hunk-header       ((t (:foreground ,ample/bg :background ,ample/region-dark))))
   `(diff-index             ((t (:foreground ,ample/bg :background ,ample/region-dark))))
   `(diff-indicator-added   ((t (:inherit diff-added))))
   `(diff-indicator-changed ((t (:inherit diff-changed))))
   `(diff-indicator-removed ((t (:inherit diff-removed))))
   `(diff-nonexistent       ((t (:foreground ,ample/fg :background "grey70"))))
   `(diff-refine-added      ((t (:foreground ,ample/fg :background ,ample/green))))
   `(diff-refine-changed    ((t (:foreground ,ample/fg :background ,ample/blue))))
   `(diff-refine-removed    ((t (:foreground ,ample/fg :background ,ample/red))))

   ;; man pages
   `(Man-overstrike ((t (:foreground ,ample/blue))))
   `(Man-underline ((t (:foreground ,ample/yellow))))

   ;; org
   ;;`(org-agenda-calendar-event ((t (:foreground unspecified :background unspecified))))
   ;;`(org-agenda-calendar-sexp ((t (:foreground unspecified :background unspecified))))
   ;;`(org-agenda-clocking ((t (:foreground unspecified :background unspecified))))
   ;;`(org-agenda-column-dateline ((t (:foreground unspecified :background unspecified))))
   ;;`(org-agenda-current-time ((t (:foreground unspecified :background unspecified))))
   ;;`(org-agenda-date ((t (:foreground unspecified :background unspecified))))
   ;;`(org-agenda-date-today ((t (:foreground unspecified :background unspecified))))
   ;;`(org-agenda-date-weekend ((t (:foreground unspecified :background unspecified))))
   ;;`(org-agenda-diary ((t (:foreground unspecified :background unspecified))))
   ;;`(org-agenda-dimmed-todo-face ((t (:foreground unspecified :background unspecified))))
   ;;`(org-agenda-done ((t (:foreground unspecified :background unspecified))))
   ;;`(org-agenda-filter-category ((t (:foreground unspecified :background unspecified))))
   ;;`(org-agenda-filter-tags ((t (:foreground unspecified :background unspecified))))
   ;;`(org-agenda-restriction-lock ((t (:foreground unspecified :background unspecified))))
   ;;`(org-agenda-structure ((t (:foreground unspecified :background unspecified))))
   ;;`(org-archived ((t (:foreground unspecified :background unspecified))))
   ;;`(org-beamer-tag ((t (:foreground unspecified :background unspecified))))
   ;;`(org-block ((t (:foreground unspecified :background unspecified))))
   ;;`(org-block-background ((t (:foreground unspecified :background unspecified))))
   ;;`(org-block-begin-line ((t (:foreground unspecified :background unspecified))))
   ;;`(org-block-end-line ((t (:foreground unspecified :background unspecified))))
   ;;`(org-checkbox ((t (:foreground unspecified :background unspecified))))
   ;;`(org-checkbox-statistics-done ((t (:foreground unspecified :background unspecified))))
   ;;`(org-checkbox-statistics-todo ((t (:foreground unspecified :background unspecified))))
   ;;`(org-clock-overlay ((t (:foreground unspecified :background unspecified))))
   ;;`(org-code ((t (:foreground unspecified :background unspecified))))
   ;;`(org-column ((t (:foreground unspecified :background unspecified))))
   ;;`(org-column-title ((t (:foreground unspecified :background unspecified))))
   ;;`(org-date ((t (:foreground unspecified :background unspecified))))
   ;;`(org-date-selected ((t (:foreground unspecified :background unspecified))))
   ;;`(org-default ((t (:foreground unspecified :background unspecified))))
   ;;`(org-document-info ((t (:foreground unspecified :background unspecified))))
   ;;`(org-document-info-keyword ((t (:foreground unspecified :background unspecified))))
   ;;`(org-document-title ((t (:foreground unspecified :background unspecified))))
   `(org-done ((t (:foreground ,ample/green :background unspecified))))
   `(org-todo ((t (:foreground ,ample/red :background unspecified))))
   ;;`(org-drawer ((t (:foreground unspecified :background unspecified))))
   ;;`(org-ellipsis ((t (:foreground unspecified :background unspecified))))
   ;;`(org-footnote ((t (:foreground unspecified :background unspecified))))
   ;;`(org-formula ((t (:foreground unspecified :background unspecified))))
   ;;`(org-headline-done ((t (:foreground unspecified :background unspecified))))
   `(org-hide ((t (:foreground ,ample/bg :background unspecified))))
   ;;`(org-latex-and-export-specials ((t (:foreground unspecified :background unspecified))))
   ;;`(org-level-1 ((t (:foreground unspecified :background unspecified))))
   ;;`(org-level-2 ((t (:foreground unspecified :background unspecified))))
   ;;`(org-level-3 ((t (:foreground unspecified :background unspecified))))
   ;;`(org-level-4 ((t (:foreground unspecified :background unspecified))))
   ;;`(org-level-5 ((t (:foreground unspecified :background unspecified))))
   ;;`(org-level-6 ((t (:foreground unspecified :background unspecified))))
   ;;`(org-level-7 ((t (:foreground unspecified :background unspecified))))
   ;;`(org-level-8 ((t (:foreground unspecified :background unspecified))))
   ;;`(org-link ((t (:foreground unspecified :background unspecified))))
   ;;`(org-list-dt ((t (:foreground unspecified :background unspecified))))
   ;;`(org-meta-line ((t (:foreground unspecified :background unspecified))))
   ;;`(org-mode-line-clock ((t (:foreground unspecified :background unspecified))))
   ;;`(org-mode-line-clock-overrun ((t (:foreground unspecified :background unspecified))))
   ;;`(org-property-value ((t (:foreground unspecified :background unspecified))))
   ;;`(org-quote ((t (:foreground unspecified :background unspecified))))
   ;;`(org-scheduled ((t (:foreground unspecified :background unspecified))))
   ;;`(org-scheduled-previously ((t (:foreground unspecified :background unspecified))))
   ;;`(org-scheduled-today ((t (:foreground unspecified :background unspecified))))
   ;;`(org-sexp-date ((t (:foreground unspecified :background unspecified))))
   ;;`(org-special-keyword ((t (:foreground unspecified :background unspecified))))
   ;;`(org-table ((t (:foreground unspecified :background unspecified))))
   ;;`(org-tag ((t (:foreground unspecified :background unspecified))))
   ;;`(org-target ((t (:foreground unspecified :background unspecified))))
   ;;`(org-time-grid ((t (:foreground unspecified :background unspecified))))
   ;;`(org-upcoming-deadline ((t (:foreground unspecified :background unspecified))))
   ;;`(org-verbatim ((t (:foreground unspecified :background unspecified))))
   ;;`(org-verse ((t (:foreground unspecified :background unspecified))))
   ;;`(org-warning ((t (:foreground unspecified :background unspecified))))


   ;; message-mode
   `(message-cited-text  ((t (:inherit font-lock-comment-face))))
   `(message-header-cc  ((t (:foreground ,ample/light-blue :background unspecified :bold t))))
   `(message-header-name  ((t (:foreground ,ample/orange :background unspecified))))
   `(message-header-newsgroups  ((t (:foreground ,ample/dark-tan :background unspecified :bold t))))
   `(message-header-other  ((t (:foreground ,ample/blue :background unspecified))))
   `(message-header-subject  ((t (:foreground ,ample/tan :background unspecified))))
   `(message-header-to  ((t (:foreground ,ample/yellow :background unspecified :bold t))))
   `(message-header-xheader  ((t (:foreground ,ample/purple :background unspecified))))
   `(message-mml  ((t (:foreground ,ample/dark-tan :background unspecified))))

   ;; gnus
   `(gnus-button				((t (:foreground unspecified :background unspecified :bold t))))
   `(gnus-cite-1				((t (:foreground "light blue" :background unspecified))))
   `(gnus-cite-10				((t (:foreground "plum1" :background unspecified))))
   `(gnus-cite-11				((t (:foreground "turquoise" :background unspecified))))
   `(gnus-cite-2				((t (:foreground "light cyan" :background unspecified))))
   `(gnus-cite-3				((t (:foreground "light yellow" :background unspecified))))
   `(gnus-cite-4				((t (:foreground "light pink" :background unspecified))))
   `(gnus-cite-5				((t (:foreground "pale green" :background unspecified))))
   `(gnus-cite-6				((t (:foreground "beige" :background unspecified))))
   `(gnus-cite-7				((t (:foreground "orange" :background unspecified))))
   `(gnus-cite-8				((t (:foreground "magenta" :background unspecified))))
   `(gnus-cite-9				((t (:foreground "violet" :background unspecified))))
   `(gnus-cite-attribution			((t (:foreground unspecified :background unspecified))))
   `(gnus-emphasis-bold				((t (:foreground unspecified :background unspecified :bold t))))
   `(gnus-emphasis-bold-italic			((t (:foreground unspecified :background unspecified :bold t))))
   `(gnus-emphasis-highlight-words		((t (:foreground "yellow" :background "black"))))
   `(gnus-emphasis-italic			((t (:foreground unspecified :background unspecified))))
   `(gnus-emphasis-strikethru			((t (:foreground unspecified :background unspecified))))
   `(gnus-emphasis-underline			((t (:foreground unspecified :background unspecified :underline t))))
   `(gnus-emphasis-underline-bold		((t (:foreground unspecified :background unspecified :underline t :bold t))))
   `(gnus-emphasis-underline-bold-italic	((t (:foreground unspecified :background unspecified :underline t :bold t))))
   `(gnus-emphasis-underline-italic		((t (:foreground unspecified :background unspecified :underline t))))
   `(gnus-group-mail-1				((t (:foreground ,ample/blue :background unspecified :bold t))))
   `(gnus-group-mail-1-empty			((t (:foreground ,ample/blue :background unspecified))))
   `(gnus-group-mail-2				((t (:foreground ,ample/lighter-blue :background unspecified :bold t))))
   `(gnus-group-mail-2-empty			((t (:foreground ,ample/lighter-blue :background unspecified))))
   `(gnus-group-mail-3				((t (:foreground ,ample/light-blue :background unspecified :bold t))))
   `(gnus-group-mail-3-empty			((t (:foreground ,ample/light-blue :background unspecified))))
   `(gnus-group-mail-low			((t (:foreground ,ample/yellow :background unspecified :bold t))))
   `(gnus-group-mail-low-empty			((t (:foreground ,ample/yellow :background unspecified))))
   `(gnus-group-news-1				((t (:foreground "PaleTurquoise" :background unspecified :bold t))))
   `(gnus-group-news-1-empty			((t (:foreground "PaleTurquoise" :background unspecified))))
   `(gnus-group-news-2				((t (:foreground "turquoise" :background unspecified :bold t))))
   `(gnus-group-news-2-empty			((t (:foreground "turquoise" :background unspecified))))
   `(gnus-group-news-3				((t (:foreground unspecified :background unspecified :bold t))))
   `(gnus-group-news-3-empty			((t (:foreground unspecified :background unspecified))))
   `(gnus-group-news-4				((t (:foreground unspecified :background unspecified :bold t))))
   `(gnus-group-news-4-empty			((t (:foreground unspecified :background unspecified))))
   `(gnus-group-news-5				((t (:foreground unspecified :background unspecified :bold t))))
   `(gnus-group-news-5-empty			((t (:foreground unspecified :background unspecified))))
   `(gnus-group-news-6				((t (:foreground unspecified :background unspecified :bold t))))
   `(gnus-group-news-6-empty			((t (:foreground unspecified :background unspecified))))
   `(gnus-group-news-low			((t (:foreground "DarkTurquoise" :background unspecified :bold t))))
   `(gnus-group-news-low-empty			((t (:foreground "DarkTurquoise" :background unspecified))))
   `(gnus-header-content			((t (:inherit message-header-other))))
   `(gnus-header-from				((t (:inherit message-header-other))))
   `(gnus-header-name				((t (:inherit message-header-name))))
   `(gnus-header-newsgroups			((t (:inherit message-header-newsgroups))))
   `(gnus-header-subject			((t (:inherit message-header-subject))))
   `(gnus-server-agent				((t (:foreground "PaleTurquoise" :background unspecified :bold t))))
   `(gnus-server-closed				((t (:foreground "LightBlue" :background unspecified))))
   `(gnus-server-denied				((t (:foreground "pink" :background unspecified :bold t))))
   `(gnus-server-offline			((t (:foreground "yellow" :background unspecified :bold t))))
   `(gnus-server-opened				((t (:foreground "green1" :background unspecified :bold t))))
   `(gnus-signature				((t (:foreground unspecified :background unspecified))))
   `(gnus-splash				((t (:foreground "#cccccc" :background unspecified))))
   `(gnus-summary-cancelled			((t (:foreground "yellow" :background "black"))))
   `(gnus-summary-high-ancient			((t (:foreground "SkyBlue" :background unspecified :bold t))))
   `(gnus-summary-high-read			((t (:foreground "PaleGreen" :background unspecified :bold t))))
   `(gnus-summary-high-ticked			((t (:foreground "pink" :background unspecified :bold t))))
   `(gnus-summary-high-undownloaded		((t (:foreground "LightGray" :background unspecified :bold t))))
   `(gnus-summary-high-unread			((t (:foreground unspecified :background unspecified :bold t))))
   `(gnus-summary-low-ancient			((t (:foreground "SkyBlue" :background unspecified))))
   `(gnus-summary-low-read			((t (:foreground "PaleGreen" :background unspecified))))
   `(gnus-summary-low-ticked			((t (:foreground "pink" :background unspecified))))
   `(gnus-summary-low-undownloaded		((t (:foreground "LightGray" :background unspecified))))
   `(gnus-summary-low-unread			((t (:foreground unspecified :background unspecified))))
   `(gnus-summary-normal-ancient		((t (:inherit default))))
   `(gnus-summary-normal-read			((t (:foreground ,ample/green :background unspecified))))
   `(gnus-summary-normal-ticked			((t (:foreground ,ample/orange :background unspecified))))
   `(gnus-summary-normal-undownloaded		((t (:foreground ,ample/dark-gray :background unspecified))))
   `(gnus-summary-normal-unread			((t (:foreground ,ample/light-blue :background unspecified))))
   `(gnus-summary-selected			((t (:foreground unspecified :background unspecified :underline t))))

   `(twittering-timeline-footer-face	((t (:foreground unspecified :background unspecified :inherit font-lock-function-name-face))))
   `(twittering-timeline-header-face	((t (:foreground unspecified :background unspecified :inherit font-lock-function-name-face))))
   `(twittering-uri-face		((t (:foreground unspecified :background unspecified :underline t))))
   `(twittering-username-face		((t (:foreground unspecified :background unspecified :inherit font-lock-keyword-face :underline t))))

   ;; whitespace mode
   `(whitespace-empty			((t (:foreground ,ample/gray :background "gray70"))))
   `(whitespace-hspace			((t (:foreground ,ample/gray :background "grey71"))))
   `(whitespace-indentation		((t (:foreground ,ample/gray :background "gray72"))))
   `(whitespace-line			((t (:foreground ,ample/purple :background unspecified))))
   `(whitespace-newline			((t (:foreground ,ample/gray :background unspecified))))
   `(whitespace-space			((t (:foreground ,ample/gray :background unspecified))))
   `(whitespace-space-after-tab		((t (:foreground ,ample/gray :background "gray73"))))
   `(whitespace-space-before-tab	((t (:foreground ,ample/gray :background "gray74"))))
   `(whitespace-tab			((t (:foreground ,ample/gray :background "grey75"))))
   `(whitespace-trailing		((t (:foreground ,ample/rb3 :background ,ample/bg :bold t))))

   ;;magit
   `(magit-branch				((t (:foreground ,ample/orange :background unspecified))))
   ;;`(magit-cherry-equivalent			((t (:foreground "cyan" :background unspecified))))
   ;;`(magit-cherry-unmatched			((t (:foreground "magenta" :background unspecified))))
   `(magit-diff-add				((t (:foreground unspecified :background ,ample/light-green-bg))))
   `(magit-diff-del				((t (:foreground unspecified :background ,ample/light-red-bg))))
   `(magit-diff-file-header			((t (:foreground ,ample/fg :background ,ample/region :bold t))))
   `(magit-diff-hunk-header			((t (:foreground ,ample/fg :background ,ample/light-blue-bg))))
   `(magit-diff-merge-current			((t (:foreground ,ample/orange :background unspecified))))
   `(magit-diff-merge-diff3-separator		((t (:foreground ,ample/orange :background unspecified))))
   `(magit-diff-merge-proposed			((t (:foreground ,ample/orange :background unspecified))))
   `(magit-diff-merge-separator			((t (:foreground ,ample/orange :background unspecified))))
   `(magit-diff-none				((t (:foreground ,ample/fg :background unspecified))))
   `(magit-header				((t (:foreground ,ample/blue :background unspecified))))
   `(magit-item-highlight			((t (:foreground unspecified :background ,ample/region-dark))))
   ;;`(magit-item-mark				((t (:foreground unspecified :background "darkolivegreen"))))
   ;;`(magit-key-mode-args-face			((t (:foreground "black" :background "yellow3"))))
   `(magit-key-mode-button-face			((t (:foreground ,ample/light-blue :background unspecified))))
   `(magit-key-mode-header-face			((t (:foreground ,ample/blue :background unspecified))))
   ;;`(magit-key-mode-switch-face		((t (:foreground "red" :background unspecified :bold t))))
   `(magit-log-author				((t (:foreground ,ample/red :background unspecified))))
   `(magit-log-author-date-cutoff		((t (:foreground ,ample/red :background unspecified :bold t))))
   `(magit-log-date				((t (:foreground unspecified :background unspecified))))
   `(magit-log-graph				((t (:foreground "grey80" :background unspecified))))
   ;;`(magit-log-head-label-bisect-bad		((t (:foreground "IndianRed4" :background "IndianRed1"))))
   ;;`(magit-log-head-label-bisect-good		((t (:foreground "dark olive green" :background "light green"))))
   ;;`(magit-log-head-label-default		((t (:foreground unspecified :background "Grey50"))))
   ;;`(magit-log-head-label-head		((t (:foreground "White" :background "Grey20"))))
   ;;`(magit-log-head-label-local		((t (:foreground "LightSkyBlue1" :background "Grey13"))))
   ;;`(magit-log-head-label-patches		((t (:foreground "IndianRed4" :background "IndianRed1"))))
   ;;`(magit-log-head-label-remote		((t (:foreground "DarkSeaGreen2" :background "Grey11"))))
   ;;`(magit-log-head-label-tags		((t (:foreground "goldenrod4" :background "LemonChiffon1"))))
   ;;`(magit-log-message			((t (:foreground unspecified :background unspecified))))
   ;;`(magit-log-reflog-label-amend		((t (:foreground "goldenrod4" :background "LemonChiffon1"))))
   ;;`(magit-log-reflog-label-checkout		((t (:foreground "LightSkyBlue1" :background "Grey13"))))
   ;;`(magit-log-reflog-label-cherry-pick	((t (:foreground "dark olive green" :background "light green"))))
   ;;`(magit-log-reflog-label-commit		((t (:foreground "goldenrod4" :background "LemonChiffon1"))))
   ;;`(magit-log-reflog-label-merge		((t (:foreground "goldenrod4" :background "LemonChiffon1"))))
   ;;`(magit-log-reflog-label-other		((t (:foreground unspecified :background "Grey50"))))
   ;;`(magit-log-reflog-label-rebase		((t (:foreground "DarkSeaGreen2" :background "Grey11"))))
   ;;`(magit-log-reflog-label-remote		((t (:foreground unspecified :background "Grey50"))))
   ;;`(magit-log-reflog-label-reset		((t (:foreground "IndianRed4" :background "IndianRed1"))))
   `(magit-log-sha1				((t (:foreground ,ample/purple :background unspecified))))
   `(magit-section-title			((t (:foreground ,ample/blue :background unspecified))))
   `(magit-tag					((t (:foreground ,ample/blue :background unspecified))))
   ;;`(magit-valid-signature			((t (:foreground "PaleTurquoise" :background unspecified :bold t))))
   `(magit-whitespace-warning-face		((t (:foreground ,ample/bg :background ,ample/purple :bold t))))

   `(git-gutter:deleted   ((t (:foreground ,ample/red :background unspecified :bold t))))
   `(git-gutter:modified  ((t (:foreground ,ample/purple :background unspecified :bold t))))
   `(git-gutter:separator ((t (:foreground ,ample/orange :background unspecified :bold t))))
   `(git-gutter:unchanged ((t (:foreground ,ample/dark-tan :background unspecified))))

   `(highlight-indentation-current-column-face ((t (:foreground unspecified :background ,ample/region-light))))
   `(highlight-indentation-face                ((t (:foreground unspecified :background ,ample/region-dark))))

   ;; trailing whitespace
   `(trailing-whitespace ((t (:background "white" :bold t))))

   ;; auctex
   `(font-latex-bold-face                 ((t (:inherit bold :foreground ,ample/gray))))
   `(font-latex-doctex-documentation-face ((t (:background unspecified))))
   `(font-latex-doctex-preprocessor-face  ((t (:inherit (font-latex-doctex-documentation-face font-lock-builtin-face font-lock-preprocessor-face)))))
   `(font-latex-italic-face               ((t (:inherit italic :foreground ,ample/gray))))
   `(font-latex-math-face                 ((t (:foreground ,ample/purple))))
   `(font-latex-sectioning-0-face         ((t (:inherit font-latex-sectioning-1-face :height 1.1))))
   `(font-latex-sectioning-1-face         ((t (:inherit font-latex-sectioning-2-face :height 1.1))))
   `(font-latex-sectioning-2-face         ((t (:inherit font-latex-sectioning-3-face :height 1.1))))
   `(font-latex-sectioning-3-face         ((t (:inherit font-latex-sectioning-4-face :height 1.1))))
   `(font-latex-sectioning-4-face         ((t (:inherit font-latex-sectioning-5-face :height 1.1))))
   `(font-latex-sectioning-5-face         ((t (:foreground ,ample/red :weight bold))))
   `(font-latex-sedate-face               ((t (:foreground ,ample/gray))))
   `(font-latex-slide-title-face          ((t (:inherit font-lock-type-face :weight bold :height 1.2))))
   `(font-latex-string-face               ((t (:inherit font-lock-string-face))))
   `(font-latex-subscript-face            ((t (:height 0.8))))
   `(font-latex-superscript-face          ((t (:height 0.8))))
   `(font-latex-warning-face              ((t (:inherit font-lock-warning-face))))

   ;; guide-key
   `(guide-key/prefix-command-face    ((t (:foreground ,ample/green))))
   `(guide-key/highlight-command-face ((t (:foreground ,ample/blue))))
   `(guide-key/key-face               ((t (:foreground ,ample/gray))))

   ;; custom
   `(custom-button                  ((t (:foreground unspecified :background unspecified))))
   `(custom-button-mouse            ((t (:foreground unspecified :background unspecified))))
   `(custom-button-pressed          ((t (:foreground unspecified :background unspecified))))
   `(custom-button-pressed-unraised ((t (:foreground ,ample/purple :background unspecified))))
   `(custom-button-unraised         ((t (:foreground unspecified :background unspecified))))
   `(custom-changed                 ((t (:foreground ,ample/red :background unspecified))))
   `(custom-comment                 ((t (:foreground ,ample/bg :background ,ample/yellow))))
   `(custom-comment-tag             ((t (:foreground ,ample/fg :background unspecified))))
   `(custom-documentation           ((t (:foreground unspecified :background unspecified))))
   `(custom-face-tag                ((t (:foreground ,ample/light-blue :background unspecified))))
   `(custom-group-subtitle          ((t (:foreground unspecified :background unspecified :bold t))))
   `(custom-group-tag               ((t (:foreground ,ample/light-blue :background unspecified :bold t))))
   `(custom-group-tag-1             ((t (:foreground ,ample/yellow :background unspecified :bold t))))
   `(custom-invalid                 ((t (:foreground ,ample/bg :background ,ample/red))))
   `(custom-link                    ((t (:inherit button))))
   `(custom-modified                ((t (:foreground ,ample/red :background unspecified))))
   `(custom-rogue                   ((t (:foreground ,ample/yellow :background ,ample/bg))))
   `(custom-saved                   ((t (:foreground unspecified :background unspecified :underline t))))
   `(custom-set                     ((t (:foreground ,ample/fg :background ,ample/dark-gray))))
   `(custom-state                   ((t (:foreground ,ample/green :background unspecified))))
   `(custom-themed                  ((t (:foreground ,ample/red :background unspecified))))
   `(custom-variable-button         ((t (:foreground unspecified :background unspecified :underline t :bold t))))
   `(custom-variable-tag            ((t (:foreground ,ample/light-blue :background unspecified :bold t))))
   `(custom-visibility              ((t (:inherit button))))

   `(neo-banner-face              ((t (:foreground ,ample/light-blue :background unspecified :bold t))))
   `(neo-button-face              ((t (:foreground unspecified :background unspecified))))
   `(neo-dir-link-face            ((t (:foreground ,ample/blue :background unspecified))))
   `(neo-expand-btn-face          ((t (:foreground ,ample/fg :background unspecified))))
   `(neo-file-link-face           ((t (:foreground ,ample/fg :background unspecified))))
   `(neo-header-face              ((t (:foreground ,ample/fg :background unspecified))))
   `(neo-root-dir-face            ((t (:foreground ,ample/green :background unspecified :bold t))))
   `(neo-vc-added-face            ((t (:foreground ,ample/green :background unspecified))))
   `(neo-vc-conflict-face         ((t (:foreground ,ample/orange :background unspecified))))
   `(neo-vc-default-face          ((t (:foreground ,ample/fg :background unspecified))))
   `(neo-vc-edited-face           ((t (:foreground ,ample/yellow :background unspecified))))
   `(neo-vc-ignored-face          ((t (:foreground ,ample/dark-gray :background unspecified))))
   `(neo-vc-missing-face          ((t (:foreground ,ample/red :background unspecified))))
   `(neo-vc-needs-merge-face      ((t (:foreground ,ample/orange :background unspecified))))
   `(neo-vc-needs-update-face     ((t (:foreground unspecified :background unspecified :underline t))))
   `(neo-vc-removed-face          ((t (:foreground ,ample/purple :background unspecified))))
   `(neo-vc-unlocked-changes-face ((t (:foreground ,ample/red :background "Blue"))))
   `(neo-vc-unregistered-face     ((t (:foreground unspecified :background unspecified))))
   `(neo-vc-up-to-date-face       ((t (:foreground ,ample/fg :background unspecified))))

   ;; realgud
   `(realgud-overlay-arrow1         ((t (:foreground ,ample/green))))
   `(realgud-overlay-arrow2         ((t (:foreground ,ample/bright-yellow))))
   `(realgud-overlay-arrow3         ((t (:foreground ,ample/orange))))
   `(realgud-bp-enabled-face        ((t (:inherit error))))
   `(realgud-bp-disabled-face       ((t (:foreground ,ample/dark-gray))))
   `(realgud-bp-line-enabled-face   ((t (:box (:color ,ample/red)))))
   `(realgud-bp-line-disabled-face  ((t (:box (:color "grey50")))))
   `(realgud-line-number            ((t (:foreground ,ample/yellow))))
   `(realgud-backtrace-number       ((t (:foreground ,ample/yellow, :weight bold))))

  `(lsp-headerline-breadcrumb-deprecated-face              ((t  (:foreground  ,ample/bg           :background  unspecified))))
  `(lsp-headerline-breadcrumb-path-error-face              ((t  (:foreground  ,ample/bg           :background  unspecified  :underline  ,ample/red))))
  `(lsp-headerline-breadcrumb-path-face                    ((t  (:foreground  ,ample/bg           :background  unspecified))))
  `(lsp-headerline-breadcrumb-path-hint-face               ((t  (:foreground  ,ample/bg           :background  unspecified  :underline  ,ample/bg))))
  `(lsp-headerline-breadcrumb-path-info-face               ((t  (:foreground  ,ample/bg           :background  unspecified  :underline  ,ample/blue))))
  `(lsp-headerline-breadcrumb-path-warning-face            ((t  (:foreground  ,ample/bg           :background  unspecified  :underline  ,ample/dark-tan))))
  `(lsp-headerline-breadcrumb-project-prefix-face          ((t  (:foreground  ,ample/bg           :background  unspecified  :bold       t))))
  `(lsp-headerline-breadcrumb-separator-face               ((t  (:foreground  ,ample/region-dark  :background  unspecified))))
  `(lsp-headerline-breadcrumb-symbols-error-face           ((t  (:foreground  ,ample/bg           :background  unspecified  :underline  ,ample/red))))
  `(lsp-headerline-breadcrumb-symbols-face                 ((t  (:foreground  ,ample/bg           :background  unspecified  :bold       t))))
  `(lsp-headerline-breadcrumb-symbols-hint-face            ((t  (:foreground  ,ample/bg           :background  unspecified  :underline  ,ample/bg))))
  `(lsp-headerline-breadcrumb-symbols-info-face            ((t  (:foreground  ,ample/bg           :background  unspecified  :underline  ,ample/blue))))
  `(lsp-headerline-breadcrumb-symbols-warning-face         ((t  (:foreground  ,ample/bg           :background  unspecified  :underline  ,ample/dark-tan))))
  `(lsp-headerline-breadcrumb-unknown-project-prefix-face  ((t  (:foreground  ,ample/bg           :background  unspecified  :bold       t))))

  `(lsp-face-highlight-read     ((t  (:foreground  unspecified  :background  ,ample/region  :underline  t))))
  `(lsp-face-highlight-textual  ((t  (:foreground  unspecified  :background  ,ample/region))))
  `(lsp-face-highlight-write    ((t  (:foreground  unspecified  :background  ,ample/region  :bold       t))))

   ;; widget
   `(widget-field  ((t (:foreground ,ample/fg :background ,ample/region-dark))))

   ) ;; end of custom-theme-set-faces

  (custom-theme-set-variables
   'ample-light
   `(ansi-color-names-vector
     [,ample/darker-gray ,ample/red ,ample/green ,ample/dark-tan ,ample/blue ,ample/purple ,ample/lighter-blue ,ample/fg])))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

;;;###autoload
(defun ample-light-theme()
  "Apply the ample-light-theme."
  (interactive)
  (load-theme 'ample-light t))


(provide-theme 'ample-light)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ample-light-theme.el ends here
