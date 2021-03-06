;;; broceliande-theme.el --- A mostly colorless greeny theme

;; Copyright (C) 2019–2020 Thomas Letan
;;
;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program. If not, see <https://www.gnu.org/licenses/>.

;; Author: Thomas Letan <contact@thomasletan.fr>
;; URL: https://git.sr.ht/~lthms/colorless-themes.el
;; Version: 0.2
;; Package-Requires: ((colourless-themes "0.2"))
;; License: GPL-3
;; Keywords: faces theme

;;; Commentary:
;; The main source of inspiration of this theme is Lavender.
;;
;; https://github.com/emacsfodder/emacs-lavender-theme/

;;; Code:
(require 'colourless-themes)

(deftheme broceliande "A mostly colourless greeny theme")

(colourless-themes-make broceliande
                       "#001c1c"    ; bg
                       "#294040"    ; bg+
                       "#142e2e"    ; current-line
                       "#33635d"    ; fade
                       "#1fae9b"    ; fg
                       "#39d7c2"    ; fg+
                       "cyan"       ; primary
                       "#cc3333"    ; red
                       "#FF6200"    ; orange
                       "#F4DC97"    ; yellow
                       "#A6E22E")   ; green

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'broceliande)
(provide 'broceliande-theme)
;;; broceliande-theme.el ends here
