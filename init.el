;;; init.el --- My init.el  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

;;; 
;;; パッケージ管理に関する設定
;;; 


(eval-and-compile
  (when (or load-file-name byte-compile-current-file)
    (setq user-emacs-directory
          (expand-file-name
           (file-name-directory (or load-file-name byte-compile-current-file))))))

(eval-and-compile
  (customize-set-variable
   'package-archives '(("gnu"   . "https://elpa.gnu.org/packages/")
                       ("melpa" . "https://melpa.org/packages/")
                       ("org"   . "https://orgmode.org/elpa/")))
  (package-initialize)
  (unless (package-installed-p 'leaf)
    (package-refresh-contents)
    (package-install 'leaf))

  (leaf leaf-keywords
    :ensure t
    :init
    (leaf hydra :ensure t)
    (leaf blackout :ensure t)

    :config
    (leaf-keywords-init)))

(leaf leaf
  :config
  (leaf leaf-convert :ensure t)
  (leaf leaf-tree
    :ensure t
    :custom ((imenu-list-size . 30)
             (imenu-list-position . 'left))))

(leaf macrostep
  :ensure t
  :bind (("C-c e" . macrostep-expand)))

(leaf cus-edit
  :doc "tools for customizing Emacs and Lisp packages"
  :tag "builtin" "faces" "help"
  :custom `((custom-file . ,(locate-user-emacs-file "custom.el"))))


;;; 
;;; 操作に関する設定
;;; 

;; macOS 用の設定
(when (eq system-type 'darwin)
  (defvar mac-command-modifier 'control "macOS command modifier")
  (defvar mac-option-modifier 'meta "macOS option modifier")

  ;; コマンドキーを Ctrl キーにする
  (setq mac-command-modifier 'control)

  ;; オプションキーを Meta キーにする
  (setq mac-option-modifier 'meta))

;; キーバインドの設定
;; KINESIS キーボードと Dvorak 配列に特化した設定のため、真似しない方がいいかもしれない
(define-key global-map (kbd "C-q") 'Control-X-prefix)
(define-key global-map (kbd "C-j") 'mode-specific-command-prefix)
(define-key global-map (kbd "C-q C-o") 'save-buffer)
(define-key global-map (kbd "C-q C-j") 'save-buffers-kill-emacs)
(define-key global-map (kbd "C-q C-a") 'write-file)
(define-key global-map (kbd "C-l") 'set-mark-command)
(define-key global-map (kbd "C-z") 'kill-region)
(define-key global-map (kbd "C-u") 'forward-char)
(define-key global-map (kbd "C-x") 'backward-char)
(define-key global-map (kbd "C-q x") 'switch-to-buffer)
(define-key global-map (kbd "C-q C-u") 'find-file)
(define-key global-map (kbd "C-r") 'isearch-backward)
(define-key global-map (kbd "C-p") 'other-window)
(define-key global-map (kbd "C-o") 'split-window-horizontally)
(define-key global-map (kbd "M-u") 'forward-word)
(define-key global-map (kbd "M-x") 'backward-word)
(define-key global-map (kbd "M-q") 'execute-extended-command)
(define-key global-map (kbd "C-j C-l") 'comment-region)
(define-key global-map (kbd "C-j C-r") 'uncomment-region)
(define-key global-map (kbd "M-p") 'previous-buffer)
(define-key global-map (kbd "M-k") 'next-buffer)
(define-key global-map (kbd "C-j t j") 'compile)
(define-key global-map (kbd "C-q C-f") 'magit-status)

;; yes-or-no を y-or-n で応えるようにする
(fset 'yes-or-no-p 'y-or-n-p)

;; 行の先頭で C-k を一回押すだけで行全体を消去する
(setq kill-whole-line t)

;; 最後のカーソル位置を記録
(save-place-mode t) 



;;; 
;;; 外観に関する設定
;;; 

;; フレームの設定
(setq default-frame-alist
      (append (list
               ;; サイズ・位置
               '(width . 200)           ; 横幅(文字数)
               '(height . 65)           ; 高さ(行数)
               '(top . 50)              ; フレーム左上角 y 座標
               '(left . 2200)            ; フレーム左上角 x 座標
               )
              default-frame-alist))

;; メニューバーとツールバーを表示しない
(menu-bar-mode 0)
(tool-bar-mode 0)

;; テーマ（doom-dark+）の適用
(leaf doom-themes
  :doc "An opinionated pack of modern color-themes."
  :req "emacs-25.1" "cl-lib-0.5"
  :tag "faces" "themes" "emacs>=25.1"
  :url "https://github.com/doomemacs/themes"
  :added "2025-02-27"
  :emacs>= 25.1
  :ensure t
  :config
  (load-theme 'doom-dark+ t)
  (set-frame-parameter nil 'alpha 92))

(leaf doom-modeline
  :ensure t
  :hook (after-init-hook . doom-modeline-mode)
  :custom
  ((doom-modeline-height . 1)
   (doom-modeline-bar-width . 3)
   (doom-modeline-buffer-file-name-style . 'truncate-with-project)
   (doom-modeline-icon . t)
   (doom-modeline-major-mode-icon . t)
   (doom-modeline-minor-modes . t)
   (doom-modeline-enable-word-count . t)
   (doom-modeline-buffer-modification-icon . t)
   (doom-modeline-buffer-state-icon . t)
   (doom-modeline-buffer-encoding . t)
   (doom-modeline-indent-info . t)
   (doom-modeline-checker-simple-format . t)
   (doom-modeline-vcs-max-length . 12)
   (doom-modeline-persp-name . t)
   (doom-modeline-lsp . t)
   (doom-modeline-github . t)
   (doom-modeline-github-interval . 30)
   (doom-modeline-env-version . t)
   (doom-modeline-env-enable-python . t)
   (doom-modeline-env-enable-ruby . t)
   (doom-modeline-env-enable-perl . t)
   (doom-modeline-env-enable-go . t)
   (doom-modeline-env-enable-elixir . t)
   (doom-modeline-env-enable-rust . t)
   (doom-modeline-env-enable-csharp . t)
   (doom-modeline-env-enable-java . t)
   (doom-modeline-env-enable-haskell . t)
   (doom-modeline-env-enable-scala . t)
   (doom-modeline-env-enable-r . t)
   (doom-modeline-env-enable-julia . t)
   (doom-modeline-env-enable-php . t)
   (doom-modeline-env-enable-lua . t)
   (doom-modeline-env-enable-shell . t)
   (doom-modeline-env-enable-swift . t)
   (doom-modeline-env-enable-perl . t)
   (doom-modeline-env-enable-ruby . t)
   (doom-modeline-env-enable-elixir . t)
   (doom-modeline-env-enable-rust . t)
   (doom-modeline-env-enable-csharp . t)
   (doom-modeline-env-enable-java)))

;; nerd-icons
(leaf nerd-icons
  :doc "Emacs Nerd Font Icons Library."
  :req "emacs-24.3"
  :tag "lisp" "emacs>=24.3"
  :url "https://github.com/rainstormstudio/nerd-icons.el"
  :added "2025-02-28"
  :emacs>= 24.3
  :ensure t)

;; all-the-icons
(leaf all-the-icons
  :ensure t
  :after doom-modeline
  :custom (all-the-icons-scale-factor . 0.9)
  :config
  (unless (member "all-the-icons" (font-family-list))
    (all-the-icons-install-fonts t)))

;; バッファを切り替えたときに一瞬カーソルがハイライトされる
(leaf beacon
  :ensure t
  :global-minor-mode t)

;; ヤンクした内容を一瞬ハイライトして、追加部分をわかりやすくしてくれる
(leaf volatile-highlights
  :ensure t
  :global-minor-mode t)

;; フォントの設定
(set-frame-font "Bizin Gothic 20")

;; フォントサイズ変更の設定
(global-set-key [(control +)] (lambda () (interactive) (text-scale-increase 1)))
(global-set-key [(control -)] (lambda () (interactive) (text-scale-decrease 1)))
(global-set-key [(control ?0)] (lambda () (interactive) (text-scale-increase 0)))

;; scratch の初期メッセージを表示しない
(setq initial-scratch-message "")

;; 起動時のメッセージを表示しない
(setq inhibit-startup-message t)

;; タイトルバーにファイル名をフルパスで表示する
(setq frame-title-format (format "emacs@%s : %%f" (system-name)))

;; 行番号の表示
(global-display-line-numbers-mode t) ;; 左側に行番号を表示する
(global-hl-line-mode t) ;; 現在行を強調

;; 画像ファイルを表示する
(auto-image-file-mode t)


;;; 
;;; その他の設定
;;; 

;; バックアップとオートセーブファイルを~/.emacs.d/backups/へ集める
(add-to-list 'backup-directory-alist
(cons "." "~/.emacs.d/backups/"))
(setq auto-save-file-name-transforms
`((".*" ,(expand-file-name "~/.emacs.d/backups/") t)))

;; autorevert
(global-auto-revert-mode t)

;; zsh
(defun toggle-zsh-window ()
  (interactive)
  (if (get-buffer-window "*terminal*")
      (progn
        (switch-to-buffer (other-buffer))
        (delete-window (get-buffer-window "*terminal*")))
    (progn
      (split-window-below)
      (other-window 1)
      (term "/bin/zsh")
      (rename-buffer "*terminal*"))))
(global-set-key (kbd "C-'") 'toggle-zsh-window)
(add-hook 'term-mode-hook
          (lambda ()
            (define-key global-map (kbd "C-'") 'toggle-zsh-window)))

;; 自動補完（company）
(leaf company
  :doc "Modular text completion framework"
  :req "emacs-24.3"
  :tag "matching" "convenience" "abbrev" "emacs>=24.3"
  :url "http://company-mode.github.io/"
  :emacs>= 24.3
  :ensure t
  :leaf-defer nil
  :bind ((company-active-map
          ("M-n" . nil)
          ("M-p" . nil)
          ("C-s" . company-filter-candidates)
          ("C-n" . company-select-next)
          ("C-p" . company-select-previous)
          ("C-f" . company-complete-selection))
         (company-search-map
          ("C-n" . company-select-next)
          ("C-p" . company-select-previous)))
  :custom ((company-idle-delay . 0)
           (company-minimum-prefix-length . 1)
           (company-transformers . '(company-sort-by-occurrence)))
  :global-minor-mode global-company-mode)

;; (with-eval-after-load 'company
;;   ;; disable inline previews
;;   (delq 'company-preview-if-just-one-frontend company-frontends))

;; companyの起動時に出るboxの設定
(leaf company-box
  :ensure t
  :after (company all-the-icons)
  :hook ((company-mode-hook . company-box-mode))
  :custom
  (company-box-icons-alist . 'company-box-icons-all-the-icons)
  (company-box-doc-enable . nil))

;; Undohist
(leaf undohist
  :defvar undohist-initialize
  :ensure t
  :init
  (let ((custom--inhibit-theme-enable nil))
    (unless (memq 'use-package custom-known-themes)
      (deftheme use-package)
      (enable-theme 'use-package)
      (setq custom-enabled-themes (remq 'use-package custom-enabled-themes)))
    (custom-theme-set-variables 'use-package
				'(undohist-ignored-files
				  `(,(rx "/.git/COMMIT_EDITMSG" eot))
				  nil nil "Customized with use-package undohist")))
  :require t
  :config
  (undohist-initialize))

;; magit
(leaf magit
  :ensure t
  :bind
  (("C-q C-f" . magit-status)))

;; Git Gutter
(leaf git-gutter
  :ensure t
  :global-minor-mode global-git-gutter-mode
  :custom
  ((git-gutter:added-sign . "+")
   (git-gutter:deleted-sign . "-")
   (git-gutter:modified-sign . "=")))

;; Smartparens
(leaf smartparens
  :ensure t
  :hook (after-init-hook . smartparens-global-strict-mode) ; strictモードを有効化
  :require smartparens-config
  :custom ((electric-pair-mode . nil))) ; electric-pair-modeを無効化

;; flycheck
(leaf flycheck
  :doc "On-the-fly syntax checking"
  :req "dash-2.12.1" "pkg-info-0.4" "let-alist-1.0.4" "seq-1.11" "emacs-24.3"
  :tag "minor-mode" "tools" "languages" "convenience" "emacs>=24.3"
  :url "http://www.flycheck.org"
  :emacs>= 24.3
  :ensure t
  :global-minor-mode global-flycheck-mode)

;; autopep8
(leaf py-autopep8
  :doc "Use autopep8 to beautify a Python buffer"
  :req "emacs-29.1"
  :tag "convenience" "emacs>=29.1"
  :url "https://codeberg.org/ideasman42/emacs-py-autopep8"
  :added "2025-02-27"
  :emacs>= 29.1
  :ensure t)

;; isort
(leaf py-isort
  :doc "Use isort to sort the imports in a Python buffer"
  :url "http://paetzke.me/project/py-isort.el"
  :added "2025-02-27"
  :ensure t)

;; タブ
(leaf tab-bar-mode
  :init
  ;; (defvar my:ctrl-o-map (make-sparse-keymap))
  ;; (defalias 'my:ctrl-o-prefix my:ctrl-o-map)
  (define-key global-map (kbd "C-<up>") 'tab-bar-switch-to-prev-tab)
  (define-key global-map (kbd "C-<down>") 'tab-bar-switch-to-next-tab)
  (define-key global-map (kbd "C-t") 'tab-bar-new-tab)
  (define-key global-map (kbd "C-w") 'tab-bar-close-tab)
  :custom
  ((tab-bar-new-tab-choice . "*scratch*"))
  :config
  (tab-bar-mode t)
  (face-spec-set 'tab-bar-tab '((((background light)) (:background "gold")) (((background dark)) (:background "#808080")))))

;; GitHub Copilot
(leaf copilot
  :doc "An unofficial Copilot plugin"
  :req "emacs-27.2" "s-1.12.0" "dash-2.19.1" "editorconfig-0.8.2" "jsonrpc-1.0.14" "f-0.20.0"
  :tag "copilot" "convenience" "emacs>=27.2"
  :url "https://github.com/copilot-emacs/copilot.el"
  :added "2025-02-27"
  :emacs>= 27.2
  :ensure t
  :bind  (copilot-completion-map ("C-f" . copilot-accept-completion)))

;; emojify
(leaf emojify
  :tag "core" "font"
  :ensure t
  :when window-system
  :hook (after-init-hook . global-emojify-mode)
  :bind
  ("C-q C-e" . emojify-insert-emoji)
  :custom
  (emojify-emoji-styles . '(unicode github)))


(provide 'init)

;;; init.el ends here


