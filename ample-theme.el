;;; ample-theme.el --- Calm Dark Theme for Emacs
;;
;; Filename: ample-theme.el
;; Description: Calm Dark Theme for Emacs
;; Author: Jordon Biondo <biondoj@mail.gvsu.edu>
;; Created: Wed Jul 24 01:04:58 2013 (-0400)
;; Version: 0.12
;; Last-Updated: Tue Aug  6 11:20:26 2013 (-0400)
;;           By: Jordon Biondo
;;     Update #: 3
;; URL: https://github.com/jordonbiondo/ample-theme
;; Doc URL:
;; Keywords: theme, dark
;; Package-Requires: ((color-theme "6.5.5"))
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
;;; Change Log:
;;
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


(require 'color-theme)


(defun ample-theme ()
  "Apply the ample theme."
  (interactive)
  (color-theme-install
   '(ample-theme
     ;;((background-color . "#14171a")
     ((background-color . "gray13")
      (background-mode . light)
      (border-color . "#1f1f1f")
      (cursor-color . "#f57e00")
      (foreground-color . "#bdbdb3")
      (mouse-color . "black"))
     (fringe ((t (:background "#1f1f1f"))))

     (mode-line-inactive ((t (:foreground "#191919" :background "cornsilk4"))))
     (mode-line ((t (:foreground "#191919" :background "cornsilk3"))))

     (region ((t (:background "#303030"))))

     (font-lock-builtin-face ((t (:foreground "#528fd1"))))
     ;;(font-lock-comment-face ((t (:foreground "#454545"))))
     (font-lock-comment-face ((t (:foreground "#757575"))))
     ;;(font-lock-comment-face ((t (:foreground "gray60"))))
     (font-lock-function-name-face ((t (:foreground "#6aaf50"))))
     (font-lock-keyword-face ((t (:foreground "#5180b3"))))
     (font-lock-string-face ((t (:foreground "#bdbc61"))))
     (font-lock-preprocessor-face ((t (:foreground "#FF8512"))))
     (font-lock-type-face ((t (:foreground"#cd5542"))))
     (font-lock-constant-face ((t (:foreground "#9b55c3"))))
     (font-lock-warning-face ((t (:foreground "red" :bold t))))

     (mode-line ((t (:background "#454545"))))
     ;;(hl-line ((t (:background "gray15"))))
     (hl-line ((t (:background "#1f1f1f"))))
     (mode-line-inactive ((t (:background "cornsilk4"))))
     (font-lock-variable-name-face ((t (:foreground "#baba36"))))
     (minibuffer-prompt ((t (:foreground "#fffe0a" :bold t))))

     ;; eshell
     (eshell-ls-directory((t (:foreground "#5180b3"))))
     (eshell-ls-product ((t (:foreground "#9b55c3"))))
     (eshell-ls-backup ((t (:foreground "#454545"))))
     (eshell-ls-executable ((t (:foreground "#6aaf50"))))

     ;; shell
     (comint-highlight-prompt ((t (:foreground "#6aaf50"))))

     ;; erc
     (erc-nick-default-face ((t (:foreground "#5180b3"))))
     (erc-notice-face ((t (:foreground "#6aaf50"))))
     (erc-input-face ((t (:foreground "white"))))
     (erc-timestamp-face ((t (:foreground "#454545"))))
     (erc-prompt-face ((t (:foreground "#191919" :background "#9b55c3"))))

     ;; Magit
     (magit-branch ((t (:foreground "#FF8512"))))
     (magit-header ((t (:foreground "#5180b3"))))
     (magit-section-title ((t (:foreground "#5180b3"))))
     (magit-log-sha1 ((t (:foreground "#9b55c3"))))
     (magit-item-highlight ((t (:foreground nil :background "#162433"))))


     ;; error
     (error ((t (:foreground "red"))))

     ;; ido
     (ido-only-match ((t (:foreground "#6aaf50"))))
     (ido-first-match ((t (:foreground "#5180b3"))))
     (ido-incomplete-regexp ((t (:foreground "#cd5542"))))
     (ido-subdir ((t (:foreground "#baba36"))))

     ;; trailing whitespace
     (trailing-whitespace ((t (:background "white" :bold t)))))))


;;---------------------------------------------------------------------------
;; Add to color theme list
;;---------------------------------------------------------------------------
(add-to-list 'color-themes '(ample-theme "Ample" "Jordon Biondo <biondoj@mail.gvsu.edu>"))


(provide 'ample-theme)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ample-theme.el ends here
