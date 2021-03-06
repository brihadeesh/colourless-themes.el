;;; hydrangealess-theme.el --- A mostly colorless version of hydrangea-theme

;; Copyright (C) 2018–2020 Thomas Letan
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
;; The main source of inspiration of this theme is hydrangea.
;;
;; https://github.com/yuttie/hydrangea-emacs

;;; Code:
(require 'colourless-themes)

(deftheme hydrangealess "A mostly colourless version of hydrangea-theme")

(colourless-themes-make hydrangealess
                       "#1e222c"    ; bg
                       "#363a44"    ; bg+
                       "#2a303b"    ; current-line
                       "#4b5463"    ; fade
                       "#c3d5ec"    ; fg
                       "#F1F3F8"    ; fg+
                       "#e242ac"    ; docs
                       "#e91e63"    ; red
                       "#E08B6B"    ; orange
                       "#F4DC97"    ; yellow
                       "#B3CF95")   ; green

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'hydrangealess)
(provide 'hydrangealess-theme)
;;; hydrangealess-theme.el ends here
