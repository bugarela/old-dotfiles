;; -*- mode: emacs-lisp; lexical-binding: t -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   dotspacemacs-distribution 'spacemacs
   dotspacemacs-configuration-layer-path '()
   dotspacemacs-configuration-layers
   '(
     ruby
     ruby
     ruby
     ruby
     ruby
     ruby
     nginx
     bibtex
     (c-c++ :variables
            c-c++-adopt-subprojects t
            c-c++-backend 'lsp-ccls
            c-c++-lsp-sem-highlight-method 'font-lock)
     (clojure :variables
              cider-eval-result-prefix "▶ ")
     ;; common-lisp
     csv
     erlang
     emacs-lisp
     (ess :variables
          ess-enable-smart-equals t)
     (go :variables
         go-backend 'lsp
         go-format-before-save t
         go-tab-width 4)
     graphviz
     haskell
     html
     javascript
     (latex :variables
            latex-enable-folding t
            latex-enable-auto-fill t)
     lsp
     (markdown :variables markdown-live-preview-engine 'vmd)
     (org :variables
          org-enable-github-support t
          org-enable-reveal-js-support t
          org-enable-org-journal-support t)
     (python :variables
             python-backend 'lsp
             python-sort-imports-on-save t
             python-fill-docstring-style 'django)
     racket
     (ruby :variables ruby-enable-enh-ruby-mode t ruby-version-manager 'rbenv ruby-test-runner 'rspec)
     (rust :variables
           rust-format-on-save t
           rust-backend 'lsp)
     scheme
     shell
     shell-scripts
     sql
     typescript
     ;; Assists
     (auto-completion :variables
                      company-quickhelp-delay 0.8
                      auto-completion-enable-help-tooltip t
                      auto-completion-enable-snippets-in-popup t
                      auto-completion-enable-sort-by-usage t
                      auto-completion-private-snippets-directory "~/.emacs.d/private/rogue/snippets")
     better-defaults
     colors
     dap
     epub
     finance
     git
     github
     imenu-list
     (ibuffer :variables ibuffer-group-buffers-by 'projects)
     pandoc
     pdf
     ;; prodigy
     (ranger :variables ranger-show-preview t)
     restclient
     ;; rogue
     (spell-checking :variables
                     spell-checking-enable-auto-dictionary t
                     spell-checking-enable-by-default nil)
     syntax-checking
     theming
     themes-megapack
     (treemacs :variables
               treemacs-follow-after-init nil
               treemacs-use-follow-mode nil)
     typography
     (version-control :variables
                      version-control-diff-tool 'git-gutter
                      version-control-global-margin t
                      version-control-diff-side 'left)
     (wakatime :variables
               wakatime-api-key  "d8a7dc5a-af97-404f-bbb9-c418375daed3"
               wakatime-cli-path "/usr/local/bin/wakatime"))
   dotspacemacs-additional-packages '(spaceline-all-the-icons)
   ;; dotspacemacs-excluded-packages '(vi-tilde-fringe ess-R-object-popup)
   dotspacemacs-delete-orphan-packages nil))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  (setq-default
   dotspacemacs-elpa-https t
   dotspacemacs-elpa-timeout 5
   dotspacemacs-check-for-update t
   dotspacemacs-editing-style 'vim
   dotspacemacs-verbose-loading nil
   dotspacemacs-startup-banner 'official
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   dotspacemacs-scratch-mode 'text-mode
   ;; dotspacemacs-themes '(Red-orange-pink doom-molokai spacemacs-light)
   dotspacemacs-mode-line-theme '(all-the-icons
                                  ;;:separator-scale 2
                                  :separator slant)
   dotspacemacs-colorize-cursor-according-to-state nil
   dotspacemacs-default-font '("Hack Nerd Font"
                               :size 15
                               :weight regular
                               :width normal
                               :powerline-scale 1.0)
   dotspacemacs-leader-key "SPC"
   dotspacemacs-emacs-command-key "SPC"
   dotspacemacs-emacs-leader-key "M-m"
   dotspacemacs-major-mode-leader-key ","
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   dotspacemacs-distinguish-gui-tab nil
   dotspacemacs-ex-command-key ":"
   dotspacemacs-remap-Y-to-y$ t
   dotspacemacs-default-layout-name "Default"
   dotspacemacs-display-default-layout nil
   dotspacemacs-auto-resume-layouts nil
   dotspacemacs-enable-paste-transient-state nil
   dotspacemacs-enable-paste-micro-state nil
   dotspacemacs-auto-save-file-location 'cache
   dotspacemacs-max-rollback-slots 5
   dotspacemacs-use-ido nil
   dotspacemacs-helm-resize nil
   dotspacemacs-helm-no-header t
   dotspacemacs-helm-position 'bottom
   dotspacemacs-which-key-delay 0.4
   dotspacemacs-which-key-position 'bottom
   dotspacemacs-loading-progress-bar t
   dotspacemacs-fullscreen-at-startup nil
   dotspacemacs-fullscreen-use-non-native nil
   dotspacemacs-maximized-at-startup nil
   dotspacemacs-active-transparency 90
   dotspacemacs-inactive-transparency 90
   dotspacemacs-mode-line-unicode-symbols t
   dotspacemacs-smooth-scrolling relative
   dotspacemacs-line-numbers '(:relative t :disabled-for-modes text-mode)
   dotspacemacs-smartparens-strict-mode nil
   dotspacemacs-highlight-delimiters 'all
   dotspacemacs-persistent-server nil
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   dotspacemacs-default-package-repository nil
   require-final-newline t
   mode-require-final-newline t
   indent-tabs-mode nil
   dotspacemacs-whitespace-cleanup nil))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."

  (setq org-bullets-bullet-list '("› "))
  )

