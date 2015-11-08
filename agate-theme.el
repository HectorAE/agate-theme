;;; agate-theme.el --- Medium gray theme with prismatic flavoring

;; Copyright (C) 2015 Hector Escobedo

;; Author: Hector Escobedo <ninjahector.escobedo@gmail.com>
;; Keywords: faces

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

;; A mineral-inspired color theme. Uses a medium gray background and light text
;; optimized for quickly distinguishing syntax while remaining readable.

;;; Code:

(deftheme agate
  "Medium gray theme with prismatic flavoring")

(let* ((background "#6C6C6C")	; Main background color
       (medium-background "#525252") ; Slightly darker background color
       (dark-background "#3D3D3D") ; Darker background color
       (ghost-gray "#404040")	; Dark gray
       (silvery "#C5C5C5")	; Light gray
       (off-white "#F2F2F2")	; Very light gray
       (foreground off-white) 	; Main text color
       (light-cerulean "#00A9E6")
       (blue-gray "#A8BEFF")
       (light-wintergreen "#18FF88")
       (space-blue "#1991FF")
       (greenish-turquoise "#06B4C0")
       (lighter-aquamarine "#14DEA8")
       (light-yellowish-tan "#F7F78F")
       (rocky-peach "#FFAA80")
       (true-orange "#FFBD00")
       (dirt-brown "#C29223")
       (frost-cyan "#96F0FA")
       (pale-gold "#FFDE3B")
       (highlighting "#909090")	; Main highlighting color, for region, etc.
       (less-highlighting "#7E7E7E") ; Secondary highlighting color, darker
       (comments "#B8B8B8")
       (light-comments "#D4D4D4") ; When regular comments are too dark
       (strings blue-gray)
       (errors "#FF0038")
       (warnings true-orange))

  (custom-theme-set-faces
   'agate

   ;; Basic Emacs built-in faces
   `(cursor ((t (:background "white"))))
   `(default ((t (:foreground ,foreground :background ,background))))
   `(error ((t (:foreground ,errors :weight bold))))
   `(fringe ((t (:foreground ,foreground :background ,dark-background))))
   `(highlight ((t (:background ,highlighting))))
   `(link ((t (:foreground ,frost-cyan :underline t))))
   `(linum ((t (:foreground ,ghost-gray))))
   `(minibuffer-prompt ((t (:foreground "yellow"))))
   `(mode-line ((t (:foreground ,foreground :background ,dark-background))))
   `(mode-line-buffer-id ((t (:foreground ,pale-gold))))
   `(mode-line-inactive ((t (:inherit mode-line :background ,medium-background))))
   `(region ((t (:inherit highlight :distant-foreground ,light-comments))))
   `(shadow ((t (:foreground ,silvery))))
   `(warning ((t (:foreground ,warnings :weight bold))))

   ;; Font Lock mode (syntax highlighting)
   `(font-lock-builtin-face ((t (:foreground ,rocky-peach))))
   `(font-lock-comment-face ((t (:foreground ,comments))))
   `(font-lock-comment-delimiter-face ((t (:inherit font-lock-comment-face))))
   `(font-lock-constant-face ((t (:inherit font-lock-variable-name-face :foreground ,lighter-aquamarine))))
   `(font-lock-doc-face ((t (:foreground ,greenish-turquoise))))
   `(font-lock-function-name-face ((t (:foreground ,light-cerulean :weight bold))))
   `(font-lock-keyword-face ((t (:foreground ,light-yellowish-tan))))
   `(font-lock-preprocessor-face ((t (:foreground ,dirt-brown :weight bold))))
   `(font-lock-string-face ((t (:foreground ,strings))))
   `(font-lock-type-face ((t :foreground ,light-wintergreen)))
   `(font-lock-variable-name-face ((t :foreground ,space-blue)))
   `(font-lock-warning-face ((t :foreground ,warnings)))

   ;; LaTeX fontification
   `(font-latex-bold-face ((t (:inherit default :weight bold))))
   `(font-latex-italic-face ((t (:inherit default :underline t))))
   `(font-latex-math-face ((t (:inherit default :foreground ,blue-gray))))
   `(font-latex-sectioning-5-face ((t (:inherit default :foreground ,pale-gold :weight bold))))
   `(font-latex-sedate-face ((t (:inherit shadow))))
   `(font-latex-string-face ((t (:foreground ,frost-cyan))))
   `(font-latex-warning-face ((t (:inherit warning))))

   ;; Show Paren mode
   `(show-paren-match ((t (:background ,less-highlighting :distant-foreground nil))))
   `(show-paren-mismatch ((t (:background ,warnings))))
   )
  )

;; Automatically add this theme to the custom theme load path

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'agate)
;;; agate-theme.el ends here
