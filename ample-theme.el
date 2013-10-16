;;; ample-theme.el --- Calm Dark Theme for Emacs
;;
;; Filename: ample-theme.el
;; Description: Calm Dark Theme for Emacs
;; Author: Jordon Biondo <biondoj@mail.gvsu.edu>
;; Created: Wed Jul 24 01:04:58 2013 (-0400)
;; Version: 0.2.7
;; Last-Updated: Mon Oct 14 15:51:15 2013 (-0400)
;;           By: Jordon Biondo
;;     Update #: 17
;; URL: https://github.com/jordonbiondo/ample-theme
;; Keywords: theme, dark
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Commentary:
;;
;;  The ample theme is a calm dark theme.
;;
;;  Full colored term/gui support only, 256 and down support coming eventually.
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
(deftheme ample "A smooth dark theme.")

;; Not a bad idea to define a palette...
(let ((ample/green "#6aaf50")
      (ample/dark-green "#057f10")
      (ample/blue "#5180b3")
      (ample/light-blue "#528fd1")
      (ample/orange "#FF8512")
      (ample/tan "#bdbc61")
      (ample/dark-tan "#7d7c61")
      (ample/yellow "#baba36")
      (ample/bright-yellow "#fffe0a")
      (ample/purple "#9b55c3")
      (ample/gray "#757575")
      (ample/dark-gray "#656565")
      (ample/darker-gray "#454545")
      (ample/darkest-gray "#252525")
      (ample/red "#cd5542")
      (ample/dark-red "#9d2512")

      (ample/cursor "#f57e00")
      (ample/fringe "#1f1f1f")
      (ample/region "#303030")

      (ample/rb0 "#81b0e3")
      (ample/rb1 "#a5a5a5")
      (ample/rb2 "#6190c3")
      (ample/rb3 "#959595")
      (ample/rb4 "#4170a3")
      (ample/rb5 "#757575")



      (ample/bg "gray13")
      (ample/fg "#bdbdb3"))



  ;; Set faces
  (custom-theme-set-faces
   `ample ;; you must use the same theme name here...
   `(default ((t (:foreground ,ample/fg :background ,ample/bg))))
   `(cursor  ((t (:background ,ample/cursor))))
   `(fringe  ((t (:background ,ample/fringe))))
   `(region  ((t (:background ,ample/region))))

   ;; standard font lock
   `(font-lock-builtin-face ((t (:foreground ,ample/light-blue))))
   `(font-lock-comment-face ((t (:foreground ,ample/gray))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,ample/dark-gray))))
   `(font-lock-function-name-face ((t (:foreground ,ample/green))))
   `(font-lock-keyword-face ((t (:foreground ,ample/blue))))
   `(font-lock-string-face ((t (:foreground ,ample/tan))))
   `(font-lock-preprocessor-face ((t (:foreground ,ample/orange))))
   `(font-lock-type-face ((t (:foreground ,ample/red))))
   `(font-lock-constant-face ((t (:foreground ,ample/purple))))
   `(font-lock-warning-face ((t (:foreground "red" :bold t))))
   `(font-lock-variable-name-face ((t (:foreground ,ample/yellow))))
   `(font-lock-doc-face ((t (:foreground ,ample/dark-tan))))

   ;; mode line & powerline
   `(powerline-active1 ((t (:foreground ,ample/darkest-gray))))
   `(mode-line-inactive ((t (:background ,ample/darker-gray :foreground "cornsilk4"))))
   `(mode-line ((t (:background "cornsilk4" :foreground ,ample/darkest-gray))))

   `(linum ((t (:background nil :foreground ,ample/gray))))

   `(header-line ((t (:background ,ample/fg :foreground ,ample/bg))))

   ;; search
   `(isearch ((t (:background ,ample/blue :foreground ,ample/bg))))
   `(lazy-highlight ((t (:background ,ample/bg :foreground ,ample/purple :underline t))))

   ;; ace-jump
   `(ace-jump-face-background ((t (:inherit font-lock-comment-face))))
   `(ace-jump-face-foreground ((t (:foreground ,ample/orange))))

   `(vertical-border ((t (:background ,ample/darker-gray :foreground ,ample/darkest-gray))))

   `(hl-line ((t (:background "#1f1f1f"))))
   
   `(highlight-indentation-face ((t (:background ,ample/darkest-gray))))

   ;; mini buff
   `(minibuffer-prompt ((t (:foreground ,ample/bright-yellow :bold t))))

   `(compilation-error ((t (:foreground ,ample/red :bold t))))
   `(compilation-warning ((t (:foreground ,ample/orange :bold t))))
   `(compilation-info ((t (:foreground ,ample/green :bold t))))

   ;; eshell
   `(eshell-prompt ((t (:foreground ,ample/purple))))
   `(eshell-ls-directory ((t (:foreground ,ample/blue))))
   `(eshell-ls-product ((t (:foreground ,ample/orange))))
   `(eshell-ls-backup ((t (:foreground ,ample/darker-gray))))
   `(eshell-ls-executable ((t (:foreground ,ample/green))))

   ;; shell
   `(comint-highlight-prompt ((t (:foreground ,ample/green))))

   ;; erc
   `(erc-nick-default-face ((t (:foreground ,ample/blue))))
   `(erc-my-nick-face ((t (:foreground ,ample/yellow))))
   `(erc-current-nick-face ((t (:foreground ,ample/light-blue))))
   `(erc-notice-face ((t (:foreground ,ample/green))))
   `(erc-input-face ((t (:foreground "white"))))
   `(erc-timestamp-face ((t (:foreground ,ample/darker-gray))))
   `(erc-prompt-face ((t (:foreground "#191919" :background ,ample/purple))))

   ;; Magit
   `(magit-branch ((t (:foreground ,ample/orange))))
   `(magit-header ((t (:foreground ,ample/blue))))
   `(magit-section-title ((t (:foreground ,ample/blue))))
   `(magit-log-sha1 ((t (:foreground ,ample/purple))))
   `(magit-item-highlight ((t (:foreground nil :background "#162433"))))


   ;; error
   `(error ((t (:foreground "red"))))

   ;; ido
   `(ido-only-match ((t (:foreground ,ample/green))))
   `(ido-first-match ((t (:foreground ,ample/blue))))
   `(ido-incomplete-regexp ((t (:foreground ,ample/red))))
   `(ido-subdir ((t (:foreground ,ample/yellow))))


   ;; helm
   `(helm-M-x-key (( t (:foreground ,ample/orange :underline nil))))
   ;;`(helm-action (( t ())))
   ;;`(helm-bookmark-addressbook (( t ())))
   ;;`(helm-bookmark-directory (( t ())))
   ;;`(helm-bookmark-file (( t ())))
   ;;`(helm-bookmark-gnus (( t ())))
   ;;`(helm-bookmark-info (( t ())))
   ;;`(helm-bookmark-man (( t ())))
   ;;`(helm-bookmark-w3m (( t ())))
   ;;`(helm-buffer-not-saved (( t ())))
   ;;`(helm-buffer-process (( t ())))
   ;;`(helm-buffer-saved-out (( t ())))
   ;;`(helm-buffer-size (( t ())))
   `(helm-candidate-number (( t (:foreground ,ample/green :background ,ample/darker-gray))))
   `(helm-ff-directory (( t (:foreground ,ample/blue))))
   `(helm-ff-executable (( t (:foreground ,ample/green))))
   `(helm-ff-file (( t (:inherit default))))
   ;;`(helm-ff-invalid-symlink (( t ())))
   `(helm-ff-prefix (( t (:foreground ,ample/red))))
   ;;`(helm-ff-symlink (( t ())))
   ;;`(helm-grep-cmd-line (( t ())))
   ;;`(helm-grep-file (( t ())))
   ;;`(helm-grep-finish (( t ())))
   ;;`(helm-grep-lineno (( t ())))
   ;;`(helm-grep-match (( t ())))
   ;;`(helm-grep-running (( t ())))
   `(helm-header (( t (:foreground ,ample/bg :background ,ample/fg))))
   ;;`(helm-helper (( t ())))
   ;;`(helm-history-deleted (( t ())))
   ;;`(helm-history-remote (( t ())))
   ;;`(helm-lisp-completion-info (( t ())))
   ;;`(helm-lisp-show-completion (( t ())))
   `(helm-match (( t (:foreground ,ample/blue :background ,ample/darkest-gray))))
   ;;`(helm-moccur-buffer (( t ())))
   `(helm-selection (( t (:foreground ,ample/yellow :background nil :bold t))))
   ;;`(helm-selection-line (( t ())))
   ;;`(helm-separator (( t ())))
   `(helm-source-header (( t (:foreground ,ample/darkest-gray :background ,ample/orange))))
   ;;`(helm-visible-mark (( t ())))

   ;; rainbow delim
   ;;(((((+ (- (* (/ ( or nil 4)  4) 9) 2) 10)))))
   `(rainbow-delimiters-depth-1-face ((t (:foreground ,ample/rb0 :background nil))))
   `(rainbow-delimiters-depth-2-face ((t (:foreground ,ample/rb1 :background nil))))
   `(rainbow-delimiters-depth-3-face ((t (:foreground ,ample/rb2 :background nil))))
   `(rainbow-delimiters-depth-4-face ((t (:foreground ,ample/rb3 :background nil))))
   `(rainbow-delimiters-depth-5-face ((t (:foreground ,ample/rb4 :background nil))))
   `(rainbow-delimiters-depth-6-face ((t (:foreground ,ample/rb5 :background nil))))
   `(rainbow-delimiters-depth-7-face ((t (:foreground ,ample/rb0 :background nil))))
   `(rainbow-delimiters-depth-8-face ((t (:foreground ,ample/rb1 :background nil))))
   `(rainbow-delimiters-depth-9-face ((t (:foreground ,ample/rb2 :background nil))))

   ;; auto complete
   `(ac-candidate-face((t (:foreground "black" :background ,ample/fg))))
   `(ac-selection-face((t (:foreground ,ample/fg :background ,ample/blue))))
   `(ac-candidate-mouse-face((t (:inherit ac-selection-face))))
   `(ac-clang-candidate-face((t (:inherit ac-candidate-face))))
   `(ac-clang-selection-face((t (:inherit ac-selection-face))))
   `(ac-completion-face((t (:inherit font-lock-comment-face :underline t))))
   `(ac-gtags-candidate-face((t (:inherit ac-candidate-face))))
   `(ac-gtags-selection-face((t (:inherit ac-selection-face))))
   `(ac-slime-menu-face((t (:inherit ac-candidate-face))))
   `(ac-slime-selection-face((t (:inherit ac-selection-face))))
   `(ac-yasnippet-candidate-face((t (:inherit ac-candidate-face))))
   `(ac-yasnippet-selection-face((t (:inherit ac-selection-face))))

   ;; ediff
   `(ediff-current-diff-A((t (:foreground "white" :background ,ample/dark-red))))
   `(ediff-current-diff-B((t (:foreground "white" :background ,ample/dark-green))))
   `(ediff-current-diff-C((t (:foreground "black" :background ,ample/yellow))))
   ;;`(ediff-current-diff-Ancestor((t ())))
   
   `(ediff-even-diff-A((t (:foreground ,ample/bg :background ,ample/fg))))
   `(ediff-even-diff-B((t (:foreground ,ample/bg :background ,ample/fg))))
   `(ediff-even-diff-C((t (:foreground ,ample/bg :background ,ample/fg))))
   ;;`(ediff-even-diff-Ancestor((t ())))
   
   `(ediff-fine-diff-A((t (:foreground "white" :background ,ample/red))))
   `(ediff-fine-diff-B((t (:foreground "white" :background ,ample/green))))
   `(ediff-fine-diff-C((t (:foreground "black" :background ,ample/bright-yellow))))
   ;;`(ediff-fine-diff-Ancestor((t ())))
   
   `(ediff-odd-diff-A((t (:foreground ,ample/bg :background ,ample/gray))))
   `(ediff-odd-diff-B((t (:foreground ,ample/bg :background ,ample/gray))))
   `(ediff-odd-diff-C((t (:foreground ,ample/bg :background ,ample/gray))))
   ;;`(ediff-odd-diff-Ancestor((t ())))
   
   ;; man pages
   `(Man-overstrike ((t (:foreground ,ample/blue))))
   `(Man-underline ((t (:foreground ,ample/yellow))))
   
   ;; trailing whitespace
   `(trailing-whitespace ((t (:background "white" :bold t))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

;;;###autoload
(defun ample-theme()
  "Apply the ample-theme."
  (interactive)
  (load-theme 'ample t))


(provide-theme 'ample)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ample-theme.el ends here