;; ;; Directories
;; (defconst user-layer-dir (file-name-as-directory "~/.emacs.d/private/rogue"))
;; (defconst user-secrets-dir (file-name-as-directory (concat user-layer-dir "secrets")))

;; (defconst user-data-dir (file-name-as-directory (getenv "DATA_DIR")))
;; (defconst user-cloud-dir (file-name-as-directory (getenv "CLOUD_DIR")))
;; (defconst user-project-dir (file-name-as-directory (getenv "PROJECTS_DIR")))

;; ;; Derived directories
;; (defconst user-notes-dir (file-name-as-directory (concat user-data-dir "Notes")))
;; (defconst user-journal-dir (file-name-as-directory (concat user-notes-dir "journal")))
;; (defconst user-pdfs-dir (file-name-as-directory (concat user-notes-dir "pdfs")))

;; Separate custom stuff
;; (setq custom-file "~/.emacs-custom.el")
;; (load custom-file)

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place you code here."

  (setq user-full-name "Gabriela Moreira Mafra")
  (load-file "~/.emacs.d/private/local/tla-mode/tla-mode.el")
  (load-file "~/.emacs.d/private/local/stackoverflow.el")
  (load-file "~/.emacs.d/private/red-orange-pink-theme.el")
  (add-to-list 'load-path "~/.emacs.d/private")

  (spacemacs/declare-prefix "o" "own-menu")
  (spacemacs/set-leader-keys "od" 'xref-find-definitions-other-window)
  (spacemacs/set-leader-keys "os" 'projectile-find-implementation-or-test-other-window)
  (spacemacs/set-leader-keys "oy" '(lambda () (interactive) (kill-new (file-relative-name buffer-file-name (projectile-project-root)))))
  (spacemacs/set-leader-keys "on" 'display-line-numbers-mode)

  (require 'tla-mode)
  (use-package tla-mode :mode "\.tla$")
  (add-hook 'doc-view-mode-hook 'auto-revert-mode)
  (setq mouse-wheel-scroll-amount '(2))
  (setq mouse-wheel-progressive-speed nil)
  (require 'lsp-mode)
  (add-hook 'ruby-mode-hook 'lsp)
  (add-hook 'org-mode-hook 'org-bullets-mode)
  (setq create-lockfiles nil)

  (setq-default web-mode-markup-indent-offset 2
                web-mode-css-indent-offset 2
                web-mode-code-indent-offset 2
                css-indent-offset 2
                js2-basic-offset 2
                js-indent-level 2
                js2-strict-missing-semi-warning nil
                js2-missing-semi-one-line-override nil
                typescript-indent-level 2)

  ;; Open big files literally
  (defvar file-size-literal-threshold large-file-warning-threshold
    "Maximum size of a file above which it will get opened literally")

  (defadvice find-file-noselect (before open-large-files-literally)
    (when (file-exists-p filename)
      (let ((filesize (nth 7 (file-attributes filename))))
        (when (and (not rawfile)
                   (> filesize file-size-literal-threshold)
                   (abort-if-file-too-large filesize "open literally" filename))
          (setq rawfile t) ;; open file literally
          (setq nowarn t)  ;; get rid of the question whether to open a 
          large file))))

  (ad-activate 'find-file-noselect)

  (setq org-bullets-bullet-list '("■" "◆" "▲" "▶"))
)

;; Load PG if found locally
;; (when (f-exists? "~/.emacs.d/PG")
;;   (load "~/.emacs.d/PG/generic/proof-site")
;;   (add-hook 'coq-mode-hook #'solaire-mode))



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#0a0814" "#f2241f" "#67b11d" "#b1951d" "#4f97d7" "#a31db1" "#28def0" "#b2b2b2"])
 '(custom-enabled-themes (quote (red-orange-pink)))
 '(custom-safe-themes
   (quote
    ("57cf7f2a33e732d9100a6f21888599dc7c440c4108302c0fbff630d06524443f" "801a567c87755fe65d0484cb2bded31a4c5bb24fd1fe0ed11e6c02254017acb2" "4138944fbed88c047c9973f68908b36b4153646a045648a22083bd622d1e636d" "450f3382907de50be905ae8a242ecede05ea9b858a8ed3cc8d1fbdf2d57090af" "810277e07b212c4853e993ea2134540bc92cc412446ea7c4963144f74b2df6bf" "e8f09732139e626444b2a6ac52bb1063f8012da89bdf370cae750056ebe92b41" "adba9565964b1c9af66b0b5fac03f8b3b797c48c351a384e651c732a09f18ff0" "09f753dd75524c3806d64d2ba13fc5b265e0fba320ea4274d42c16e07df99312" "08bc737170e34127d0d90f7d1d4d456b58448bd6950bf4ccf8324812c7ecb7ac" "621595cbf6c622556432e881945dda779528e48bb57107b65d428e61a8bb7955" "a53b487f5b4f05693f9a33c498aff05fe5cb82437fb8d21f1b02da42778245f4" "fad9c3dbfd4a889499f6921f54f68de8857e6846a0398e89887dbe5f26b591c0" "76c5b2592c62f6b48923c00f97f74bcb7ddb741618283bdb2be35f3c0e1030e3" "2320be61491db160ea2a0fbc9d716a648c5aad774c1b03a4ffa3a72e7eac921a" "27f69fc9032dea7b222659aa6d9df3f6a545c4b6c8eee66d2367485e825e1fbf" "3aa1472da8ad8e757d9eacc089b9b0387059dabc64a2cea2f0f872259b07044b" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "69d5ed2fa5c19fd736a6f35ca7461dd4afab06a3b1cc96034a2e5fffeaa2121b" "35d135f5bd625c0b5119c7865078f7ba1560b25849e43ce059f8cad971111a75" "f7f079b4df94965c7c62e5741b90efdd3dc128c1f51c8f75bf9903e6f25362da" default)))
 '(evil-emacs-state-modes
   (quote
    (5x5-mode archive-mode bbdb-mode biblio-selection-mode blackbox-mode bookmark-bmenu-mode bookmark-edit-annotation-mode browse-kill-ring-mode bubbles-mode bzr-annotate-mode calc-mode cfw:calendar-mode completion-list-mode custom-theme-choose-mode delicious-search-mode desktop-menu-blist-mode desktop-menu-mode dun-mode dvc-bookmarks-mode dvc-diff-mode dvc-info-buffer-mode dvc-log-buffer-mode dvc-revlist-mode dvc-revlog-mode dvc-status-mode dvc-tips-mode ediff-meta-mode efs-mode Electric-buffer-menu-mode emms-browser-mode emms-mark-mode emms-metaplaylist-mode emms-playlist-mode ess-help-mode etags-select-mode fj-mode gc-issues-mode gdb-breakpoints-mode gdb-disassembly-mode gdb-frames-mode gdb-locals-mode gdb-memory-mode gdb-registers-mode gdb-threads-mode gnus-article-mode gnus-browse-mode gnus-group-mode gnus-server-mode gnus-summary-mode gomoku-mode google-maps-static-mode jde-javadoc-checker-report-mode magit-popup-mode magit-popup-sequence-mode magit-branch-manager-mode magit-commit-mode magit-key-mode magit-rebase-mode magit-wazzup-mode mh-folder-mode monky-mode mpuz-mode mu4e-main-mode mu4e-headers-mode mu4e-view-mode notmuch-hello-mode notmuch-search-mode notmuch-show-mode notmuch-tree-mode pdf-outline-buffer-mode pdf-view-mode proced-mode rcirc-mode rebase-mode recentf-dialog-mode reftex-select-bib-mode reftex-select-label-mode reftex-toc-mode sldb-mode slime-inspector-mode slime-thread-control-mode slime-xref-mode snake-mode solitaire-mode sr-buttons-mode sr-mode sr-tree-mode sr-virtual-mode tetris-mode tla-annotate-mode tla-archive-list-mode tla-bconfig-mode tla-bookmarks-mode tla-branch-list-mode tla-browse-mode tla-category-list-mode tla-changelog-mode tla-follow-symlinks-mode tla-inventory-file-mode tla-inventory-mode tla-lint-mode tla-logs-mode tla-revision-list-mode tla-revlog-mode tla-tree-lint-mode tla-version-list-mode twittering-mode urlview-mode vc-annotate-mode vc-dir-mode vc-git-log-view-mode vc-hg-log-view-mode vc-svn-log-view-mode vm-mode vm-summary-mode w3m-mode wab-compilation-mode xgit-annotate-mode xgit-changelog-mode xgit-diff-mode xgit-revlog-mode xhg-annotate-mode xhg-log-mode xhg-mode xhg-mq-mode xhg-mq-sub-mode xhg-status-extra-mode)))
 '(evil-want-Y-yank-to-eol t)
 '(fci-rule-color "#555556" t)
 '(helm-ff-lynx-style-map t)
 '(indent-tabs-mode nil)
 '(jdee-db-active-breakpoint-face-colors (cons "#1B2229" "#fd971f"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#1B2229" "#b6e63e"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#1B2229" "#525254"))
 '(large-file-warning-threshold 1000000000)
 '(objed-cursor-color "#e74c3c")
 '(org-agenda-files (quote ("~/org/cdp.org" "~/org/vacinas.org")))
 '(org-bullets-bullet-list (quote ("› ")))
 '(org-format-latex-options
   (quote
    (:foreground default :background default :scale 5.0 :html-foreground "Black" :html-background "Transparent" :html-scale 1.0 :matchers
                 ("begin" "$1" "$" "$$" "\\(" "\\["))))
 '(package-selected-packages
   (quote
    (smart-mode-line-powerline-theme smart-mode-line typescript-mode pyvenv orgit tablist htmlize anzu bind-key biblio biblio-core avy markdown-mode eval-sexp-fu cider parseedn clojure-mode anaconda-mode pythonic auctex dash-functional ess julia-mode iedit smartparens highlight evil undo-tree flycheck haskell-mode go-mode company flx request yasnippet multiple-cursors skewer-mode js2-mode simple-httpd magit-popup magit git-commit with-editor transient alert log4e org-category-capture projectile org-plus-contrib hydra lv rust-mode f helm helm-core async restclient inf-ruby powerline dash spaceline-all-the-icons Red-orange-pink-theme webkit-color-picker mo-git-blame enh-ruby-mode zenburn-theme zen-and-art-theme yapfify yaml-mode xterm-color ws-butler writegood-mode winum white-sand-theme which-key web-mode web-beautify wakatime-mode w volatile-highlights vmd-mode vi-tilde-fringe uuidgen use-package unicode-fonts unfill underwater-theme ujelly-theme typo twilight-theme twilight-bright-theme twilight-anti-bright-theme toxi-theme toml-mode tog toc-org tide tao-theme tangotango-theme tango-plus-theme tango-2-theme tagedit switch-window swiper sunny-day-theme sublime-themes subatomic256-theme subatomic-theme sql-indent spaceline spacegray-theme soothe-theme solarized-theme solaire-mode soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme smeargle slim-mode shell-pop seti-theme scss-mode sass-mode rvm ruby-tools ruby-test-mode rubocop rspec-mode robe reverse-theme restclient-helm restart-emacs rebecca-theme rbenv ranger rake rainbow-mode rainbow-identifiers rainbow-delimiters railscasts-theme racket-mode racer pytest pyenv-mode py-isort purple-haze-theme pug-mode protobuf-mode professional-theme pretty-mode powerthesaurus popwin poetry planet-theme pip-requirements phoenix-dark-pink-theme phoenix-dark-mono-theme persp-mode parinfer paradox pandoc-mode ox-reveal ox-pandoc ox-gfm organic-green-theme org-web-tools org-variable-pitch org-super-agenda org-projectile org-present org-pomodoro org-mime org-journal org-fragtog org-download org-cliplink org-bullets org-books org-bbq org-analyzer openwith open-junk-file omtose-phellack-theme oldlace-theme occidental-theme obtt obsidian-theme ob-restclient ob-http ob-async noctilux-theme nginx-mode neotree naquadah-theme mwim mustang-theme mustache multi-term move-text monokai-theme monochrome-theme molokai-theme moe-theme mmm-mode minitest minimap minimal-theme material-theme markdown-toc majapahit-theme magit-gitflow magit-gh-pulls madhat2r-theme macrostep lush-theme lorem-ipsum livid-mode live-py-mode linum-relative link-hint light-soap-theme levenshtein less-css-mode ledger-mode kubernetes json-mode js2-refactor js-doc jbeans-theme jazz-theme ir-black-theme iorg intero insert-shebang inkpot-theme indent-guide imenu-list ibuffer-projectile hy-mode hungry-delete hlint-refactor hl-todo hindent highlight-parentheses highlight-numbers highlight-indentation heroku-theme hemisu-theme helpful helm-themes helm-swoop helm-pydoc helm-projectile helm-mode-manager helm-make helm-hoogle helm-gitignore helm-flx helm-descbinds helm-css-scss helm-company helm-chronos helm-c-yasnippet helm-ag hc-zenburn-theme haskell-snippets gscholar-bibtex gruvbox-theme gruber-darker-theme graphviz-dot-mode grandshell-theme goto-line-preview gotham-theme google-translate golden-ratio go-guru go-eldoc gnuplot github-search github-clone github-browse-file gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe git-gutter-fringe+ gist gh-md geiser gandalf-theme fuzzy flyspell-correct-helm flycheck-rust flycheck-pos-tip flycheck-ledger flycheck-haskell flx-ido flatui-theme flatland-theme fish-mode fill-column-indicator farmhouse-theme fancy-battery eyebrowse expand-region exotica-theme exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu ess-smart-equals ess-R-data-view espresso-theme eshell-z eshell-prompt-extras esh-help eros erlang eredis emojify emmet-mode elml elisp-slime-nav dumb-jump dracula-theme doom-themes dockerfile-mode django-theme disaster direnv dired-subtree diminish diff-hl define-word darktooth-theme darkokai-theme darkmine-theme darkburn-theme dakrone-theme cython-mode cyberpunk-theme csv-mode cricbuzz company-web company-tern company-statistics company-shell company-restclient company-quickhelp company-go company-ghci company-ghc company-cabal company-c-headers company-box company-auctex company-anaconda column-enforce-mode colormaps color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized color-identifiers-mode coffee-mode cmm-mode cmake-mode clues-theme clojure-snippets clj-refactor clean-aindent-mode clang-format cider-eval-sexp-fu chruby cherry-blossom-theme cargo calibre busybee-theme bundler bubbleberry-theme bmp birds-of-paradise-plus-theme beacon badwolf-theme auto-yasnippet auto-highlight-symbol auto-dictionary auto-compile auctex-latexmk apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme all-the-icons alect-themes aggressive-indent afternoon-theme adaptive-wrap ace-window ace-link ace-jump-helm-line ac-ispell)))
 '(pdf-view-midnight-colors (cons "#d6d6d4" "#1c1e1f"))
 '(projectile-globally-ignored-directories
   (quote
    (".idea" ".ensime_cache" ".eunit" ".git" ".hg" ".fslckout" "_FOSSIL_" ".bzr" "_darcs" ".tox" ".svn" ".stack-work" "vendor" "vendor/**/*")))
 '(projectile-globally-ignored-file-suffixes (quote ("gem")))
 '(projectile-globally-ignored-files (quote ("TAGS" "vendor/cache/**/*" "**/*.gem")))
 '(rubocop-prefer-system-executable t)
 '(rustic-ansi-faces
   ["#1c1e1f" "#e74c3c" "#b6e63e" "#e2c770" "#268bd2" "#fb2874" "#66d9ef" "#d6d6d4"])
 '(spacemacs-theme-comment-bg nil)
 '(vc-annotate-background "#1c1e1f")
 '(vc-annotate-color-map
   (list
    (cons 20 "#b6e63e")
    (cons 40 "#c4db4e")
    (cons 60 "#d3d15f")
    (cons 80 "#e2c770")
    (cons 100 "#ebb755")
    (cons 120 "#f3a73a")
    (cons 140 "#fd971f")
    (cons 160 "#fc723b")
    (cons 180 "#fb4d57")
    (cons 200 "#fb2874")
    (cons 220 "#f43461")
    (cons 240 "#ed404e")
    (cons 260 "#e74c3c")
    (cons 280 "#c14d41")
    (cons 300 "#9c4f48")
    (cons 320 "#77504e")
    (cons 340 "#555556")
    (cons 360 "#555556")))
 '(vc-annotate-very-old-color nil)
 '(wakatime-python-bin nil)
 '(web-mode-code-indent-offset 2))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(chronos-notification ((t (:foreground "#8a9899" :inherit variable-pitch :height 8.0 :slant italic))))
 '(chronos-notification-clock ((t (:foreground "#505a6f" :height 5.0 :weight bold :inherit variable-pitch))))
 '(company-tootip-annotation ((t (:foreground "#8FBCBB"))))
 '(coq-cheat-face ((t (:inherit font-lock-warning-face))))
 '(coq-context-qualifier-face ((t (:inherit font-lock-keyword-face))))
 '(coq-question-mark-face ((t (:inherit font-lock-warning-face))))
 '(coq-solve-tactics-face ((t (:inherit font-lock-function-name-face))))
 '(coq-symbol-binder-face ((t (:inherit font-lock-type-face))))
 '(coq-symbol-face ((t (:inherit font-lock-builtin-face))))
 '(dired-subtree-depth-1-face ((t (:background nil))))
 '(dired-subtree-depth-2-face ((t (:background nil))))
 '(dired-subtree-depth-3-face ((t (:background nil))))
 '(dired-subtree-depth-4-face ((t (:background nil))))
 '(dired-subtree-depth-5-face ((t (:background nil))))
 '(dired-subtree-depth-6-face ((t (:background nil))))
 '(elfeed-search-feed-face ((t (:foreground "#81A1C1"))))
 '(eval-sexp-fu-flash ((t (:background "#5E81AC" :foreground "#ECEFF4"))))
 '(eval-sexp-fu-flash-error ((t (:background "#81A1C1" :foreground "#ECEFF4"))))
 '(fixed-pitch ((t (:family "Iosevka"))))
 '(flycheck-duplicate ((t (:background nil :foreground nil :underline (quote (:style line)) "#8a9899"))))
 '(flycheck-error ((((class color) (min-colors 89)) (:background "#cc0000" :foreground "#ffffff" :bold t))))
 '(flycheck-incorrect ((t (:background nil :foreground nil :underline (quote (:style line)) "#BF616A"))))
 '(flycheck-info ((t (:background nil :foreground nil :underline (quote (:style line)) "#5E81AC"))))
 '(flycheck-warning ((t (:background nil))))
 '(font-latex-sectioning-0-face ((t (:foreground "#8FBCBB" :height 1.2))))
 '(font-latex-sectioning-1-face ((t (:foreground "#8FBCBB" :height 1.1))))
 '(font-latex-sectioning-2-face ((t (:foreground "#8FBCBB" :height 1.1))))
 '(font-latex-sectioning-3-face ((t (:foreground "#8FBCBB" :height 1.0))))
 '(font-latex-sectioning-4-face ((t (:foreground "#8FBCBB" :height 1.0))))
 '(font-latex-sectioning-5-face ((t (:foreground "#8FBCBB" :height 1.0))))
 '(font-latex-verbatim-face ((t (:foreground "#8FBCBB"))))
 '(git-gutter-fr:added ((t (:foreground "#A3BE8C"))))
 '(git-gutter-fr:modified ((t (:foreground "#5E81AC"))))
 '(global-spacemacs-leader-override-mode t)
 '(hackernews-comment-count ((t (:foreground "#A3BE8C"))))
 '(hackernews-link ((t (:foreground "#81A1C1"))))
 '(helm-M-x-key ((t (:foreground "#8FBCBB"))))
 '(helm-buffer-file ((t (:background nil))))
 '(helm-ff-dotted-symlink-directory ((t (:background nil))))
 '(highlight-numbers-number ((t (:foreground "#B48EAD"))))
 '(js2-error ((((class color) (min-colors 89)) (:foreground "#cc0000" :underline t :bold t))))
 '(js2-function-call ((t (:foreground nil :inherit font-lock-function-name-face))))
 '(js2-instance-member ((t (:foreground nil :inherit font-lock-variable-face))))
 '(js2-jsdoc-tag ((t (:foreground nil :inherit font-lock-comment-face))))
 '(js2-jsdoc-type ((t (:foreground nil :inherit font-lock-type-face))))
 '(js2-object-property ((t (:foreground nil :inherit font-lock-type-face))))
 '(js2-object-property-access ((t (:foreground nil :inherit font-lock-type-face))))
 '(lsp-face-highlight-read ((t (:background nil :foreground nil :underline "#5E81AC"))))
 '(lsp-face-highlight-textual ((t (:background nil :foreground nil :underline "#5E81AC"))))
 '(lsp-face-highlight-write ((t (:background nil :foreground nil :underline "#5E81AC"))))
 '(magit-branch-current ((((class color) (min-colors 89)) (:foreground "#ffffff" :background "#ff8700" :bold t :underline nil))))
 '(magit-branch-local ((((class color) (min-colors 89)) (:foreground "#008700" :background "#d7ff87" :bold t :underline t))))
 '(magit-branch-remote ((((class color) (min-colors 89)) (:foreground "#005f87" :background "#afd7ff" :bold t :underline t))))
 '(magit-diff-added ((((class color) (min-colors 89)) (:foreground "#00af00" :background nil :bold t))))
 '(magit-diff-added-highlight ((((class color) (min-colors 89)) (:foreground "#00af00" :bold t :inherit (magit-section-highlight)))))
 '(magit-diff-base-highlight ((t (:inherit magit-section-highlight :background "medium sea green" :foreground "black" :weight bold))))
 '(magit-diff-file-heading-selection ((((class color) (min-colors 89)) (:foreground "#ffffff" :background "#626262" :bold t))))
 '(magit-diff-hunk-heading ((((class color) (min-colors 89)) (:foreground "#b2b2b2" :background "#eeeeee" :bold t))))
 '(magit-diff-hunk-heading-highlight ((((class color) (min-colors 89)) (:foreground "#ffffff" :background "#9e9e9e"))))
 '(magit-diff-lines-heading ((((class color) (min-colors 89)) (:foreground "#5f5f5f" :background "#ff4b4b"))))
 '(magit-diff-removed ((((class color) (min-colors 89)) (:foreground "#cc0000" :background nil :bold t))))
 '(magit-diff-removed-highlight ((((class color) (min-colors 89)) (:foreground "#cc0000" :bold t :inherit (magit-section-highlight)))))
 '(magit-header-line ((((class color) (min-colors 89)) (:foreground "#ff8700"))))
 '(magit-log-date ((((class color) (min-colors 89)) (:foreground "#9e9e9e" :background "#fdfde7"))))
 '(magit-section-heading-selection ((((class color) (min-colors 89)) (:foreground "#3a3a3a" :background "#afd7ff"))))
 '(markdown-blockquote-face ((((class color) (min-colors 89)) (:foreground "#00af00" :background "#d7ff87" :italic t))))
 '(markdown-bold-face ((((class color) (min-colors 89)) (:foreground "#5f5f5f" :bold t))))
 '(markdown-code-face ((t (:inherit org-code :foreground nil))))
 '(markdown-header-delimiter-face ((((class color) (min-colors 89)) (:foreground "#ff5d17" :bold t))))
 '(markdown-header-face ((((class color) (min-colors 89)) (:foreground "#ff8700" :bold t))))
 '(markdown-header-face-1 ((((class color) (min-colors 89)) (:foreground "#ff8700" :bold t))))
 '(markdown-header-face-2 ((((class color) (min-colors 89)) (:foreground "#ff8700" :bold t))))
 '(markdown-header-face-3 ((((class color) (min-colors 89)) (:foreground "#ff8700" :bold t))))
 '(markdown-header-face-4 ((((class color) (min-colors 89)) (:foreground "#ff8700" :bold t))))
 '(markdown-header-face-5 ((((class color) (min-colors 89)) (:foreground "#ff8700" :bold t))))
 '(markdown-header-face-6 ((((class color) (min-colors 89)) (:foreground "#ff8700" :bold t))))
 '(markdown-inline-code-face ((((class color) (min-colors 89)) (:foreground "#005f87" :background "#d7d7ff"))))
 '(markdown-italic-face ((((class color) (min-colors 89)) (:foreground "#5f5f5f" :italic t :underline "#5f5f5f"))))
 '(markdown-link-face ((((class color) (min-colors 89)) (:foreground "#ff7bbb" :bold t :underline "#ff7bbb"))))
 '(markdown-list-face ((((class color) (min-colors 89)) (:foreground "#ff8700" :background "#fdfde7" :bold t))))
 '(markdown-metadata-key-face ((t (:inherit font-lock-keyword-face :foreground nil))))
 '(markdown-pre-face ((((class color) (min-colors 89)) (:foreground "#1f5bff"))))
 '(markdown-url-face ((((class color) (min-colors 89)) (:foreground "#ff1f8b" :underline "#ff1f8b"))))
 '(match ((t (:foreground nil :background nil :underline "#BF616A"))))
 '(minimap-active-region-background ((t (:background "#434C5E"))))
 '(mmm-default-submode-face ((((class color) (min-colors 89)) (:background nil))))
 '(mu4e-header-highlight-face ((t (:underline nil :background "#242934"))))
 '(mu4e-header-key-face ((t (:foreground "#7b87a0"))))
 '(mu4e-header-value-face ((t (:foreground "#81A1C1"))))
 '(neo-root-dir-face ((((class color) (min-colors 89)) (:foreground "#ff4ea3"))))
 '(org-agenda-current-time ((t (:foreground "#81A1C1"))))
 '(org-agenda-files (quote ("~/org/cdp.org" "~/org/vacinas.org")))
 '(org-column ((((class color) (min-colors 89)) (:background "#ffffaf" :foreground "#767676"))))
 '(org-column-title ((((class color) (min-colors 89)) (:background "#afd7ff" :foreground "#5f5f5f" :underline t :weight bold))))
 '(org-default-notes-file "notes.org")
 '(org-document-info ((((class color) (min-colors 89)) (:foreground "#5fafd7" :background "#fdfde7" :weight bold))))
 '(org-document-title ((((class color) (min-colors 89)) (:foreground "#005f87" :background "#fdfde7" :weight bold))))
 '(org-formula ((((class color) (min-colors 89)) (:foreground "#b218b2"))))
 '(org-headline-done ((((class color) (min-colors 89)) (:foreground "#a1db00"))))
 '(org-indent ((t (:inherit org-hide))))
 '(org-list-dt ((t (:foreground "#88C0D0"))))
 '(org-scheduled-previously ((((class color) (min-colors 89)) (:foreground "#ef2929"))))
 '(org-table ((((class color) (min-colors 89)) (:background "#ffff87" :foreground "#767676"))))
 '(org-tag ((((class color) (min-colors 89)) (:background "#9e9e9e" :foreground "#ffffff" :bold t :weight bold))))
 '(org-time-grid ((((class color) (min-colors 89)) (:foreground "#b2b2b2"))))
 '(org-upcoming-deadline ((((class color) (min-colors 89)) (:foreground "#a40000"))))
 '(org-variable-pitch-face ((t (:height 0.9))))
 '(outline-1 ((((class color) (min-colors 89)) (:bold t :foreground "#5fafd7"))))
 '(outline-2 ((((class color) (min-colors 89)) (:bold t :foreground "#5fd700"))))
 '(outline-3 ((((class color) (min-colors 89)) (:bold t :foreground "#ff8700"))))
 '(outline-4 ((((class color) (min-colors 89)) (:bold t :foreground "#00d7af"))))
 '(outline-5 ((((class color) (min-colors 89)) (:bold t :foreground "#cc0000"))))
 '(outline-6 ((((class color) (min-colors 89)) (:bold t :foreground "#b218b2"))))
 '(outline-7 ((((class color) (min-colors 89)) (:bold t :foreground "#ff4ea3"))))
 '(outline-8 ((((class color) (min-colors 89)) (:bold t :foreground "#ffd700"))))
 '(proof-tacticals-name-face ((t (:inherit font-lock-variable-face))))
 '(proof-tactics-name-face ((t (:inherit font-lock-constant-face))))
 '(rainbow-delimiters-depth-9-face ((((class color) (min-colors 89)) (:bold t :foreground "#5f5f5f"))))
 '(variable-pitch ((t (:family "Source Sans Pro" :height 1.1)))))
