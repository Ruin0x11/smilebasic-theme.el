;;; smilebasic-theme.el --- A theme based off the SmileBASIC code editor

;; Copyright (c) 2019 Ruin0x11

;; Title: SmileBASIC Theme
;; Project: smilebasic-emacs
;; Version: 0.3.0
;; Package-Version: 20190509.652
;; Author: Ruin0x11 <ipickering2@gmail.com>
;; Package-Requires: ((emacs "24"))
;; License: MIT

;;; Commentary:

;; A theme based on the code editor in the 3DS software SmileBASIC.

;;; Code:

(unless (>= emacs-major-version 24)
  (error "SmileBASIC theme requires Emacs 24 or later!"))

(deftheme smilebasic "A theme based off the SmileBASIC code editor")

(defgroup smilebasic nil
  "SmileBASIC theme customizations.
  The theme has to be reloaded after changing anything in this group."
  :group 'faces)

(defcustom smilebasic-fancy-linum t
  "Use SmileBASIC line number font."
  :type 'boolean
  :group 'smilebasic)

;;;; Color Constants
(let ((class '((class color) (min-colors 89)))
  (smilebasic0 (if (display-graphic-p) "#000000" nil))
  (smilebasic1 (if (display-graphic-p) "#1B1B1B" "black"))
  (smilebasic2 (if (display-graphic-p) "#363636" "#434C5E"))
  (smilebasic3 (if (display-graphic-p) "#8D8D8D" "brightblack"))
  (smilebasic4 (if (display-graphic-p) "#C7C7C7" "#D8DEE9"))
  (smilebasic5 (if (display-graphic-p) "#E5E9F0" "white"))
  (smilebasic6 (if (display-graphic-p) "#FFFFFF" "brightwhite"))
  (smilebasic7 (if (display-graphic-p) "#CFF500" "cyan"))
  (smilebasic8 (if (display-graphic-p) "#7C7CF7" "brightcyan"))
  (smilebasic9 (if (display-graphic-p) "#00C4F9" "blue"))
  (smilebasic10 (if (display-graphic-p) "#7C7CF7" "brightblue"))
  (smilebasic11 (if (display-graphic-p) "#BF616A" "red"))
  (smilebasic12 (if (display-graphic-p) "#F0A000" "brightyellow")) ; #F8D000
  (smilebasic13 (if (display-graphic-p) "#F8681F" "yellow"))
  (smilebasic14 (if (display-graphic-p) "#A6AEA6" "green"))
  (smilebasic15 (if (display-graphic-p) "#F77CB6" "magenta"))
  (smilebasic-annotation (if (display-graphic-p) "#F0A000" "brightyellow"))
  (smilebasic-attribute (if (display-graphic-p) "#CFF500" "cyan"))
  (smilebasic-class (if (display-graphic-p) "#CFF500" "cyan")) ; #E7DE21
  (smilebasic-comment (if (display-graphic-p) "#10BD42" "brightblack"))
  (smilebasic-escape (if (display-graphic-p) "#F0A000" "brightyellow"))
  (smilebasic-method (if (display-graphic-p) "#7C7CF7" "brightcyan"))
  (smilebasic-keyword (if (display-graphic-p) "#00C4F9" "blue")) ; #7CB6F7
  (smilebasic-numeric (if (display-graphic-p) "#F77CB6" "magenta")) ; #F8438D
  (smilebasic-operator (if (display-graphic-p) "#00C4F9" "blue"))
  (smilebasic-preprocessor (if (display-graphic-p) "#7C7CF7" "brightblue"))
  (smilebasic-punctuation (if (display-graphic-p) "#D8DEE9" "#D8DEE9"))
  (smilebasic-regexp (if (display-graphic-p) "#F8681F" "yellow"))
  (smilebasic-string (if (display-graphic-p) "#A6AEA6" "green"))
  (smilebasic-tag (if (display-graphic-p) "#00C4F9" "blue"))
  (smilebasic-variable (if (display-graphic-p) "#D8DEE9" "#D8DEE9"))
  (smilebasic-region-highlight-foreground nil)
  (smilebasic-region-highlight-background "#5F6001")
  (smilebasic-uniform-mode-lines-background "#1B1B1B")
  (smilebasic-linum-font (if smilebasic-fancy-linum "SMILEBASICLN" nil))
  (smilebasic-linum-height (if smilebasic-fancy-linum 60 1.0)))

;;;; +------------+
;;;; + Core Faces +
;;;; +------------+
  (custom-theme-set-faces
    'smilebasic
    ;; +--- Base ---+
    `(bold ((,class (:weight bold))))
    `(bold-italic ((,class (:weight bold :slant italic))))
    `(default ((,class (:foreground ,smilebasic6 :background ,smilebasic0))))
    `(error ((,class (:foreground ,smilebasic11 :weight bold))))
    `(escape-glyph ((,class (:foreground ,smilebasic12))))
    `(font-lock-builtin-face ((,class (:foreground ,smilebasic9))))
    `(font-lock-comment-face ((,class (:foreground ,smilebasic-comment))))
    `(font-lock-comment-delimiter-face ((,class (:foreground ,smilebasic-comment))))
    `(font-lock-constant-face ((,class (:foreground ,smilebasic9))))
    `(font-lock-doc-face ((,class (:foreground ,smilebasic-comment))))
    `(font-lock-function-name-face ((,class (:foreground ,smilebasic8))))
    `(font-lock-keyword-face ((,class (:foreground ,smilebasic9))))
    `(font-lock-negation-char-face ((,class (:foreground ,smilebasic9))))
    `(font-lock-preprocessor-face ((,class (:foreground ,smilebasic10 :weight bold))))
    `(font-lock-reference-face ((,class (:foreground ,smilebasic9))))
    `(font-lock-regexp-grouping-backslash ((,class (:foreground ,smilebasic13))))
    `(font-lock-regexp-grouping-construct ((,class (:foreground ,smilebasic13))))
    `(font-lock-string-face ((,class (:foreground ,smilebasic14))))
    `(font-lock-type-face ((,class (:foreground ,smilebasic7))))
    `(font-lock-variable-name-face ((,class (:foreground ,smilebasic12))))
    `(font-lock-warning-face ((,class (:foreground ,smilebasic13))))
    `(italic ((,class (:slant italic))))
    `(shadow ((,class (:foreground ,smilebasic3))))
    `(underline ((,class (:underline t))))
    `(warning ((,class (:foreground ,smilebasic13 :weight bold))))

    ;; +--- Syntax ---+
    ;; > C
    `(c-annotation-face ((,class (:foreground ,smilebasic-annotation))))

    ;; > diff
    `(diff-added ((,class (:foreground ,smilebasic14))))
    `(diff-changed ((,class (:foreground ,smilebasic13))))
    `(diff-context ((,class (:inherit default))))
    `(diff-file-header ((,class (:foreground ,smilebasic8))))
    `(diff-function ((,class (:foreground ,smilebasic7))))
    `(diff-header ((,class (:foreground ,smilebasic9 :weight bold))))
    `(diff-hunk-header ((,class (:foreground ,smilebasic9 :background ,smilebasic0))))
    `(diff-indicator-added ((,class (:foreground ,smilebasic14))))
    `(diff-indicator-changed ((,class (:foreground ,smilebasic13))))
    `(diff-indicator-removed ((,class (:foreground ,smilebasic11))))
    `(diff-nonexistent ((,class (:foreground ,smilebasic11))))
    `(diff-refine-added ((,class (:foreground ,smilebasic14))))
    `(diff-refine-changed ((,class (:foreground ,smilebasic13))))
    `(diff-refine-removed ((,class (:foreground ,smilebasic11))))
    `(diff-removed ((,class (:foreground ,smilebasic11))))

    ;; +--- UI ---+
    `(border ((,class (:foreground ,smilebasic4))))
    `(buffer-menu-buffer ((,class (:foreground ,smilebasic4 :weight bold))))
    `(button ((,class (:background ,smilebasic0 :foreground ,smilebasic8 :box (:line-width 2 :color ,smilebasic4 :style sunken-button)))))
    `(completions-annotations ((,class (:foreground ,smilebasic9))))
    `(completions-common-part ((,class (:foreground ,smilebasic8 :weight bold))))
    `(completions-first-difference ((,class (:foreground ,smilebasic11))))
    `(custom-button ((,class (:background ,smilebasic0 :foreground ,smilebasic8 :box (:line-width 2 :color ,smilebasic4 :style sunken-button)))))
    `(custom-button-mouse ((,class (:background ,smilebasic4 :foreground ,smilebasic0 :box (:line-width 2 :color ,smilebasic4 :style sunken-button)))))
    `(custom-button-pressed ((,class (:background ,smilebasic6 :foreground ,smilebasic0 :box (:line-width 2 :color ,smilebasic4 :style sunken-button)))))
    `(custom-button-pressed-unraised ((,class (:background ,smilebasic4 :foreground ,smilebasic0 :box (:line-width 2 :color ,smilebasic4 :style sunken-button)))))
    `(custom-button-unraised ((,class (:background ,smilebasic0 :foreground ,smilebasic8 :box (:line-width 2 :color ,smilebasic4 :style sunken-button)))))
    `(custom-changed ((,class (:foreground ,smilebasic13))))
    `(custom-comment ((,class (:foreground ,smilebasic-comment))))
    `(custom-comment-tag ((,class (:foreground ,smilebasic7))))
    `(custom-documentation ((,class (:foreground ,smilebasic4))))
    `(custom-group-tag ((,class (:foreground ,smilebasic8 :weight bold))))
    `(custom-group-tag-1 ((,class (:foreground ,smilebasic8 :weight bold))))
    `(custom-invalid ((,class (:foreground ,smilebasic11))))
    `(custom-modified ((,class (:foreground ,smilebasic13))))
    `(custom-rogue ((,class (:foreground ,smilebasic12 :background ,smilebasic2))))
    `(custom-saved ((,class (:foreground ,smilebasic14))))
    `(custom-set ((,class (:foreground ,smilebasic8))))
    `(custom-state ((,class (:foreground ,smilebasic14))))
    `(custom-themed ((,class (:foreground ,smilebasic8 :background ,smilebasic2))))
    `(cursor ((,class (:background ,smilebasic4))))
    `(fringe ((,class (:foreground ,smilebasic4 :background ,smilebasic0))))
    `(file-name-shadow ((,class (:inherit shadow))))
    `(header-line ((,class (:foreground ,smilebasic4 :background ,smilebasic2))))
    `(help-argument-name ((,class (:foreground ,smilebasic8))))
    `(highlight ((,class (:foreground ,smilebasic8 :background ,smilebasic2))))
    `(hl-line ((,class (:background ,smilebasic1))))
    `(info-menu-star ((,class (:foreground ,smilebasic9))))
    `(isearch ((,class (:foreground ,smilebasic0 :background ,smilebasic8))))
    `(isearch-fail ((,class (:foreground ,smilebasic11))))
    `(link ((,class (:underline t))))
    `(link-visited ((,class (:underline t))))
    `(linum ((,class (:foreground ,smilebasic3 :background ,smilebasic1 :family ,smilebasic-linum-font :height ,smilebasic-linum-height))))
    `(linum-relative-current-face ((,class (:foreground ,smilebasic3 :background ,smilebasic0))))
    `(match ((,class (:inherit isearch))))
    `(message-cited-text ((,class (:foreground ,smilebasic4))))
    `(message-header-cc ((,class (:foreground ,smilebasic9))))
    `(message-header-name ((,class (:foreground ,smilebasic7))))
    `(message-header-newsgroup ((,class (:foreground ,smilebasic14))))
    `(message-header-other ((,class (:foreground ,smilebasic4))))
    `(message-header-subject ((,class (:foreground ,smilebasic8))))
    `(message-header-to ((,class (:foreground ,smilebasic9))))
    `(message-header-xheader ((,class (:foreground ,smilebasic13))))
    `(message-mml ((,class (:foreground ,smilebasic10))))
    `(message-separator ((,class (:inherit shadow))))
    `(minibuffer-prompt ((,class (:foreground ,smilebasic8 :weight bold))))
    `(mm-command-output ((,class (:foreground ,smilebasic8))))
    `(mode-line ((,class (:foreground ,smilebasic5 :background ,smilebasic2))))
    `(mode-line-buffer-id ((,class (:foreground ,smilebasic8 :weight bold))))
    `(mode-line-highlight ((,class (:inherit highlight))))
    `(mode-line-inactive ((,class (:foreground ,smilebasic4 :background ,smilebasic-uniform-mode-lines-background))))
    `(next-error ((,class (:inherit error))))
    `(nobreak-space ((,class (:foreground ,smilebasic3))))
    `(outline-1 ((,class (:foreground ,smilebasic8 :weight bold))))
    `(outline-2 ((,class (:inherit outline-1))))
    `(outline-3 ((,class (:inherit outline-1))))
    `(outline-4 ((,class (:inherit outline-1))))
    `(outline-5 ((,class (:inherit outline-1))))
    `(outline-6 ((,class (:inherit outline-1))))
    `(outline-7 ((,class (:inherit outline-1))))
    `(outline-8 ((,class (:inherit outline-1))))
    `(package-description ((,class (:foreground ,smilebasic4))))
    `(package-help-section-name ((,class (:foreground ,smilebasic8 :weight bold))))
    `(package-name ((,class (:foreground ,smilebasic8))))
    `(package-status-available ((,class (:foreground ,smilebasic7))))
    `(package-status-avail-obso ((,class (:foreground ,smilebasic7 :slant italic))))
    `(package-status-built-in ((,class (:foreground ,smilebasic9))))
    `(package-status-dependency ((,class (:foreground ,smilebasic8 :slant italic))))
    `(package-status-disabled ((,class (:foreground ,smilebasic3))))
    `(package-status-external ((,class (:foreground ,smilebasic12 :slant italic))))
    `(package-status-held ((,class (:foreground ,smilebasic4 :weight bold))))
    `(package-status-new ((,class (:foreground ,smilebasic14))))
    `(package-status-incompat ((,class (:foreground ,smilebasic11))))
    `(package-status-installed ((,class (:foreground ,smilebasic7 :weight bold))))
    `(package-status-unsigned ((,class (:underline ,smilebasic13))))
    `(query-replace ((,class (:foreground ,smilebasic8 :background ,smilebasic2))))
    `(region ((,class (:foreground ,smilebasic-region-highlight-foreground :background ,smilebasic-region-highlight-background))))
    `(scroll-bar ((,class (:background ,smilebasic3))))
    `(secondary-selection ((,class (:background ,smilebasic2))))
    `(show-paren-match-face ((,class (:foreground ,smilebasic0 :background ,smilebasic8))))
    `(show-paren-mismatch-face ((,class (:background ,smilebasic11))))
    `(success ((,class (:foreground ,smilebasic14))))
    `(term ((,class (:foreground ,smilebasic4 :background ,smilebasic0))))
    `(term-color-black ((,class (:foreground ,smilebasic1 :background ,smilebasic1))))
    `(term-color-white ((,class (:foreground ,smilebasic5 :background ,smilebasic5))))
    `(term-color-cyan ((,class (:foreground ,smilebasic7 :background ,smilebasic7))))
    `(term-color-blue ((,class (:foreground ,smilebasic8 :background ,smilebasic8))))
    `(term-color-red ((,class (:foreground ,smilebasic11 :background ,smilebasic11))))
    `(term-color-yellow ((,class (:foreground ,smilebasic13 :background ,smilebasic13))))
    `(term-color-green ((,class (:foreground ,smilebasic14 :background ,smilebasic14))))
    `(term-color-magenta ((,class (:foreground ,smilebasic15 :background ,smilebasic15))))
    `(tool-bar ((,class (:foreground ,smilebasic4 :background ,smilebasic3))))
    `(tooltip ((,class (:foreground ,smilebasic0 :background ,smilebasic4))))
    `(trailing-whitespace ((,class (:foreground ,smilebasic3))))
    `(tty-menu-disabled-face ((,class (:foreground ,smilebasic1))))
    `(tty-menu-enabled-face ((,class (:background ,smilebasic2 foreground ,smilebasic4))))
    `(tty-menu-selected-face ((,class (:foreground ,smilebasic8 :underline t))))
    `(undo-tree-visualizer-current-face ((,class (:foreground ,smilebasic8))))
    `(undo-tree-visualizer-default-face ((,class (:foreground ,smilebasic4))))
    `(undo-tree-visualizer-unmodified-face ((,class (:foreground ,smilebasic4))))
    `(undo-tree-visualizer-register-face ((,class (:foreground ,smilebasic9))))
    `(vc-conflict-state ((,class (:foreground ,smilebasic12))))
    `(vc-edited-state ((,class (:foreground ,smilebasic13))))
    `(vc-locally-added-state ((,class (:underline ,smilebasic14))))
    `(vc-locked-state ((,class (:foreground ,smilebasic10))))
    `(vc-missing-state ((,class (:foreground ,smilebasic11))))
    `(vc-needs-update-state ((,class (:foreground ,smilebasic12))))
    `(vc-removed-state ((,class (:foreground ,smilebasic11))))
    `(vc-state-base ((,class (:foreground ,smilebasic4))))
    `(vc-up-to-date-state ((,class (:foreground ,smilebasic8))))
    `(vertical-border ((,class (:foreground ,smilebasic2))))
    `(which-func ((,class (:foreground ,smilebasic8))))
    `(whitespace-big-indent ((,class (:foreground ,smilebasic3 :background ,smilebasic0))))
    `(whitespace-empty ((,class (:foreground ,smilebasic3 :background ,smilebasic0))))
    `(whitespace-hspace ((,class (:foreground ,smilebasic3 :background ,smilebasic0))))
    `(whitespace-indentation ((,class (:foreground ,smilebasic3 :background ,smilebasic0))))
    `(whitespace-line ((,class (:background ,smilebasic0))))
    `(whitespace-newline ((,class (:foreground ,smilebasic3 :background ,smilebasic0))))
    `(whitespace-space ((,class (:foreground ,smilebasic3 :background ,smilebasic0))))
    `(whitespace-space-after-tab ((,class (:foreground ,smilebasic3 :background ,smilebasic0))))
    `(whitespace-space-before-tab ((,class (:foreground ,smilebasic3 :background ,smilebasic0))))
    `(whitespace-tab ((,class (:foreground ,smilebasic3 :background ,smilebasic0))))
    `(whitespace-trailing ((,class (:inherit trailing-whitespace))))
    `(widget-button-pressed ((,class (:foreground ,smilebasic9 :background ,smilebasic1))))
    `(widget-documentation ((,class (:foreground ,smilebasic4))))
    `(widget-field ((,class (:background ,smilebasic2 :foreground ,smilebasic4))))
    `(widget-single-line-field ((,class (:background ,smilebasic2 :foreground ,smilebasic4))))
    `(window-divider ((,class (:background ,smilebasic3))))
    `(window-divider-first-pixel ((,class (:background ,smilebasic3))))
    `(window-divider-last-pixel ((,class (:background ,smilebasic3))))

    ;;;; +-----------------+
    ;;;; + Package Support +
    ;;;; +-----------------+
    ;; +--- Syntax ---+
    ;; > Auctex
    `(font-latex-bold-face ((,class (:inherit bold))))
    `(font-latex-italic-face ((,class (:inherit italic))))
    `(font-latex-math-face ((,class (:foreground ,smilebasic8))))
    `(font-latex-sectioning-0-face ((,class (:foreground ,smilebasic8 :weight bold))))
    `(font-latex-sectioning-1-face ((,class (:inherit font-latex-sectioning-0-face))))
    `(font-latex-sectioning-2-face ((,class (:inherit font-latex-sectioning-0-face))))
    `(font-latex-sectioning-3-face ((,class (:inherit font-latex-sectioning-0-face))))
    `(font-latex-sectioning-4-face ((,class (:inherit font-latex-sectioning-0-face))))
    `(font-latex-sectioning-5-face ((,class (:inherit font-latex-sectioning-0-face))))
    `(font-latex-script-char-face ((,class (:inherit font-lock-warning-face))))
    `(font-latex-string-face ((,class (:inherit font-lock-string-face))))
    `(font-latex-warning-face ((,class (:inherit font-lock-warning-face))))

    ;; > Elixir
    `(elixir-attribute-face ((,class (:foreground ,smilebasic-annotation))))
    `(elixir-atom-face ((,class (:foreground ,smilebasic4 :weight bold))))

    ;; > Enhanced Ruby
    `(enh-ruby-heredoc-delimiter-face ((,class (:foreground ,smilebasic14))))
    `(enh-ruby-op-face ((,class (:foreground ,smilebasic9))))
    `(enh-ruby-regexp-delimiter-face ((,class (:foreground ,smilebasic13))))
    `(enh-ruby-regexp-face ((,class (:foreground ,smilebasic13))))
    `(enh-ruby-string-delimiter-face ((,class (:foreground ,smilebasic14))))
    `(erm-syn-errline ((,class (:foreground ,smilebasic11 :underline t))))
    `(erm-syn-warnline ((,class (:foreground ,smilebasic13 :underline t))))

    ;; > Java Development Environment for Emacs
    `(jdee-db-active-breakpoint-face ((,class (:background ,smilebasic2 :weight bold))))
    `(jdee-bug-breakpoint-cursor ((,class (:background ,smilebasic2))))
    `(jdee-db-requested-breakpoint-face ((,class (:foreground ,smilebasic13 :background ,smilebasic2 :weight bold))))
    `(jdee-db-spec-breakpoint-face ((,class (:foreground ,smilebasic14 :background ,smilebasic2 :weight bold))))
    `(jdee-font-lock-api-face ((,class (:foreground ,smilebasic4))))
    `(jdee-font-lock-code-face ((,class (:slant italic))))
    `(jdee-font-lock-constant-face ((,class (:foreground ,smilebasic-keyword))))
    `(jdee-font-lock-constructor-face ((,class (:foreground ,smilebasic-method))))
    `(jdee-font-lock-doc-tag-face ((,class (:foreground ,smilebasic7))))
    `(jdee-font-lock-link-face ((,class (:underline t))))
    `(jdee-font-lock-modifier-face ((,class (:foreground ,smilebasic-keyword))))
    `(jdee-font-lock-number-face ((,class (:foreground ,smilebasic-numeric))))
    `(jdee-font-lock-operator-fac ((,class (:foreground ,smilebasic-operator))))
    `(jdee-font-lock-package-face ((,class (:foreground ,smilebasic-class))))
    `(jdee-font-lock-pre-face ((,class (:foreground ,smilebasic-comment :slant italic))))
    `(jdee-font-lock-private-face ((,class (:foreground ,smilebasic-keyword))))
    `(jdee-font-lock-public-face ((,class (:foreground ,smilebasic-keyword))))
    `(jdee-font-lock-variable-face ((,class (:foreground ,smilebasic-variable))))

    ;; > JavaScript 2
    `(js2-function-call ((,class (:foreground ,smilebasic8))))
    `(js2-private-function-call ((,class (:foreground ,smilebasic8))))
    `(js2-jsdoc-html-tag-delimiter ((,class (:foreground ,smilebasic6))))
    `(js2-jsdoc-html-tag-name ((,class (:foreground ,smilebasic9))))
    `(js2-external-variable ((,class (:foreground ,smilebasic4))))
    `(js2-function-param ((,class (:foreground ,smilebasic4))))
    `(js2-jsdoc-value ((,class (:foreground ,smilebasic-comment))))
    `(js2-jsdoc-tag ((,class (:foreground ,smilebasic7))))
    `(js2-jsdoc-type ((,class (:foreground ,smilebasic7))))
    `(js2-private-member ((,class (:foreground ,smilebasic4))))
    `(js2-object-property ((,class (:foreground ,smilebasic4))))
    `(js2-error ((,class (:foreground ,smilebasic11))))
    `(js2-warning ((,class (:foreground ,smilebasic13))))
    `(js2-instance-member ((,class (:foreground ,smilebasic4))))

    ;; > JavaScript 3
    `(js3-error-face ((,class (:foreground ,smilebasic11))))
    `(js3-external-variable-face ((,class (:foreground ,smilebasic4))))
    `(js3-function-param-face ((,class (:foreground ,smilebasic4))))
    `(js3-instance-member-face ((,class (:foreground ,smilebasic4))))
    `(js3-jsdoc-html-tag-delimiter-face ((,class (:foreground ,smilebasic6))))
    `(js3-jsdoc-html-tag-name-face ((,class (:foreground ,smilebasic9))))
    `(js3-jsdoc-tag-face ((,class (:foreground ,smilebasic9))))
    `(js3-jsdoc-type-face ((,class (:foreground ,smilebasic7))))
    `(js3-jsdoc-value-face ((,class (:foreground ,smilebasic4))))
    `(js3-magic-paren-face ((,class (:inherit show-paren-match-face))))
    `(js3-private-function-call-face ((,class (:foreground ,smilebasic8))))
    `(js3-private-member-face ((,class (:foreground ,smilebasic4))))
    `(js3-warning-face ((,class (:foreground ,smilebasic13))))

    ;; > Markdown
    `(markdown-blockquote-face ((,class (:foreground ,smilebasic-comment))))
    `(markdown-bold-face ((,class (:inherit bold))))
    `(markdown-header-face-1 ((,class (:foreground ,smilebasic8))))
    `(markdown-header-face-2 ((,class (:foreground ,smilebasic8))))
    `(markdown-header-face-3 ((,class (:foreground ,smilebasic8))))
    `(markdown-header-face-4 ((,class (:foreground ,smilebasic8))))
    `(markdown-header-face-5 ((,class (:foreground ,smilebasic8))))
    `(markdown-header-face-6 ((,class (:foreground ,smilebasic8))))
    `(markdown-inline-code-face ((,class (:foreground ,smilebasic7))))
    `(markdown-italic-face ((,class (:inherit italic))))
    `(markdown-link-face ((,class (:foreground ,smilebasic8))))
    `(markdown-markup-face ((,class (:foreground ,smilebasic9))))
    `(markdown-reference-face ((,class (:inherit markdown-link-face))))
    `(markdown-url-face ((,class (:foreground ,smilebasic4 :underline t))))

    ;; > Rainbow Delimeters
    `(rainbow-delimiters-depth-1-face ((,class :foreground ,smilebasic7)))
    `(rainbow-delimiters-depth-2-face ((,class :foreground ,smilebasic8)))
    `(rainbow-delimiters-depth-3-face ((,class :foreground ,smilebasic9)))
    `(rainbow-delimiters-depth-4-face ((,class :foreground ,smilebasic10)))
    `(rainbow-delimiters-depth-5-face ((,class :foreground ,smilebasic12)))
    `(rainbow-delimiters-depth-6-face ((,class :foreground ,smilebasic13)))
    `(rainbow-delimiters-depth-7-face ((,class :foreground ,smilebasic14)))
    `(rainbow-delimiters-depth-8-face ((,class :foreground ,smilebasic15)))
    `(rainbow-delimiters-unmatched-face ((,class :foreground ,smilebasic11)))

    ;; > Web Mode
    `(web-mode-attr-tag-custom-face ((,class (:foreground ,smilebasic-attribute))))
    `(web-mode-builtin-face ((,class (:foreground ,smilebasic-keyword))))
    `(web-mode-comment-face ((,class (:foreground ,smilebasic-comment))))
    `(web-mode-comment-keyword-face ((,class (:foreground ,smilebasic-comment))))
    `(web-mode-constant-face ((,class (:foreground ,smilebasic-variable))))
    `(web-mode-css-at-rule-face ((,class (:foreground ,smilebasic-annotation))))
    `(web-mode-css-function-face ((,class (:foreground ,smilebasic-method))))
    `(web-mode-css-property-name-face ((,class (:foreground ,smilebasic-keyword))))
    `(web-mode-css-pseudo-class-face ((,class (:foreground ,smilebasic-class))))
    `(web-mode-css-selector-face ((,class (:foreground ,smilebasic-keyword))))
    `(web-mode-css-string-face ((,class (:foreground ,smilebasic-string))))
    `(web-mode-doctype-face ((,class (:foreground ,smilebasic-preprocessor))))
    `(web-mode-function-call-face ((,class (:foreground ,smilebasic-method))))
    `(web-mode-function-name-face ((,class (:foreground ,smilebasic-method))))
    `(web-mode-html-attr-name-face ((,class (:foreground ,smilebasic-attribute))))
    `(web-mode-html-attr-equal-face ((,class (:foreground ,smilebasic-punctuation))))
    `(web-mode-html-attr-value-face ((,class (:foreground ,smilebasic-string))))
    `(web-mode-html-entity-face ((,class (:foreground ,smilebasic-keyword))))
    `(web-mode-html-tag-bracket-face ((,class (:foreground ,smilebasic-punctuation))))
    `(web-mode-html-tag-custom-face ((,class (:foreground ,smilebasic-tag))))
    `(web-mode-html-tag-face ((,class (:foreground ,smilebasic-tag))))
    `(web-mode-html-tag-namespaced-face ((,class (:foreground ,smilebasic-keyword))))
    `(web-mode-json-key-face ((,class (:foreground ,smilebasic-class))))
    `(web-mode-json-string-face ((,class (:foreground ,smilebasic-string))))
    `(web-mode-keyword-face ((,class (:foreground ,smilebasic-keyword))))
    `(web-mode-preprocessor-face ((,class (:foreground ,smilebasic-preprocessor))))
    `(web-mode-string-face ((,class (:foreground ,smilebasic-string))))
    `(web-mode-symbol-face ((,class (:foreground ,smilebasic-variable))))
    `(web-mode-type-face ((,class (:foreground ,smilebasic-class))))
    `(web-mode-warning-face ((,class (:inherit ,font-lock-warning-face))))
    `(web-mode-variable-name-face ((,class (:foreground ,smilebasic-variable))))

    ;; +--- UI ---+
    ;; > Anzu
    `(anzu-mode-line ((,class (:foreground, smilebasic8))))
    `(anzu-mode-line-no-match ((,class (:foreground, smilebasic11))))

    ;; > Avy
    `(avy-lead-face ((,class (:background ,smilebasic11 :foreground ,smilebasic5))))
    `(avy-lead-face-0 ((,class (:background ,smilebasic10 :foreground ,smilebasic5))))
    `(avy-lead-face-1 ((,class (:background ,smilebasic3 :foreground ,smilebasic5))))
    `(avy-lead-face-2 ((,class (:background ,smilebasic15 :foreground ,smilebasic5))))

    ;; > Company
    `(company-echo-common ((,class (:foreground ,smilebasic0 :background ,smilebasic4))))
    `(company-preview ((,class (:foreground ,smilebasic4 :background ,smilebasic10))))
    `(company-preview-common ((,class (:foreground ,smilebasic0 :background ,smilebasic8))))
    `(company-preview-search ((,class (:foreground ,smilebasic0 :background ,smilebasic8))))
    `(company-scrollbar-bg ((,class (:foreground ,smilebasic1 :background ,smilebasic1))))
    `(company-scrollbar-fg ((,class (:foreground ,smilebasic2 :background ,smilebasic2))))
    `(company-template-field ((,class (:foreground ,smilebasic0 :background ,smilebasic7))))
    `(company-tooltip ((,class (:foreground ,smilebasic4 :background ,smilebasic2))))
    `(company-tooltip-annotation ((,class (:foreground ,smilebasic12))))
    `(company-tooltip-annotation-selection ((,class (:foreground ,smilebasic12 :weight bold))))
    `(company-tooltip-common ((,class (:foreground ,smilebasic8))))
    `(company-tooltip-common-selection ((,class (:foreground ,smilebasic8 :background ,smilebasic3))))
    `(company-tooltip-mouse ((,class (:inherit highlight))))
    `(company-tooltip-selection ((,class (:background ,smilebasic3 :weight bold))))

    ;; > diff-hl
   `(diff-hl-change ((,class (:background ,smilebasic13))))
   `(diff-hl-insert ((,class (:background ,smilebasic14))))
   `(diff-hl-delete ((,class (:background ,smilebasic11))))

    ;; > Evil
    `(evil-ex-info ((,class (:foreground ,smilebasic8))))
    `(evil-ex-substitute-replacement ((,class (:foreground ,smilebasic9))))
    `(evil-ex-substitute-matches ((,class (:inherit isearch))))

    ;; > Flycheck
    `(flycheck-error ((,class (:underline (:style wave :color ,smilebasic11)))))
    `(flycheck-fringe-error ((,class (:foreground ,smilebasic11 :weight bold))))
    `(flycheck-fringe-info ((,class (:foreground ,smilebasic8 :weight bold))))
    `(flycheck-fringe-warning ((,class (:foreground ,smilebasic13 :weight bold))))
    `(flycheck-info ((,class (:underline (:style wave :color ,smilebasic8)))))
    `(flycheck-warning ((,class (:underline (:style wave :color ,smilebasic13)))))

    ;; > Git Gutter
    `(git-gutter:modified ((,class (:foreground ,smilebasic13))))
    `(git-gutter:added ((,class (:foreground ,smilebasic14))))
    `(git-gutter:deleted ((,class (:foreground ,smilebasic11))))

    ;; > Git Gutter Plus
    `(git-gutter+-modified ((,class (:foreground ,smilebasic13))))
    `(git-gutter+-added ((,class (:foreground ,smilebasic14))))
    `(git-gutter+-deleted ((,class (:foreground ,smilebasic11))))

    ;; > Helm
    `(helm-bookmark-addressbook ((,class (:foreground ,smilebasic7))))
    `(helm-bookmark-directory ((,class (:foreground ,smilebasic9))))
    `(helm-bookmark-file ((,class (:foreground ,smilebasic8))))
    `(helm-bookmark-gnus ((,class (:foreground ,smilebasic10))))
    `(helm-bookmark-info ((,class (:foreground ,smilebasic14))))
    `(helm-bookmark-man ((,class (:foreground ,smilebasic4))))
    `(helm-bookmark-w3m ((,class (:foreground ,smilebasic9))))
    `(helm-buffer-directory ((,class (:foreground ,smilebasic9))))
    `(helm-buffer-file ((,class (:foreground ,smilebasic8))))
    `(helm-buffer-not-saved ((,class (:foreground ,smilebasic13))))
    `(helm-buffer-process ((,class (:foreground ,smilebasic10))))
    `(helm-candidate-number ((,class (:foreground ,smilebasic4 :weight bold))))
    `(helm-candidate-number-suspended ((,class (:foreground ,smilebasic4))))
    `(helm-ff-directory ((,class (:foreground ,smilebasic9 :weight bold))))
    `(helm-ff-dirs ((,class (:foreground ,smilebasic9))))
    `(helm-ff-dotted-director ((,class (:foreground ,smilebasic9 :underline t))))
    `(helm-ff-dotted-symlink-director ((,class (:foreground ,smilebasic7 :weight bold))))
    `(helm-ff-executable ((,class (:foreground ,smilebasic8))))
    `(helm-ff-file ((,class (:foreground ,smilebasic4))))
    `(helm-ff-invalid-symlink ((,class (:foreground ,smilebasic11 :weight bold))))
    `(helm-ff-prefix ((,class (:foreground ,smilebasic0 :background ,smilebasic9))))
    `(helm-ff-symlink ((,class (:foreground ,smilebasic7))))
    `(helm-grep-cmd-line ((,class (:foreground ,smilebasic4 :background ,smilebasic0))))
    `(helm-grep-file ((,class (:foreground ,smilebasic8))))
    `(helm-grep-finish ((,class (:foreground ,smilebasic5))))
    `(helm-grep-lineno ((,class (:foreground ,smilebasic4))))
    `(helm-grep-match ((,class (:inherit isearch))))
    `(helm-grep-running ((,class (:foreground ,smilebasic8))))
    `(helm-header ((,class (:foreground ,smilebasic9 :background ,smilebasic2))))
    `(helm-header-line-left-margin ((,class (:foreground ,smilebasic9 :background ,smilebasic2))))
    `(helm-history-deleted ((,class (:foreground ,smilebasic11))))
    `(helm-history-remote ((,class (:foreground ,smilebasic4))))
    `(helm-lisp-completion-info ((,class (:foreground ,smilebasic4 :weight bold))))
    `(helm-lisp-show-completion ((,class (:inherit isearch))))
    `(helm-locate-finish ((,class (:foreground ,smilebasic14))))
    `(helm-match ((,class (:foreground ,smilebasic8))))
    `(helm-match-item ((,class (:inherit isearch))))
    `(helm-moccur-buffer ((,class (:foreground ,smilebasic8))))
    `(helm-resume-need-update ((,class (:foreground ,smilebasic0 :background ,smilebasic13))))
    `(helm-selection ((,class (:inherit highlight))))
    `(helm-selection-line ((,class (:background ,smilebasic2))))
    `(helm-source-header ((,class (:height 1.44 :foreground ,smilebasic8 :background ,smilebasic2))))
    `(helm-swoop-line-number-face ((,class (:foreground ,smilebasic4 :background ,smilebasic0))))
    `(helm-swoop-target-word-face ((,class (:foreground ,smilebasic0 :background ,smilebasic7))))
    `(helm-swoop-target-line-face ((,class (:background ,smilebasic13 :foreground ,smilebasic3))))
    `(helm-swoop-target-line-block-face ((,class (:background ,smilebasic13 :foreground ,smilebasic3))))
    `(helm-separator ((,class (:background ,smilebasic2))))
    `(helm-visible-mark ((,class (:background ,smilebasic2))))

    ;; > Magit
    `(magit-branch ((,class (:foreground ,smilebasic7 :weight bold))))
    `(magit-diff-context-highlight ((,class (:background ,smilebasic2))))
    `(magit-diff-file-header ((,class (:foreground ,smilebasic8 :box (:color ,smilebasic8)))))
    `(magit-diffstat-added ((,class (:foreground ,smilebasic14))))
    `(magit-diffstat-removed ((,class (:foreground ,smilebasic11))))
    `(magit-hash ((,class (:foreground ,smilebasic8))))
    `(magit-hunk-heading ((,class (:foreground ,smilebasic9))))
    `(magit-hunk-heading-highlight ((,class (:foreground ,smilebasic9 :background ,smilebasic2))))
    `(magit-item-highlight ((,class (:foreground ,smilebasic8 :background ,smilebasic2))))
    `(magit-log-author ((,class (:foreground ,smilebasic7))))
    `(magit-process-ng ((,class (:foreground ,smilebasic13 :weight bold))))
    `(magit-process-ok ((,class (:foreground ,smilebasic14 :weight bold))))
    `(magit-section-heading ((,class (:foreground ,smilebasic7 :weight bold))))
    `(magit-section-highlight ((,class (:background ,smilebasic2))))

    ;; > MU4E
    `(mu4e-header-marks-face ((,class (:foreground ,smilebasic9))))
    `(mu4e-title-face ((,class (:foreground ,smilebasic8))))
    `(mu4e-header-key-face ((,class (:foreground ,smilebasic8))))
    `(mu4e-highlight-face ((,class (:highlight))))
    `(mu4e-flagged-face ((,class (:foreground ,smilebasic13))))
    `(mu4e-unread-face ((,class (:foreground ,smilebasic13 :weight bold))))
    `(mu4e-link-face ((,class (:underline t))))

    ;; > Powerline
    `(powerline-active1 ((,class (:foreground ,smilebasic4 :background ,smilebasic1))))
    `(powerline-active2 ((,class (:foreground ,smilebasic4 :background ,smilebasic3))))
    `(powerline-inactive1 ((,class (:background ,smilebasic2))))
    `(powerline-inactive2 ((,class (:background ,smilebasic2))))

    ;; > Powerline Evil
    `(powerline-evil-base-face ((,class (:foreground ,smilebasic4))))
    `(powerline-evil-normal-face ((,class (:background ,smilebasic8))))
    `(powerline-evil-insert-face ((,class (:foreground ,smilebasic0 :background ,smilebasic4))))
    `(powerline-evil-visual-face ((,class (:foreground ,smilebasic0 :background ,smilebasic7))))
    `(powerline-evil-replace-face ((,class (:foreground ,smilebasic0 :background ,smilebasic9))))

    ;; > NeoTree
    `(neo-banner-face ((,class (:foreground ,smilebasic10))))
    `(neo-dir-link-face ((,class (:foreground ,smilebasic9))))
    `(neo-expand-btn-face ((,class (:foreground ,smilebasic6 :bold t))))
    `(neo-file-link-face ((,class (:foreground ,smilebasic4))))
    `(neo-root-dir-face ((,class (:foreground ,smilebasic7 :weight bold))))
    `(neo-vc-added-face ((,class (:foreground ,smilebasic14))))
    `(neo-vc-conflict-face ((,class (:foreground ,smilebasic11))))
    `(neo-vc-default-face ((,class (:foreground ,smilebasic4))))
    `(neo-vc-edited-face ((,class (:foreground ,smilebasic13))))
    `(neo-vc-ignored-face ((,class (:foreground ,smilebasic3))))
    `(neo-vc-missing-face ((,class (:foreground ,smilebasic12))))
    `(neo-vc-needs-merge-face ((,class (:background ,smilebasic12 :foreground ,smilebasic4))))
    `(neo-vc-needs-update-face ((,class (:background ,smilebasic10 :foreground ,smilebasic4))))
    `(neo-vc-removed-face ((,class (:foreground ,smilebasic11 :strike-through nil))))
    `(neo-vc-up-to-date-face ((,class (:foreground ,smilebasic4))))
    `(neo-vc-user-face ((,class (:foreground ,smilebasic4))))

    ;; > Org
    `(org-level-1 ((,class (:foreground ,smilebasic8 :weight bold))))
    `(org-level-2 ((,class (:inherit org-level-1))))
    `(org-level-3 ((,class (:inherit org-level-1))))
    `(org-level-4 ((,class (:inherit org-level-1))))
    `(org-level-5 ((,class (:inherit org-level-1))))
    `(org-level-6 ((,class (:inherit org-level-1))))
    `(org-level-7 ((,class (:inherit org-level-1))))
    `(org-level-8 ((,class (:inherit org-level-1))))
    `(org-agenda-structure ((,class (:foreground ,smilebasic9))))
    `(org-agenda-date ((,class (:foreground ,smilebasic8 :underline nil))))
    `(org-agenda-done ((,class (:foreground ,smilebasic14))))
    `(org-agenda-dimmed-todo-face ((,class (:background ,smilebasic13))))
    `(org-block ((,class (:foreground ,smilebasic4))))
    `(org-block-background ((,class (:background ,smilebasic0))))
    `(org-block-begin-line ((,class (:foreground ,smilebasic7))))
    `(org-block-end-line ((,class (:foreground ,smilebasic7))))
    `(org-checkbox ((,class (:foreground ,smilebasic9))))
    `(org-checkbox-statistics-done ((,class (:foreground ,smilebasic14))))
    `(org-checkbox-statistics-todo ((,class (:foreground ,smilebasic13))))
    `(org-code ((,class (:foreground ,smilebasic7))))
    `(org-column ((,class (:background ,smilebasic2))))
    `(org-column-title ((,class (:inherit org-column :weight bold :underline t))))
    `(org-date ((,class (:foreground ,smilebasic8))))
    `(org-document-info ((,class (:foreground ,smilebasic4))))
    `(org-document-info-keyword ((,class (:foreground ,smilebasic3 :weight bold))))
    `(org-document-title ((,class (:foreground ,smilebasic8 :weight bold))))
    `(org-done ((,class (:foreground ,smilebasic14 :weight bold))))
    `(org-ellipsis ((,class (:foreground ,smilebasic3))))
    `(org-footnote ((,class (:foreground ,smilebasic8))))
    `(org-formula ((,class (:foreground ,smilebasic9))))
    `(org-hide ((,class (:foreground ,smilebasic0 :background ,smilebasic0))))
    `(org-link ((,class (:underline t))))
    `(org-scheduled ((,class (:foreground ,smilebasic14))))
    `(org-scheduled-previously ((,class (:foreground ,smilebasic13))))
    `(org-scheduled-today ((,class (:foreground ,smilebasic8))))
    `(org-special-keyword ((,class (:foreground ,smilebasic9))))
    `(org-table ((,class (:foreground ,smilebasic9))))
    `(org-todo ((,class (:foreground ,smilebasic13 :weight bold))))
    `(org-upcoming-deadline ((,class (:foreground ,smilebasic12))))
    `(org-warning ((,class (:foreground ,smilebasic13 :weight bold))))
    `(font-latex-bold-face ((,class (:inherit bold))))
    `(font-latex-italic-face ((,class (:slant italic))))
    `(font-latex-string-face ((,class (:foreground ,smilebasic14))))
    `(font-latex-match-reference-keywords ((,class (:foreground ,smilebasic9))))
    `(font-latex-match-variable-keywords ((,class (:foreground ,smilebasic4))))
    `(ido-only-match ((,class (:foreground ,smilebasic8))))
    `(org-sexp-date ((,class (:foreground ,smilebasic7))))
    `(ido-first-match ((,class (:foreground ,smilebasic8 :weight bold))))
    `(ido-subdir ((,class (:foreground ,smilebasic9))))
    `(org-quote ((,class (:inherit org-block :slant italic))))
    `(org-verse ((,class (:inherit org-block :slant italic))))
    `(org-agenda-date-weekend ((,class (:foreground ,smilebasic9))))
    `(org-agenda-date-today ((,class (:foreground ,smilebasic8 :weight bold))))
    `(org-agenda-done ((,class (:foreground ,smilebasic14))))
    `(org-verbatim ((,class (:foreground ,smilebasic7))))
    `(highlight-numbers-number ((,class (:foreground ,smilebasic-numeric))))))

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
    (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'smilebasic)

;; Local Variables:
;; no-byte-compile: t
;; indent-tabs-mode: nil
;; End:

;;; smilebasic-theme.el ends here
