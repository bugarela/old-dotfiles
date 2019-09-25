(deftheme junio
  "Created 2019-09-24.")

(custom-theme-set-faces
 'junio
 '(cursor ((t (:background "#DF8A76" :foreground "black"))))
 '(hl-line ((t (:background "#000000"))))
 '(mode-line-inactive ((t (:box nil :foreground "#555555" :background "#000000"))))
 '(mode-line ((t (:box nil :bold t :foreground "#A1BAA1" :background "#1A1A1A"))))
 '(fringe ((t (:background "#120312"))))
 '(region ((t (:background "#44689A" :foreground "black"))))
 '(minibuffer-prompt ((default (:foreground "#C5C5B8"))))
 '(font-lock-builtin-face ((t (:foreground "#8fbfdc"))))
 '(font-lock-constant-face ((t (:foreground "#6F8FCC"))))
 '(font-lock-comment-face ((t (:foreground "#637579"))))
 '(font-lock-function-name-face ((t (:foreground "#8AAFFA"))))
 '(font-lock-keyword-face ((t (:foreground "#FFA070"))))
 '(font-lock-string-face ((t (:foreground "#B0738E"))))
 '(font-lock-variable-name-face ((t (:foreground "#A197BF"))))
 '(font-lock-type-face ((t (:foreground "#EF5C5F"))))
 '(font-lock-warning-face ((t (:foreground "#EE0000" :background "#BCBCBC" :bold t))))
 '(powerline-active1 ((t (:background "#E6DB74" :foreground "#120312"))))
 '(default ((t (:background "#120312" :foreground "#C5C5B8")))))

(provide-theme 'junio)
