;;; chocolateless-theme.el --- A mostly colorless version of chocolate-theme

;; Copyright (C) 2020 Thomas Letan
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

(deftheme chocolateless "A mostly colourless version of chocolate-theme")

(colourless-themes-make chocolateless
                       "#33272A"    ; bg
                       "#261D1F"    ; bg+
                       "#4B393E"    ; current-line
                       "#705B5F"    ; fade
                       "#C7AE9D"    ; fg
                       "#EAEAFE"    ; fg+
                       "#DC672C"    ; primary
                       "#e05151"    ; red
                       "#F88425"    ; orange
                       "#e0c184"    ; yellow
                       "#43d089")   ; green

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'chocolateless)
(provide 'chocolateless-theme)
;;; chocolateless-theme.el ends here
