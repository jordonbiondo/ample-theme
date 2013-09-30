;;; ample-theme.el --- Calm Dark Theme for Emacs
;;
;; Filename: ample-theme.el
;; Description: Calm Dark Theme for Emacs
;; Author: Jordon Biondo <biondoj@mail.gvsu.edu>
;; Created: Wed Jul 24 01:04:58 2013 (-0400)
;; Version: 0.2.4
;; Last-Updated: Sun Sep 29 17:01:14 2013 (-0400)
;;           By: Jordon Biondo
;;     Update #: 12
;; URL: https://github.com/jordonbiondo/ample-theme
;; Keywords: theme, dark
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Commentary:
;;
;;  The ample theme is a calm dark theme.
;;
;;  Currently only full colored GUI support is provided, terminal support is not implemented
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
      (ample/blue "#5180b3")
      (ample/light-blue "#528fd1")
      (ample/orange "#FF8512")
      (ample/tan "#bdbc61")
      (ample/dark-tan "#7d7c61")
      (ample/yellow "#baba36")
      (ample/bright-yellow "#fffe0a")
      (ample/purple "#9b55c3")
      (ample/gray "#757575")
      (ample/red "#cd5542")
      
      (ample/cursor "#f57e00")
      (ample/fringe "#1f1f1f")
      (ample/region "#303030")
      
      (ample/bg "gray13")
      (ample/fg "#bdbdb3"))
  
  
  
  ;; Set faces
  (custom-theme-set-faces
   `ample ;; you must use the same theme name here...
   `(default ((t (:foreground ,ample/fg, :background ,ample/bg))))
   `(cursor  ((t (:background ,ample/cursor))))
   `(fringe  ((t (:background ,ample/fringe))))
   `(region  ((t (:background ,ample/region))))
   
   `(font-lock-builtin-face ((t (:foreground ,ample/light-blue))))
   `(font-lock-comment-face ((t (:foreground ,ample/gray))))
   `(font-lock-function-name-face ((t (:foreground ,ample/green))))
   `(font-lock-keyword-face ((t (:foreground ,ample/blue))))
   `(font-lock-string-face ((t (:foreground ,ample/tan))))
   `(font-lock-preprocessor-face ((t (:foreground ,ample/orange))))
   `(font-lock-type-face ((t (:foreground ,ample/red))))
   `(font-lock-constant-face ((t (:foreground ,ample/purple))))
   `(font-lock-warning-face ((t (:foreground "red" :bold t))))
   `(font-lock-variable-name-face ((t (:foreground ,ample/yellow))))
   `(font-lock-doc-face ((t (:foreground ,ample/dark-tan))))
   
   `(mode-line-inactive ((t (:background "#454545" :foreground "cornsilk4"))))
   `(mode-line ((t (:background "cornsilk4" :foreground "#454545"))))
   
   `(linum ((t (:background nil :foreground ,ample/gray))))

   `(vertical-border ((t (:background "#454545" :foreground "#454545"))))

   `(hl-line ((t (:background "#1f1f1f"))))
   
   `(powerline-inactive1 ((t (:foreground "gray50"))))
   `(powerline-active1 ((t (:foreground "gray50"))))
   
   `(minibuffer-prompt ((t (:foreground ,ample/bright-yellow :bold t))))
   
   ;; eshell
   `(eshell-ls-directory((t (:foreground ,ample/blue))))
   `(eshell-ls-product ((t (:foreground ,ample/purple))))
   `(eshell-ls-backup ((t (:foreground "#454545"))))
   `(eshell-ls-executable ((t (:foreground ,ample/green))))
   
   ;; shell
   `(comint-highlight-prompt ((t (:foreground ,ample/green))))
   
   ;; erc
   `(erc-nick-default-face ((t (:foreground ,ample/blue))))
   `(erc-notice-face ((t (:foreground ,ample/green))))
   `(erc-input-face ((t (:foreground "white"))))
   `(erc-timestamp-face ((t (:foreground "#454545"))))
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

   ;; man pages
   `(Man-overstrike ((t (:foreground ,ample/blue))))
   `(Man-underline ((t (:foreground ,ample/yellow))))
   ;; trailing whitespace
   `(trailing-whitespace ((t (:background "white" :bold t))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))


(defun ample-theme() 
  "Apply the ample-theme."
  (interactive)
  (load-theme 'ample t))


(provide-theme 'ample)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ample-theme.el ends here
