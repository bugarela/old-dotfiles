(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   dotspacemacs-distribution 'spacemacs
   dotspacemacs-configuration-layer-path '()
   dotspacemacs-configuration-layers
   '(
     yaml
     graphviz
     haskell
     (c-c++ :variables c-c++-enable-clang-support t c-c++-enable-google-style t)
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
          org-enable-org-journal-support t
          org-enable-trello-support t
          org-projectile-file "~/org/TODOs.org"
          org-agenda-files '("~/org/"))
     (python :variables
             python-backend 'lsp
             python-sort-imports-on-save t
             python-fill-docstring-style 'django)
     racket
     (ruby :variables
           ruby-enable-enh-ruby-mode nil
           ruby-version-manager 'chruby
           ruby-test-runner 'rspec
           ruby-backend 'robe)
     (rust :variables
           rust-format-on-save t
           rust-backend 'lsp)
     scheme
     shell
     shell-scripts
     sql
     typescript
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
     (ranger :variables ranger-show-preview t)
     restclient
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
     google-calendar
     wakatime
     spotify
     )
   dotspacemacs-additional-packages '(org-gcal calfw-org helm-bibtex org-roam org-roam-server org-roam-bibtex org-ref org-noter kaolin-themes org-bullets)
   dotspacemacs-excluded-packages '(org-superstar)
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
   dotspacemacs-themes '(majapahit-light kaolin-ocean)
   dotspacemacs-mode-line-theme '(all-the-icons
                                  :separator arrow)
   dotspacemacs-colorize-cursor-according-to-state nil
   dotspacemacs-default-font '("Iosevka Fixed SS12"
                               :size 14
                               :weight regular
                               :width normal)
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
   dotspacemacs-enable-paste-transient-state t
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
   dotspacemacs-smooth-scrolling t
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
  )

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
  (load-file "~/.emacs.d/private/local/tokens.el")
  (load-file "~/.emacs.d/private/local/literature.el")
  (add-to-list 'load-path "~/.emacs.d/private")

  (add-hook 'doc-view-mode-hook 'auto-revert-mode)
  (global-auto-revert-mode t)

  (setq mouse-wheel-scroll-amount '(2))
  (setq mouse-wheel-progressive-speed nil)

  (require 'lsp-mode)

  (setq create-lockfiles nil)
  (setq make-backup-files nil)
  (setq backup-directory-alist
        `((".*" . ,temporary-file-directory)))
  (setq auto-save-file-name-transforms
        `((".*" ,temporary-file-directory t)))

  (setq save-place-file "~/.emacs.d/saveplace")
  (setq-default save-place t)
  (require 'saveplace)
  (setq package-check-signature nil)

  (server-start)

(require 'tla-mode)
(use-package tla-mode :mode "\.tla$")

(require 'org-tempo)
(setq org-bullets-bullet-list '("› "))
(add-hook 'org-mode-hook 'org-bullets-mode)
(add-to-list 'auto-mode-alist '("\\.trello$" . org-mode))
(add-hook 'org-mode-hook
          (lambda ()
            (let ((filename (buffer-file-name (current-buffer))))
              (when (and filename (string= "trello" (file-name-extension filename)))
                (org-trello-mode)))))
(use-package org-gcal :ensure t)
(setq org-roam-directory "~/org-roam")

(setq flycheck-elixir-credo-strict t
      elixir-enable-compilation-checking t) ;; slow

(setq flycheck-gcc-language-standard "c++17"
      c-basic-offset 4)

(setq-default web-mode-markup-indent-offset 2
              web-mode-css-indent-offset 2
              web-mode-code-indent-offset 2
              css-indent-offset 2
              js2-basic-offset 2
              js-indent-level 2
              js2-strict-missing-semi-warning nil
              js2-missing-semi-one-line-override nil
              typescript-indent-level 2)

(defun x11-yank-image-at-point-as-image ()
  "Yank the image at point to the X11 clipboard as image/png."
  (interactive)
  (let ((image (get-text-property (text-property-not-all (point-min) (point-max) 'display nil) 'display)))
    (if (eq (car image) 'image)
        (let ((data (plist-get (cdr image) ':data))
              (file (plist-get (cdr image) ':file)))
          (cond (data
                 (with-temp-buffer
                   (insert data)
                   (call-shell-region
                    (point-min) (point-max)
                    "xclip -i -selection clipboard -t image/png")))
                (file
                 (if (file-exists-p file)
                     (start-process
                      "xclip-proc" nil "xclip"
                      "-i" "-selection" "clipboard" "-t" "image/png"
                      "-quiet" (file-truename file))))
                (t
                 (message "The image seems to be malformed."))))
      (message "Point is not at an image."))))

(setq vc-follow-symlinks t)
(setq remote-file-name-inhibit-cache nil)
(setq vc-ignore-dir-regexp
      (format "%s\\|%s"
              vc-ignore-dir-regexp
              tramp-file-name-regexp))

(setq tramp-verbose 7)
(customize-set-variable
 'tramp-ssh-controlmaster-options
 (concat
  "-o ControlMaster=auto -o ControlPath=/tmp/%%r-%%p -o ControlPersist=yes"))

(defadvice projectile-project-root (around ignore-remote first activate)
  (unless (file-remote-p default-directory) ad-do-it))

(scroll-bar-mode -1)
(setq dired-recursive-copies 'always)(setq dired-recursive-copies 'always)

(defadvice server-visit-files (before parse-numbers-in-lines (files proc &optional nowait) activate)
  "Open file with emacsclient with cursors positioned on requested line.
   Most of console-based utilities prints filename in format
   'filename:linenumber'.  So you may wish to open filename in that format.
   Just call:
     emacsclient filename:linenumber
   and file 'filename' will be opened and cursor set on line 'linenumber'"
  (ad-set-arg 0
              (mapcar (lambda (fn)
                        (let ((name (car fn)))
                          (if (string-match "^\\(.*?\\):\\([0-9]+\\)\\(?::\\([0-9]+\\)\\)?$" name)
                              (cons
                               (match-string 1 name)
                               (cons (string-to-number (match-string 2 name))
                                     (string-to-number (or (match-string 3 name) ""))))
                            fn))) files)))

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

(spacemacs/declare-prefix "o" "own-menu")
(spacemacs/set-leader-keys "od" 'xref-find-definitions-other-window)
(spacemacs/set-leader-keys "os" 'projectile-find-implementation-or-test-other-window)
(spacemacs/set-leader-keys "oy" '(lambda () (interactive) (kill-new (file-relative-name buffer-file-name (projectile-project-root)))))
(spacemacs/set-leader-keys "on" 'display-line-numbers-mode)

(spacemacs/declare-prefix "or" "org-roam")
(spacemacs/set-leader-keys
  "orr" 'org-roam
  "ord" 'org-roam-dailies-today
  "orf" 'org-roam-find-file
  "orb" 'org-roam-switch-to-buffer
  "ori" 'org-roam-insert
  "org" 'org-roam-graph))
