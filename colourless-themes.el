;;; colourless-themes.el --- A macro to generate mostly colorless themes

;; Copyright (C) 2018–2020 Thomas Letan
;; Copyright (C) 2020 Brihadeesh S
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

;; Author: Brihadeesh S <brihadeesh@protonmail.com>
;; URL: https://gitlab.com/peregrinator/colourless-themes.el
;; Package-Requires: ((emacs "24.1"))
;; Version: 0.2
;; License: GPL-3
;; Keywords: faces themes, faces

;;; Commentary:

;; colourless-themes generalizes nordless-theme, a minimalist theme inspired by
;; nofrils[1], an extremely minimalist colourscheme for vim, and nord[2], a
;; north-bluish colour palette.  More precisely, it provides a macro called
;; `colorless-themes-make' to easily derive new “mostly colourless” themes.
;;
;; [1]: https://github.com/robertmeta/nofrils
;; [2]: https://github.com/arcticicestudio/nord

;;; Code:

;; -*- lexical-binding: t -*-

(defmacro colourless-themes-make (name bg bg+ current-line fade fg fg+ docs red orange yellow green)
  "A generic macro to create new themes.

Using this macro, it only takes minutes to write a new colourless theme.  To
create the theme NAME, you need to supply 12 different colours.  The three
primary colours are BG, FG and DOCS.  They together form the identity of the
newly created theme.  CURRENT-LINE is the background colour of, well, the current
line.  BG+ is notably being used in the modline.  FADE is used for whitespace
characters.  FG+ is used in the cursor and the company tooltip.  Finally, RED,
ORANGE, YELLOW and GREEN are pretty self-explanatory."
  `(progn
     (custom-theme-set-variables
      ',name
      '(fci-rule-color ,fade))

     (custom-theme-set-faces
      ;; basic
      ',name
      '(default ((t (:background ,bg :foreground ,fg))))
      '(cursor ((t (:background ,fg+ :foreground ,fg))))

      ;; modeline
      '(mode-line ((t (:background ,fade))))
      '(mode-line-inactive ((t ())))

      ;; basic II
      '(isearch ((t (:weight bold :background ,green :foreground ,bg))))
      '(lazy-highlight ((t (:weight bold :background ,current-line :foreground ,green))))
      '(evil-ex-substitute-matches ((t (:weight bold :strike-through t :foreground ,red))))
      '(evil-ex-substitute-replacement ((t (:weight bold :foreground ,green))))
      '(powerline-active1 ((t (:background ,bg))))
      '(powerline-active2 ((t (:background ,bg))))
      '(powerline-inactive1 ((t (:background ,fade))))
      '(powerline-inactive2 ((t (:background ,fade))))
      '(link ((t (:underline ,docs))))
      '(secondary-selection ((t ())))
      '(italic ((t (:slant italic))))
      '(shadow ((t ())))
      '(region ((t (:background ,fg :foreground ,bg))))
      '(escape-glyph ((t ())))

      ;; font-lock
      '(font-lock-warning-face ((t ())))
      '(font-lock-negation-char-face ((t ())))
      '(font-lock-regexp-grouping-backslash ((t ())))
      '(font-lock-regexp-grouping-construct ((t ())))
      '(font-lock-builtin-face ((t ())))
      '(minibuffer-prompt ((t ())))
      '(font-lock-constant-face ((t ())))
      '(font-lock-keyword-face ((t ())))
      '(font-lock-function-name-face ((t (:weight bold))))
      '(font-lock-variable-name-face ((t ())))
      '(font-lock-preprocessor-face ((t ())))
      '(font-lock-type-face ((t ())))
      '(font-lock-comment-delimiter-face ((t (:foreground ,docs))))
      '(font-lock-comment-face ((t (:foreground ,docs))))
      '(font-lock-doc-face ((t (:foreground ,docs))))
      '(font-lock-string-face ((t (:foreground ,fg+))))

      ;; basic III
      '(whitespace-space ((t (:foreground ,fade))))
      '(whitespace-tab ((t (:foreground ,fade))))
      '(whitespace-newline ((t (:foreground ,fade))))
      '(compilation-info ((t (:weight bold))))
      '(compilation-line-number ((t ())))
      '(compilation-mode-line-exit ((t (:foreground ,green))))
      '(compilation-mode-line-fail ((t (:foreground ,red))))
      '(match ((t (:foreground ,docs :background ,fg+))))
      '(linum ((t (:foreground ,fade))))
      '(line-number ((t (:foreground ,docs :height 0.8))))
      '(line-number-current-line ((t (:foreground ,fg))))
      '(hl-line ((t (:background ,current-line))))
      '(show-paren-match ((t (:foreground ,green :weight bold))))
      '(show-paren-mismatch ((t (:foreground ,red :weight bold))))
      '(hl-paren-face ((t (:foreground ,docs :weight bold))))

      ;; dired
      '(dired-directory ((t (:weight bold))))
      '(diredp-file-suffix ((t ())))
      '(diredp-ignored-file-name ((t ())))

      ;; rst
      '(rst-level-1 ((t (:weight bold))))
      '(rst-level-2 ((t (:weight bold))))
      '(rst-level-3 ((t (:weight bold))))
      '(rst-level-4 ((t (:weight bold))))
      '(rst-level-5 ((t (:weight bold))))
      '(rst-level-6 ((t (:weight bold))))

      ;; org-mode
      '(org-document-title ((t (:weight bold))))
      '(org-footnote ((t ())))
      '(org-level-1 ((t (:foreground ,yellow :weight bold))))
      '(org-level-2 ((t (:foreground ,orange :weight bold))))
      '(org-level-3 ((t (:foreground ,yellow :weight bold))))
      '(org-level-4 ((t (:foreground ,green :weight bold))))
      '(org-level-5 ((t (:foreground ,yellow :weight bold))))
      '(org-level-6 ((t (:foreground ,orange :weight bold))))
      '(org-level-7 ((t (:foreground ,yellow :weight bold))))
      '(org-level-8 ((t (:foreground ,green :weight bold))))
      '(org-date ((t ())))
      '(org-tag ((t (:foreground ,orange))))
      '(org-todo ((t (:foreground ,red))))
      '(org-done ((t (:foreground ,docs))))
      '(org-block ((t ())))
      '(org-block-begin-line ((t (:foreground ,fg+ :height 0.9))))
      '(org-block-end-line ((t (:foreground ,fg+ :height 0.9))))
      '(org-meta-line ((t (:foreground ,fg+ :height 0.9))))
      '(org-document-info-keyword ((t ())))
      '(org-document-info ((t ())))

      ;; FIXME: (find a title)
      '(persp-selected-face ((t (:weight bold))))
      '(proof-tactics-name-face ((t ())))
      '(proof-tacticals-name-face ((t ())))
      '(proof-locked-face ((t (:background ,fade))))
      '(proof-queue-face ((t (:background ,bg+))))
      '(proof-error-face ((t (:underline ,red))))
      '(proof-warning-face ((t (:underline ,orange))))
      '(proof-declaration-name-face ((t (:weight bold))))
      '(coq-cheat-face ((t (:foreground ,bg :background ,red))))
      '(coq-solve-tactics-face ((t ())))
      '(company-coq-coqdoc-h1-face ((t (:weight bold))))
      '(company-coq-coqdoc-h2-face ((t (:weight bold))))
      '(company-coq-coqdoc-h2-face ((t (:weight bold))))
      '(company-coq-coqdoc-h2-face ((t (:weight bold))))
      '(elixir-atom-face ((t ())))
      '(elixir-attribute-face ((t (:foreground ,docs))))
      '(haskell-pragma-face ((t (:weight bold :foreground ,docs))))

      ;; diff
      '(diff-header ((t (:weight bold))))
      '(diff-context ((t ())))
      '(diff-file-header ((t (:foreground ,docs))))
      '(diff-added ((t (:foreground ,green))))
      '(diff-removed ((t (:foreground ,red))))
      '(diff-changed ((t (:foreground ,yellow))))
      '(diff-hl-change ((t (:foreground ,fade :background ,yellow))))
      '(diff-hl-insert ((t (:foreground ,fade :background ,green))))
      '(diff-hl-delete ((t (:foreground ,fade :background ,red))))

      ;; flycheck
      '(flycheck-info ((t (:underline ,green))))
      '(flycheck-error ((t (:underline ,red))))
      '(flycheck-warning ((t (:underline ,orange))))
      '(flycheck-fringe-info ((t (:foreground ,green))))
      '(flycheck-fringe-error ((t (:foreground ,red))))
      '(flycheck-fringe-warning ((t (:foreground ,orange))))
      '(flyspell-incorrect ((t (:underline ,red))))
      '(flyspell-duplicate ((t (:underline ,orange))))
      '(fringe ((t (()))))

      ;; git/magit
      '(git-commit-summary ((t ())))
      '(git-commit-overlong-summary ((t (:foreground ,red))))
      '(git-commit-nonempty-second-line ((t (:foreground ,red))))
      '(git-commit-comment-heading ((t (:foreground ,docs))))
      '(git-commit-comment-branch-local ((t (:foreground ,docs :weight bold))))
      '(git-commit-comment-branch-remote ((t (:foreground ,docs :weight bold))))
      '(git-commit-comment-action ((t (:foreground ,docs))))
      '(git-commit-comment-file ((t (:foreground ,docs))))
      '(magit-diff-file-heading ((t (:weight bold))))
      '(magit-diff-hunk-heading ((t (:foreground ,fade :slant italic))))
      '(magit-diff-hunk-heading-highlight ((t (:slant italic))))
      '(magit-diff-lines-heading ((t (:background ,docs :foreground ,bg))))
      '(magit-header ((t (:weight bold))))
      '(magit-section-highlight ((t (:background ,current-line))))
      '(magit-section-heading ((t (:weight bold))))
      '(magit-section-heading-selection ((t ())))
      '(magit-selection-title ((t ())))
      '(magit-selection-highlight ((t ())))
      '(magit-selection ((t ())))
      '(magit-diff-context ((t ())))
      '(magit-diff-context-highlight ((t ())))
      '(magit-diff-removed-highlight ((t (:foreground ,red))))
      '(magit-diff-removed ((t (:foreground ,red))))
      '(magit-diff-added-highlight ((t (:foreground ,green))))
      '(magit-diff-added ((t (:foreground ,green))))
      '(diff-refine-added ((t (:foreground ,bg :background ,green))))
      '(diff-refine-removed ((t (:foreground ,bg :background ,red))))

      ;; markdown
      '(markdown-header-delimiter-face ((t (:foreground ,docs :weight bold))))
      '(markdown-header-face-1 ((t (:foreground ,yellow :weight bold))))
      '(markdown-header-face-2 ((t (:foreground ,orange :weight bold))))
      '(markdown-header-face-3 ((t (:foreground ,yellow :weight bold))))
      '(markdown-header-face-4 ((t (:foreground ,green :weight bold))))
      '(markdown-header-face-5 ((t (:foreground ,yellow :weight bold))))
      '(markdown-header-face-6 ((t (:foreground ,orange :weight bold))))
      '(markdown-markup-face ((t ())))
      '(markdown-bold-face ((t (:weight bold))))
      '(markdown-italic-face ((t (:italic t))))
      '(markdown-link-face ((t ())))
      '(markdown-url-face ((t (:underline t))))

      ;; LaTex
      '(font-latex-warning-face ((t (:slant italic))))
      '(font-latex-bold-face ((t (:weight bold))))
      '(font-latex-sedate-face ((t ())))
      '(font-latex-string-face ((t (:weight bold))))
      '(font-latex-math-face ((t ())))
      '(font-latex-italic-face ((t (:slant italic))))
      '(font-latex-superscript-face ((t ())))
      '(font-latex-subscript-face ((t ())))
      '(font-latex-script-char-face ((t ())))
      '(font-latex-sectioning-0-face ((t ())))
      '(font-latex-sectioning-1-face ((t ())))
      '(font-latex-sectioning-2-face ((t ())))
      '(font-latex-sectioning-3-face ((t ())))
      '(font-latex-sectioning-4-face ((t ())))
      '(font-latex-sectioning-5-face ((t ())))

      ;; helm
      '(helm-header ((t (:background ,bg+))))
      '(helm-source-header ((t (:background ,bg+))))
      '(helm-match ((t (:weight bold))))
      '(helm-grep-match ((t (:weight bold))))
      '(helm-candidate-number ((t ())))
      '(helm-grep-running ((t ())))
      '(helm-selection ((t (:background ,fg :foreground ,bg))))
      '(helm-ff-prefix ((t ())))
      '(helm-ff-directory ((t (:weight bold))))
      '(helm-ff-dotted-directory ((t (:weight bold))))
      '(variable-pitch ((t ())))
      '(highlight ((t (:background ,fade))))

      ;; compilation
      '(compilation-warning ((t (:weight bold :underline t))))
      '(compilation-column-number ((t (:underline t))))
      '(company-tooltip ((t (:foreground ,bg :background ,fg+))))
      '(company-scrollbar-fg ((t (:background ,bg))))
      '(company-scrollbar-bg ((t (:background ,fg))))
      '(company-tooltip-selection ((t (:background ,fade :foreground ,fg+))))
      '(company-tooltip-annotation ((t (:foreground ,fade))))
      '(company-tooltip-annotation-selection ((t (:foreground ,fg+))))
      '(company-tooltip-common ((t (:weight bold))))
      '(company-preview-common ((t ())))
      '(company-preview ((t (:background ,fg :foreground ,bg))))
      '(sh-heredoc ((t (:foreground ,docs :weight bold))))
      '(sh-quoted-exec ((t ())))
      '(tuareg-font-lock-governing-face ((t ())))
      '(tuareg-font-lock-operator-face ((t ())))
      '(tuareg-font-double-colon-face ((t ())))

      ;; tabs/header
      '(header-line ((t (:background ,current-line :foreground ,fg))))
      '(centaur-tabs-unselected ((t (:background ,current-line :foreground ,fg))))
      '(centaur-tabs-unselected-modified ((t (:background ,current-line :foreground ,fg))))
      '(centaur-tabs-selected ((t (:background ,bg :foreground ,fg))))
      '(centaur-tabs-selected-modified ((t (:background ,bg :foreground ,fg))))
      '(centaur-tabs-active-bar-face ((t (:background ,docs))))
      '(focus-unfocused ((t (:foreground ,fade))))

      ;; vterm
      '(vterm ((t (:foreground ,fg))))
      '(vterm-color-black   ((t (:foreground ,docs))))
      '(vterm-color-red     ((t (:foreground ,fg))))
      '(vterm-color-green   ((t (:foreground ,fg))))
      '(vterm-color-yellow  ((t (:foreground ,fg))))
      '(vterm-color-blue    ((t (:foreground ,docs))))
      '(vterm-color-magenta ((t (:foreground ,fg))))
      '(vterm-color-cyan    ((t (:foreground ,fg))))
      '(vterm-color-white   ((t (:foreground ,docs)))))))

(defmacro colourless-themes-load-theme (theme)
  "Load the theme THEME."
  `(if (daemonp)
       (add-hook 'after-make-frame-functions
                 (lambda (frame)
                   (select-frame frame)
                   (load-theme ,theme t)))
     (load-theme ,theme t)))

(provide 'colourless-themes)
;;; colourless-themes.el ends here
