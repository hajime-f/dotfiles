;; コマンドキーを Ctrl キーにする
(setq mac-command-modifier 'control)

;; オプションキーを Meta キーにする
(setq mac-option-modifier 'meta)

;; キーバインディングの設定
(define-key global-map (kbd "C-q") 'Control-X-prefix)
(define-key global-map (kbd "C-j") 'mode-specific-command-prefix)
(define-key global-map (kbd "C-q C-o") 'save-buffer)
(define-key global-map (kbd "C-q C-j") 'save-buffers-kill-emacs)
(define-key global-map (kbd "C-q C-a") 'write-file)
(define-key global-map (kbd "C-l") 'set-mark-command)
(define-key global-map (kbd "C-t") 'kill-line)
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
(define-key global-map (kbd "C-q g") 'magit-status)
(define-key global-map (kbd "C-j t j") 'quickrun)

;; フレームの設定
(setq default-frame-alist
      (append (list
               ;; サイズ・位置
               '(width . 170)  ; 横幅(文字数)
               '(height . 56)  ; 高さ(行数)
               '(top . 120)    ; フレーム左上角 y 座標
               '(left . 2500)  ; フレーム左上角 x 座標
               )
              default-frame-alist))

;; メニューバーとツールバーを表示しない
(menu-bar-mode 0)
(tool-bar-mode 0)

;; パスを通す
(defun add-to-load-path (&rest paths)
 (let (path)
   (dolist (path paths paths)
    (let ((default-directory (expand-file-name (concat user-emacs-directory path))))
       (add-to-list 'load-path default-directory)
        (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
            (normal-top-level-add-subdirs-to-load-path))))))
(add-to-load-path "elisp" "conf" "public_repos")

;; 言語の設定
(set-language-environment 'Japanese)
(prefer-coding-system 'utf-8)

;; パッケージ管理
(require 'package)
(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
        ("marmalade" . "https://marmalade-repo.org/packages/")
        ("melpa" . "http://melpa.org/packages/")
        ("org" . "http://orgmode.org/elpa/")))
(package-initialize)

;; ウィンドウの色の設定
(load-theme 'doom-dark+ t)
(if window-system (progn
    (set-frame-parameter nil 'alpha 93) ;透明度
    ))

;; スクロールは1行ごとに
(setq mouse-wheel-scroll-amount '(1 ((shift) . 5)))

;; スクロールの加速をやめる
(setq mouse-wheel-progressive-speed nil)

;; 行番号の表示
(progn
  (global-display-line-numbers-mode)
  (set-face-attribute 'line-number nil
                      :foreground "#808080"
                      :background "#0f0f0f")
  (set-face-attribute 'line-number-current-line nil
                      :foreground "gold"))

;; 対応する括弧をハイライトする
(show-paren-mode t)
(setq show-paren-style 'mixed)

;; scratch の初期メッセージを表示しない
(setq initial-scratch-message "")

;; 起動時のメッセージを表示しない
(setq inhibit-startup-message t)

;; ¥の代わりにバックスラッシュを入力する
(define-key global-map [?¥] [?\\])

;; Tabキーを無効化する
(setq-default indent-tabs-mode nil)

;; 自動再読み込み
(global-auto-revert-mode t)

;; 画像ファイルを表示する
(auto-image-file-mode t)

;; バックアップとオートセーブファイルを~/.emacs.d/backups/へ集める
(add-to-list 'backup-directory-alist
(cons "." "~/.emacs.d/backups/"))
(setq auto-save-file-name-transforms
`((".*" ,(expand-file-name "~/.emacs.d/backups/") t)))

;; オートセーブファイル作成までの秒間隔
(setq auto-save-timeout 15)

;; オートセーブファイル作成までのタイプ間隔
(setq auto-save-interval 60)

;; 終了時にオートセーブファイルを削除する
(setq delete-auto-save-files t)

;; yes-or-no を y-or-n で応えるようにする
(fset 'yes-or-no-p 'y-or-n-p)

;; 行の先頭で C-k を一回押すだけで行全体を消去する
(setq kill-whole-line t)

;; 最後に改行を入れる。
(setq require-final-newline t)

;; タイトルバーにファイル名をフルパスで表示する
(setq frame-title-format (format "emacs@%s : %%f" (system-name)))

;; 時刻表示
(display-time)

;; 以前編集したファイルのカーソル位置を覚える設定
(require 'saveplace)
(save-place-mode 1)

;; C-hv とか ファイル名補完時のウィンドウを自動的にリサイズする。
(temp-buffer-resize-mode t)

;; default scroll bar消去
(scroll-bar-mode 0)

;; フォント設定
(set-frame-font "PlemolJP light 19")
;; (set-frame-font "Cica 22")

;; フォントサイズ変更の設定
(global-set-key [(control +)] (lambda () (interactive) (text-scale-increase 1)))
(global-set-key [(control -)] (lambda () (interactive) (text-scale-decrease 1)))
(global-set-key [(control ?0)] (lambda () (interactive) (text-scale-increase 0)))

;; 自動補完
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
          ("<tab>" . company-complete-selection))
         (company-search-map
          ("C-n" . company-select-next)
          ("C-p" . company-select-previous)))
  :custom ((company-idle-delay . 0)
           (company-minimum-prefix-length . 1)
           (company-transformers . '(company-sort-by-occurrence)))
  :global-minor-mode global-company-mode)

(leaf company-c-headers
  :doc "Company mode backend for C/C++ header files"
  :req "emacs-24.1" "company-0.8"
  :tag "company" "development" "emacs>=24.1"
  :added "2020-03-25"
  :emacs>= 24.1
  :ensure t
  :after company
  :defvar company-backends
  :config
  (add-to-list 'company-backends 'company-c-headers))

;; Undohist
(require 'undohist)
(undohist-initialize)

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

;; elpy
(elpy-enable)
(setq elpy-rpc-virtualenv-path 'current)
(setq python-shell-completion-native-disabled-interpreters '("python3"))

;; autopep8
(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-mode)

;; isort
(require 'py-isort)
(add-hook 'python-mode-hook
          '(lambda()
             (add-hook 'before-save-hook 'py-isort-before-save)))

;; Wanderlust
(load "mime-setup") ;; wl の設定ではないが、無ければ追加しておく。
(require 'mime-w3m)
(require 'w3m-load)
(autoload 'wl "wl" "Wanderlust" t)
(autoload 'wl-draft "wl" "Write draft with Wanderlust." t)

(require 'copilot)
(setq copilot-node-executable "~/.nvm/versions/node/v17.9.1/bin/node")
(add-hook 'prog-mode-hook 'copilot-mode)

(with-eval-after-load 'company
  ;; disable inline previews
  (delq 'company-preview-if-just-one-frontend company-frontends))
  
(define-key copilot-completion-map (kbd "C-f") 'copilot-accept-completion)
;; (define-key copilot-completion-map (kbd "TAB") 'copilot-accept-completion)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(editorconfig quelpa quelpa-leaf quelpa-use-package w3m company-c-headers wanderlust py-isort cmake-mode vterm elpy py-autopep8 leaf flycheck lsp-python-ms lsp-pyright lsp-ui lsp-mode eglot smartparens undohist doom-themes doom-modeline-now-playing doom company))
 '(python-shell-completion-native-disabled-interpreters '("pypy" "python3"))
 '(python-shell-interpreter "python3"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

