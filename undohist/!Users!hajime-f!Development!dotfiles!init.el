
((digest . "f47880a4282674a93f915286504a7781") (undo-list nil (apply 24 1381 1679 undo--wrap-and-run-primitive-undo 1381 1679 ((";; " . -1643) (";; " . -1618) (";; " . -1578) (";; " . -1554) (";; " . -1492) (";; " . -1426) (";; " . -1395) (";; " . -1381) 1703)) nil (1384 . 1667) ("macOS 用の設定
(when (eq system-type 'darwin)
  (defvar mac-command-modifier 'control \"macOS command modifier\")
  (defvar mac-option-modifier 'meta \"macOS option modifier\")

  ;; コマンドキーを Ctrl キーにする
  (setq mac-command-modifier 'control)

  ;; オプションキーを Meta キーにする
" . 1384) 4231 (t 26559 46230 17108 95000) nil (6529 . 6665) 4231 (t 26559 46196 18602 68000) nil ("
  " . 8697) 4231 (t 26559 46160 766543 151000) nil (8576 . 8700) 4231 (t 26559 46129 723943 484000) nil (8076 . 8580) 4231 (t 26559 45813 132573 986000) nil (5682 . 5688) ("term-raw" . 5682) 4231 (t 26559 45753 286426 300000) nil (3593 . 3613) 4211 (t 26559 45741 313174 154000) nil ("(scroll-bar-mode 0)
" . 3593) 4231 (t 26559 45717 167317 169000) nil (3117 . 4919) ("
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

;; メニューバー、ツールバー、スクロールバーを表示しない
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)

;; テーマ（doom-dark+）の適用
(leaf doom-themes
  :init
  (let ((custom--inhibit-theme-enable nil))
    (unless (memq 'use-package custom-known-themes)
      (deftheme use-package)
      (enable-theme 'use-package)
      (setq custom-enabled-themes (remq 'use-package custom-enabled-themes)))
    (custom-theme-set-variables 'use-package
				'(doom-themes-enable-italic t nil nil \"Customized with use-package doom-themes\")
				'(doom-themes-enable-bold t nil nil \"Customized with use-package doom-themes\")))
  (apply #'face-spec-set
	 (backquote
	  (doom-modeline-bar
	   ((t
	     (:background \"#6272a4\"))))))
  :require t
  :config
  (load-theme 'doom-dark+ t)
  (set-frame-parameter nil 'alpha 95))

;; フォントの設定
(set-frame-font \"Bizin Gothic 20\")

;; フォントサイズ変更の設定
(global-set-key [(control +)] (lambda () (interactive) (text-scale-increase 1)))
(global-set-key [(control -)] (lambda () (interactive) (text-scale-decrease 1)))
(global-set-key [(control ?0)] (lambda () (interactive) (text-scale-increase 0)))

;; scratch の初期メッセージを表示しない
(setq initial-scratch-message \"\")

;; 起動時のメッセージを表示しない
(setq inhibit-startup-message t)

;; タイトルバーにファイル名をフルパスで表示する
(setq frame-title-format (format \"emacs@%s : %%f\" (system-name)))

;; 行番号の表示
(global-display-line-numbers-mode t) ;; 左側に行番号を表示する
(global-hl-line-mode t) ;; 現在行を強調

;; 最後のカーソル位置を記録
(save-place-mode t) " . 3117) ((marker . 1679) . -1114) 4231 (t 26559 45663 934555 375000) nil (8318 . 8852) ("


;; ;; GitHub Copilot
;; (leaf copilot
;;   :doc \"An unofficial Copilot plugin\"
;;   :req \"emacs-27.2\" \"s-1.12.0\" \"dash-2.19.1\" \"editorconfig-0.8.2\" \"jsonrpc-1.0.14\" \"f-0.20.0\"
;;   :tag \"copilot\" \"convenience\" \"emacs>=27.2\"
;;   :url \"https://github.com/copilot-emacs/copilot.el\"
;;   :added \"2025-02-27\"
;;   :emacs>= 27.2
;;   :ensure t
;;   :bind  (copilot-completion-map (\"C-f\" . copilot-accept-completion))
;;   :after editorconfig jsonrpc
;;   :config
;;   (setq copilot-node-executable \"~/.nvm/versions/node/v17.9.1/bin/node\"))


" . 8318) 4231 (t 26559 45649 531145 932000) nil (8081 . 8242) ("GitHub Copilot
(require 'copilot)
(setq copilot-node-executable \"~/.nvm/versions/node/v19.9.0/bin/node\")
(add-hook 'prog-mode-hook 'copilot-mode)
" . 8081) 4231 (t 26559 45620 168753 459000) nil (8081 . 8227) (";; GitHub Copilot
;; (require 'copilot)
;; (setq copilot-node-executable \"~/.nvm/versions/node/v19.9.0/bin/node\")
;; (add-hook 'prog-mode-hook 'copilot-mode)
;; " . 8081) (t 26559 45614 666058 943000) (8324 . 8782) ("GitHub Copilot
(leaf copilot
  :doc \"An unofficial Copilot plugin\"
  :req \"emacs-27.2\" \"s-1.12.0\" \"dash-2.19.1\" \"editorconfig-0.8.2\" \"jsonrpc-1.0.14\" \"f-0.20.0\"
  :tag \"copilot\" \"convenience\" \"emacs>=27.2\"
  :url \"https://github.com/copilot-emacs/copilot.el\"
  :added \"2025-02-27\"
  :emacs>= 27.2
  :ensure t
  :bind  (copilot-completion-map (\"C-f\" . copilot-accept-completion))
  :after editorconfig jsonrpc
  :config
" . 8324) 4231 (t 26559 45581 929800 522000) nil (8799 . 8804) ("9.9.0" . 8799) 4231 (t 26559 45459 100518 501000) nil (8821 . 8822) 4231 (t 26559 45301 629422 112000) nil (8324 . 8743) (";; GitHub Copilot
;; (leaf copilot
;;   :doc \"An unofficial Copilot plugin\"
;;   :req \"emacs-27.2\" \"s-1.12.0\" \"dash-2.19.1\" \"editorconfig-0.8.2\" \"jsonrpc-1.0.14\" \"f-0.20.0\"
;;   :tag \"copilot\" \"convenience\" \"emacs>=27.2\"
;;   :url \"https://github.com/copilot-emacs/copilot.el\"
;;   :added \"2025-02-27\"
;;   :emacs>= 27.2
;;   :ensure t
;;   :bind  (copilot-completion-map (\"C-f\" . copilot-accept-completion))
;;   :after editorconfig jsonrpc
;;   :config
;; " . 8324) (t 26559 45293 290473 962000) ("lsp-print-io t)
;;   (with-eval-after-load 'lsp-clients
;;     (remhash 'angular-ls lsp-clients))
;;   (setq " . 8790) 4231 (t 26559 45254 812150 869000) nil (8081 . 8318) ("GitHub Copilot
(require 'copilot)
(setq copilot-node-executable \"~/.nvm/versions/node/v19.9.0/bin/node\")
(add-hook 'prog-mode-hook 'copilot-mode)
(define-key copilot-completion-map (kbd \"C-f\") 'copilot-accept-completion)" . 8081) 4231 (t 26559 45193 84029 148000) nil (8078 . 8302) 4231 (t 26559 44886 211779 449000) nil ("(leaf lsp-mode :ensure t
  :url \"https://github.com/emacs-lsp/lsp-mode\"
  :hook (
         (python-mode-hook . lsp-deferred)
         (rust-mode-hook . lsp-deferred)
         (sh-mode-hook . lsp-deferred)
         (lsp-mode-hook . lsp-enable-which-key-integration)
         (lsp-mode-hook . (lambda () (ggtags-mode -1)))
         )
  :custom (
           (add-to-list 'lsp-disabled-clients 'pyls)
           (lsp-log-io             . nil)  ;; print all messages to and from the language server to ~*lsp-log*~.
           (lsp-print-performance  . nil)
           (lsp-server-trace       . nil)  ;; Request trace mode on the language server.
           (lsp-auto-guess-root . t)  ;; original nil
           (lsp-message-project-root-warning . t)

           (lsp-auto-configure . t) 
           (lsp-headerline-breadcrumb-enable . t)
           (lsp-eldoc-render-all . nil)
           (lsp-idle-delay . 0.5)
           (lsp-response-timeout     . 5)
           (lsp-enable-folding       . t)     ;; original t
           (lsp-enable-indentation   . t)
           (lsp-completion-enable . nil)  ;; original t
           (lsp-completion-provider . :none)
           (lsp-completion-show-detail . nil)
           (lsp-diagnostics-provider . :flycheck)
           (lsp-file-watch-threshold . nil)
           (lsp-enable-symbol-highlighting . t)
           (lsp-signature-render-documentation . nil)
           )
  :commands (lsp lsp-deferred)
  ;; :commands (lsp)
  :config
  ;; .venv, .mypy_cache を watch 対象から外す
  ;;    https://qiita.com/slotport/items/0e9cb2a875fe85bc1735
  (dolist (dir '(
                 \"[/\\\\\\\\]\\\\.venv$\"
                 \"[/\\\\\\\\]\\\\.mypy_cache$\"
                 \"[/\\\\\\\\]__pycache__$\"
                 \"[/\\\\\\\\]_archives$\"
                 \"[/\\\\\\\\]_logs$\"
                 ))
    (push dir lsp-file-watch-ignored)))


" . 8080) 4231 (t 26559 44812 708273 234000) nil (9918 . 10485) ("GitHub Copilot
(leaf copilot
  :doc \"An unofficial Copilot plugin\"
  :req \"emacs-27.2\" \"s-1.12.0\" \"dash-2.19.1\" \"editorconfig-0.8.2\" \"jsonrpc-1.0.14\" \"f-0.20.0\"
  :tag \"copilot\" \"convenience\" \"emacs>=27.2\"
  :url \"https://github.com/copilot-emacs/copilot.el\"
  :added \"2025-02-27\"
  :emacs>= 27.2
  :ensure t
  :bind  (copilot-completion-map (\"C-f\" . copilot-accept-completion))
  :after editorconfig jsonrpc
  :config
  (setq lsp-print-io t)
  (with-eval-after-load 'lsp-clients
    (remhash 'angular-ls lsp-clients))
" . 9918) 4231 (t 26559 44785 708034 969000) nil (9918 . 10437) (";; GitHub Copilot
;; (leaf copilot
;;   :doc \"An unofficial Copilot plugin\"
;;   :req \"emacs-27.2\" \"s-1.12.0\" \"dash-2.19.1\" \"editorconfig-0.8.2\" \"jsonrpc-1.0.14\" \"f-0.20.0\"
;;   :tag \"copilot\" \"convenience\" \"emacs>=27.2\"
;;   :url \"https://github.com/copilot-emacs/copilot.el\"
;;   :added \"2025-02-27\"
;;   :emacs>= 27.2
;;   :ensure t
;;   :bind  (copilot-completion-map (\"C-f\" . copilot-accept-completion))
;;   :after editorconfig jsonrpc
;;   :config
;;   (setq lsp-print-io t)
;;   (with-eval-after-load 'lsp-clients
;;     (remhash 'angular-ls lsp-clients))
;; " . 9918) 4231 (t 26559 44749 545669 757000) nil (9918 . 10485) ("GitHub Copilot
(leaf copilot
  :doc \"An unofficial Copilot plugin\"
  :req \"emacs-27.2\" \"s-1.12.0\" \"dash-2.19.1\" \"editorconfig-0.8.2\" \"jsonrpc-1.0.14\" \"f-0.20.0\"
  :tag \"copilot\" \"convenience\" \"emacs>=27.2\"
  :url \"https://github.com/copilot-emacs/copilot.el\"
  :added \"2025-02-27\"
  :emacs>= 27.2
  :ensure t
  :bind  (copilot-completion-map (\"C-f\" . copilot-accept-completion))
  :after editorconfig jsonrpc
  :config
  (setq lsp-print-io t)
  (with-eval-after-load 'lsp-clients
    (remhash 'angular-ls lsp-clients))
" . 9918) (t 26559 44743 518434 399000) (8080 . 9915) 4231 (t 26559 44458 698976 698000) nil ("
" . 8680) 4231 (t 26559 44455 376683 718000) nil (8529 . 8605) 4231 (t 26559 44353 34225 436000) nil (8501 . 8527) 4231 (t 26559 44327 335433 509000) nil (8083 . 8574) (";; GitHub Copilot
;; (leaf copilot
;;   :doc \"An unofficial Copilot plugin\"
;;   :req \"emacs-27.2\" \"s-1.12.0\" \"dash-2.19.1\" \"editorconfig-0.8.2\" \"jsonrpc-1.0.14\" \"f-0.20.0\"
;;   :tag \"copilot\" \"convenience\" \"emacs>=27.2\"
;;   :url \"https://github.com/copilot-emacs/copilot.el\"
;;   :added \"2025-02-27\"
;;   :emacs>= 27.2
;;   :ensure t
;;   :bind  (copilot-completion-map (\"C-f\" . copilot-accept-completion))
;;   :after editorconfig jsonrpc
;;   :config (setq copilot-node-executable \"~/.nvm/versions/node/v19.9.0/bin/node\"))

;; GitHub Copilot
(require 'copilot)
(setq copilot-node-executable \"~/.nvm/versions/node/v19.9.0/bin/node\")
(add-hook 'prog-mode-hook 'copilot-mode)
(define-key copilot-completion-map (kbd \"C-f\") 'copilot-accept-completion)" . 8083) 4231 (t 26559 44060 588479 622000) nil (8611 . 8835) (t 26559 44052 610778 95000) (8083 . 8528) ("GitHub Copilot
(leaf copilot
  :doc \"An unofficial Copilot plugin\"
  :req \"emacs-27.2\" \"s-1.12.0\" \"dash-2.19.1\" \"editorconfig-0.8.2\" \"jsonrpc-1.0.14\" \"f-0.20.0\"
  :tag \"copilot\" \"convenience\" \"emacs>=27.2\"
  :url \"https://github.com/copilot-emacs/copilot.el\"
  :added \"2025-02-27\"
  :emacs>= 27.2
  :ensure t
  :bind  (copilot-completion-map (\"C-f\" . copilot-accept-completion))
  :after editorconfig jsonrpc
" . 8083) 4231 (t 26559 44013 897841 239000) nil (";; emojify" . 8575) 4231 (t 26559 43859 70300 912000) nil (8491 . 8587) (")" . 8491) 4231 (t 26559 43750 264238 367000) nil ("
  :config
  (cond
   ((eq system-type 'darwin)
    (progn
      (setq-default emojify-display-style 'unicode)
      (when (member \"Apple Color Emoji\" (font-family-list))
	(set-fontset-font t 'symbol (font-spec :family \"Apple Color Emoji\") nil 'prepend))))
   ((eq system-type 'windows-nt)
    (progn
      (setq-default emojify-display-style 'image)
      (when (member \"Segoe UI Emoji\" (font-family-list))
	(set-fontset-font t 'symbol (font-spec :family \"Segoe UI Emoji\") nil 'prepend)))))" . 8721) 4231 (t 26559 43716 657047 617000) nil ("
" . 8399) (t 26559 43713 53608 948000) (8399 . 8461) (" (define-key copilot-completion-map (kbd \"C-f\") 'copilot-accept-completion" . 8399) 4231 (t 26559 43637 629677 287000) nil (8420 . 8430) ("mode" . 8420) 4231 (t 26559 43619 984062 582000) nil (8420 . 8424) ("completion" . 8420) 4231 (t 26559 43555 510201 313000) nil (8080 . 8097) 4231 (t 26559 43548 224088 318000) nil ("

(leaf copilot
  :el-get (copilot
           :type github
           :pkgname \"zerolfx/copilot.el\"
           )
  :config
  (leaf editorconfig
    :ensure t
    )
  (leaf s
    :ensure t
    )
  (leaf dash
    :ensure t
    )
  (defun my/copilot-tab ()
    (interactive)
    (or (copilot-accept-completion)
        (indent-for-tab-command)))

  (with-eval-after-load 'copilot
    (define-key copilot-mode-map (kbd \"<tab>\") #'my/copilot-tab))
  )

" . 8490) (t 26559 43542 988589 193000) (8080 . 9658) (";; emojify
(leaf emojify
  :tag \"core\" \"font\"
  :ensure t
  :when window-system
  :hook (after-init-hook . global-emojify-mode)
  :bind
  (\"C-q C-e\" . emojify-insert-emoji)
  :custom
  (emojify-emoji-styles . '(unicode github))
  :config
  (cond
   ((eq system-type 'darwin)
    (progn
      (setq-default emojify-display-style 'unicode)
      (when (member \"Apple Color Emoji\" (font-family-list))
	(set-fontset-font t 'symbol (font-spec :family \"Apple Color Emoji\") nil 'prepend))))
   ((eq system-type 'windows-nt)
    (progn
      (setq-default emojify-display-style 'image)
      (when (member \"Segoe UI Emoji\" (font-family-list))
	(set-fontset-font t 'symbol (font-spec :family \"Segoe UI Emoji\") nil 'prepend))))))
  " . 8080) 4231 (t 26559 43150 936528 827000) nil (7139 . 7286) (";; Smartparens
;; (leaf smartparens
;;   :ensure t
;;   :hook (after-init-hook . smartparens-global-strict-mode) ; strictモードを有効化
;;   :require smartparens-config
;; " . 7139) (t 26559 43144 609766 236000) (8816 . 8817) 4231 (t 26559 43104 633297 173000) nil (7139 . 8819) ("Smartparens
(leaf smartparens
  :ensure t
  :hook (after-init-hook . smartparens-global-strict-mode) ; strictモードを有効化
  :require smartparens-config
  :custom ((electric-pair-mode . nil))) ; electric-pair-modeを無効化

;; flycheck
(leaf flycheck
  :doc \"On-the-fly syntax checking\"
  :req \"dash-2.12.1\" \"pkg-info-0.4\" \"let-alist-1.0.4\" \"seq-1.11\" \"emacs-24.3\"
  :tag \"minor-mode\" \"tools\" \"languages\" \"convenience\" \"emacs>=24.3\"
  :url \"http://www.flycheck.org\"
  :emacs>= 24.3
  :ensure t
  :global-minor-mode global-flycheck-mode)

;; autopep8
(leaf py-autopep8
  :doc \"Use autopep8 to beautify a Python buffer\"
  :req \"emacs-29.1\"
  :tag \"convenience\" \"emacs>=29.1\"
  :url \"https://codeberg.org/ideasman42/emacs-py-autopep8\"
  :added \"2025-02-27\"
  :emacs>= 29.1
  :ensure t)

;; isort
(leaf py-isort
  :doc \"Use isort to sort the imports in a Python buffer\"
  :url \"http://paetzke.me/project/py-isort.el\"
  :added \"2025-02-27\"
  :ensure t)




;; emojify
(leaf emojify
  :tag \"core\" \"font\"
  :ensure t
  :when window-system
  :hook (after-init-hook . global-emojify-mode)
  :bind
  (\"C-q C-e\" . emojify-insert-emoji)
  :custom
  (emojify-emoji-styles . '(unicode github))
  :config
  (cond
   ((eq system-type 'darwin)
    (progn
      (setq-default emojify-display-style 'unicode)
      (when (member \"Apple Color Emoji\" (font-family-list))
	(set-fontset-font t 'symbol (font-spec :family \"Apple Color Emoji\") nil 'prepend))))
   ((eq system-type 'windows-nt)
    (progn
      (setq-default emojify-display-style 'image)
      (when (member \"Segoe UI Emoji\" (font-family-list))
	(set-fontset-font t 'symbol (font-spec :family \"Segoe UI Emoji\") nil 'prepend)))))" . 7139) 4231 (t 26559 43001 92588 242000) nil (8224 . 8226) 4231 (t 26559 42942 147238 301000) nil (8140 . 8315) (";; GUI 版のみ利用
  :when window-system
  ;; グローバルで絵文字を利用する
  :hook (after-init-hook . global-emojify-mode)
  ;; 絵文字を挿入するコマンド。Vertico が効くので便利
  :bind
  (\"C-q e\" . emojify-insert-emoji)
  ;; ユニコード文字としての利用と、github （Slack 風でもある）のように :fuga: のように書くと絵文字に変換してくれる。 :) のように あscii で変換されるのは誤爆が多そうなので ascii は無効
  :custom
  (emojify-emoji-styles . '(unicode github))
  :config
  ;; MacOSX と Windows でフォントの指定や表示する絵文字のフォーマットを切り替え" . 8140) (t 26559 42933 878229 305000) (8291 . 8292) ("x" . 8291) 4231 (t 26559 42914 523150 166000) nil (8078 . 9032) 4231 (t 26559 17574 230093 384000) nil (7666 . 7920) ("(leaf py-autopep8
  :doc \"Use autopep8 to beautify a Python buffer\"
  :req \"emacs-29.1\"
  :tag \"convenience\" \"emacs>=29.1\"
  :url \"https://codeberg.org/ideasman42/emacs-py-autopep8\"
  :added \"2025-02-27\"
  :emacs>= 29.1
  :ensure t)
" . 7666) 4231 (t 26559 17549 879066 769000) nil (7900 . 8056) 4231 (t 26559 17531 811396 345000) nil (7667 . 7902) 4231 (t 26559 17421 134897 970000) nil (5736 . 5745) (t 26559 17412 442852 235000) (4962 . 4982) ("
" . 4962) 4231 (t 26559 17343 20688 482000) nil (4968 . 5177) 4231 (t 26559 17204 343062 460000) nil (6828 . 6902) 4231 (t 26559 17094 551846 152000) nil (" の設定" . 5014) (t 26559 17091 103955 772000) ("


" . 5008) (t 26559 17087 720407 43000) (" の設定" . 4978) 4231 (t 26559 16982 525456 666000) nil (6836 . 7365) 4231 (t 26559 16933 537649 769000) nil (6301 . 6835) 4231 (t 26559 16896 78217 998000) nil (5512 . 6300) 4231 (t 26559 16871 929538 434000) nil (3497 . 3507) ("とツ" . 3497) 4223 (t 26559 16842 639902 201000) nil (3546 . 3566) 4203 (t 26559 16816 511242 439000) nil (4987 . 4997) 4203 (t 26559 16785 628585 39000) nil (3061 . 4931) ("
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
  :init
  (let ((custom--inhibit-theme-enable nil))
    (unless (memq 'use-package custom-known-themes)
      (deftheme use-package)
      (enable-theme 'use-package)
      (setq custom-enabled-themes (remq 'use-package custom-enabled-themes)))
    (custom-theme-set-variables 'use-package
				'(doom-themes-enable-italic t nil nil \"Customized with use-package doom-themes\")
				'(doom-themes-enable-bold t nil nil \"Customized with use-package doom-themes\")))
  (apply #'face-spec-set
	 (backquote
	  (doom-modeline-bar
	   ((t
	     (:background \"#6272a4\"))))))
  :require t
  :config
  (load-theme 'doom-dark+ t)
  (set-frame-parameter nil 'alpha 95))

;; フォントの設定
(set-frame-font \"Bizin Gothic 20\")

;; フォントサイズ変更の設定
(global-set-key [(control +)] (lambda () (interactive) (text-scale-increase 1)))
(global-set-key [(control -)] (lambda () (interactive) (text-scale-decrease 1)))
(global-set-key [(control ?0)] (lambda () (interactive) (text-scale-increase 0)))

;; scratch の初期メッセージを表示しない
(setq initial-scratch-message \"\")

;; 起動時のメッセージを表示しない
(setq inhibit-startup-message t)

;; タイトルバーにファイル名をフルパスで表示する
(setq frame-title-format (format \"emacs@%s : %%f\" (system-name)))

;; 行番号の表示
(global-display-line-numbers-mode t) ;; 左側に行番号を表示する
(global-hl-line-mode t) ;; 現在行を強調

;; 最後のカーソル位置を記録
(save-place-mode t) 
" . 3061) ((marker . 1381) . -1084) ((marker . 1679) . -1084) ((marker . 3061) . -1125) ((marker . 3061) . -25) ((marker . 3061) . -132) ((marker . 1679) . -1084) 4145 (t 26559 16709 336960 941000) nil (";; モードラインにカーソル上の関数名等を表示する
(which-function-mode +1) 
" . 4836) 4145 (t 26559 16656 561823 752000) nil (5371 . 5425) ("when (require 'term nil t)
              (let ((map (intern-soft 'term-raw-map)))
                (when map
                  (define-key map (kbd \"C-'\") 'toggle-zsh-window)))" . 5371) 4145 (t 26559 16608 286530 556000) nil (5312 . 5545) ("with-eval-after-load 'term
  (add-hook 'term-mode-hook
            (lambda ()
              (define-key term-raw-map (kbd \"C-'\") 'toggle-zsh-window" . 5312) 4145 (t 26559 16508 307435 457000) nil (5312 . 5460) ("add-hook 'term-mode-hook
          (lambda ()
            (define-key term-raw-map (kbd \"C-'\") 'toggle-zsh-window" . 5312) 4145 (t 26559 16471 775580 639000) nil (2998 . 3061) 4082 (t 26559 16431 756023 302000) nil ("defvar term-raw-map (make-sparse-keymap) \"Keymap for raw term mode.\")
(" . 5249) 4082 (t 26559 16398 284986 128000) nil (5249 . 5320) 4082 (t 26559 16366 666512 484000) nil ("unless term-raw-map
              (setq term-raw-map (make-sparse-keymap)))
            (" . 5308) 4082 (t 26559 16333 818995 113000) nil (5308 . 5397) 4082 (t 26559 16271 506026 413000) nil (5319 . 5332) 4082 (t 26559 16175 512226 920000) nil ("term-raw-map " . 5319) 4082 (t 26559 16132 731251 271000) nil (4881 . 5295) (";; (defun toggle-zsh-window ()
;;   (interactive)
;;   (if (get-buffer-window \"*terminal*\")
;;       (progn
;;         (switch-to-buffer (other-buffer))
;;         (delete-window (get-buffer-window \"*terminal*\")))
;;     (progn
;;       (split-window-below)
;;       (other-window 1)
;;       (term \"/bin/zsh\")
;;       (rename-buffer \"*terminal*\"))))
;; (global-set-key (kbd \"C-'\") 'toggle-zsh-window)
;; (add-hook 'term-mode-hook
;;           (lambda ()
;; " . 4881) 4082 (t 26559 16109 166649 374000) nil (3406 . 3425) ("nil)
(tool-bar-mode nil" . 3406) 4086 (t 26559 16062 31770 938000) nil (4885 . 5344) ("(defun toggle-zsh-window ()
  (interactive)
  (if (get-buffer-window \"*terminal*\")
      (progn
        (switch-to-buffer (other-buffer))
        (delete-window (get-buffer-window \"*terminal*\")))
    (progn
      (split-window-below)
      (other-window 1)
      (term \"/bin/zsh\")
      (rename-buffer \"*terminal*\"))))
(global-set-key (kbd \"C-'\") 'toggle-zsh-window)
(add-hook 'term-mode-hook
          (lambda ()
" . 4885) 4086 (t 26559 16014 394261 727000) nil (4127 . 5368) ("
;; フォントの設定
(set-frame-font \"Bizin Gothic 20\")

;; フォントサイズ変更の設定
(global-set-key [(control +)] (lambda () (interactive) (text-scale-increase 1)))
(global-set-key [(control -)] (lambda () (interactive) (text-scale-decrease 1)))
(global-set-key [(control ?0)] (lambda () (interactive) (text-scale-increase 0)))

;; scratch の初期メッセージを表示しない
(setq initial-scratch-message \"\")

;; 起動時のメッセージを表示しない
(setq inhibit-startup-message t)

;; タイトルバーにファイル名をフルパスで表示する
(setq frame-title-format (format \"emacs@%s : %%f\" (system-name)))

;; 行番号の表示
(global-display-line-numbers-mode t) ;; 左側に行番号を表示する
(global-hl-line-mode t) ;; 現在行を強調

;; 最後のカーソル位置を記録
(save-place-mode t) 

;; モードラインにカーソル上の関数名等を表示する
(which-function-mode +1) 


;; autorevert の設定
(global-auto-revert-mode t" . 4127) ((marker . 3061) . -723) 4086 (t 26559 15940 549957 842000) nil ("(leaf git-gutter
  :doc \"Port of Sublime Text plugin GitGutter\"
  :req \"emacs-25.1\"
  :tag \"emacs>=25.1\"
  :url \"https://github.com/emacsorphanage/git-gutter\"
  :added \"2025-02-27\"
  :emacs>= 25.1
  :ensure t)
" . 4127) 4086 (t 26559 15874 36219 486000) nil (4127 . 4336) 4086 (t 26559 15839 866225 940000) nil ("(leaf doom-modeline
  :ensure t
  :global-minor-mode t
  :custom
  (doom-modeline-bar-width . 4)
  (doom-modeline-hud . t))" . 4127) 4086 (t 26559 15719 454212 596000) nil (4127 . 4252) 4086 (t 26559 15513 636843 914000) nil (3378 . 3415) ("、ツールバー、スクロールバーを表示しない
(menu-bar-mode nil)
(tool-bar-mode nil)
(scrol" . 3378) 4116 (t 26559 15479 14324 380000) nil (3456 . 3459) ("-1" . 3456) (t 26559 15474 622086 478000) (3378 . 3458) ("とツールバーを表示しない
(menu-bar-mode nil)
(tool-bar-mode nil" . 3378) 4086 (t 26559 15445 659906 394000) nil (3406 . 3429) ("0)
(tool-bar-mode 0" . 3406) 4082 (t 26559 15420 583101 582000) nil (4773 . 4824) 4082 (t 26559 15389 661324 502000) nil (4795 . 4820) ("leaf autorevert
  :doc \"revert buffers when files on disk change\"
  :tag \"builtin\"
  :custom ((auto-revert-interval . 1))
  :global-minor-mode global-auto-revert-mode" . 4795) 4082 (t 26559 15351 667638 625000) nil (";; ;; saveplace の設定
;; (leaf saveplace
;;   :doc \"automatically save place in files\"
;;   :tag \"builtin\"
;;   :added \"2025-02-27\")
" . 4964) 4082 (t 26559 15304 558545 344000) nil (4967 . 5072) ("saveplace の設定
(leaf saveplace
  :doc \"automatically save place in files\"
  :tag \"builtin\"
" . 4967) (t 26559 15301 249133 551000) (4641 . 4771) ("時刻表示
(display-time t)

;; 行番号の表示
(global-display-line-numbers-mode t) ;; 左側に行番号を表示する
(global-hl-line-mode t) ;; 現在行を強調

" . 4641) 4082 (t 26559 15273 154274 400000) nil (4659 . 4763) (")

;; 行番号の表示
(global-display-line-numbers-mode t) ;; 左側に行番号を表示する
(global-hl-line-mode t) ;; 現在行を強調" . 4659) 4082 (t 26559 15181 483228 137000) nil (4673 . 4757) ("progn
  (global-display-line-numbers-mode)
  (set-face-attribute 'line-number nil
                      :foreground \"#808080\"
                      :background \"#0f0f0f\")
  (set-face-attribute 'line-number-current-line nil
                      :foreground \"gold\"))
" . 4673) 4082 (t 26559 15050 295599 946000) nil (4662 . 4939) 4082 (t 26559 15018 737960 155000) nil (4853 . 4869) (t 26559 15008 250068 722000) (4854 . 4955) 4082 (t 26559 14941 337176 737000) nil (4545 . 4662) 4082 (t 26559 14897 213654 990000) nil (4431 . 4544) 4082 (t 26559 14577 816095 230000) nil (3181 . 3183) ("70" . 3181) 4082 (t 26559 14538 420173 114000) nil (3130 . 3285) ("130)           ; 横幅(文字数)
               '(height . 50)           ; 高さ(行数)
               '(top . 50)              ; フレーム左上角 y 座標
               '(left . 18" . 3130) ((marker . 3061) . -97) 4082 (t 26559 14503 364601 91000) nil (3227 . 4079) ("46)              ; フレーム左上角 y 座標
               '(left . 800)            ; フレーム左上角 x 座標
               )
              default-frame-alist))

;; メニューバーとツールバーを表示しない
(menu-bar-mode 0)
(tool-bar-mode 0)

;; テーマ（doom-dark+）の適用
(leaf doom-themes
  :init
  (let ((custom--inhibit-theme-enable nil))
    (unless (memq 'use-package custom-known-themes)
      (deftheme use-package)
      (enable-theme 'use-package)
      (setq custom-enabled-themes (remq 'use-package custom-enabled-themes)))
    (custom-theme-set-variables 'use-package
				'(doom-themes-enable-italic t nil nil \"Customized with use-package doom-themes\")
				'(doom-themes-enable-bold t nil nil \"Customized with use-package doom-themes\")))
  (apply #'face-spec-set
	 (backquote
	  (doom-modeline-bar
	   ((t
	     (:background \"#6272a4\"))))))
  :require t
  :config
  (load-theme 'doom-dracula" . 3227) ((marker . 3061) . -222) 4083 (t 26559 14441 853405 944000) nil (4124 . 4430) 4083 (t 26559 14407 484338 310000) nil (4074 . 4080) ("ark+" . 4074) 4081 (t 26559 14364 779467 738000) nil (4081 . 4119) (t 26559 14338 364028 263000) nil (4085 . 4090) 4081 (t 26559 14327 844557 356000) nil (3433 . 3445) 4069 (t 26559 14313 477609 934000) nil (3427 . 3436) 4060 (t 26559 14268 714162 728000) nil (4053 . 4057) ("racula" . 4053) 4062 (t 26559 14186 853730 774000) nil ("
  (doom-themes-neotree-config)
  (doom-themes-org-config)" . 4062) ((marker . 1679) . -29) (t 26559 14177 210823 117000) (4062 . 4121) (")
" . 4062) ((marker . 1679) . -1) 4063 (t 26559 14064 256167 203000) nil ("
  (doom-themes-neotree-config)
  (doom-themes-org-config)" . 4062) ((marker . 1679) . -58) ((marker . 1679) . -58) 4120 (t 26559 13930 256416 359000) nil (3439 . 4121) ("dark+
  :tag \"out-of-MELPA\"
  :added \"2025-02-27\"
  :el-get {{user}}/doom-dark+
  :require t)
" . 3439) 568 (t 26559 13825 719002 411000) nil (3428 . 3531) ("


;; ウィンドウの色の設定
(load-theme 'doom-dark+ t)
(if window-system (progn
    (set-frame-parameter nil 'alpha 95) ;透明度
    )" . 3428) ((marker . 3061) . -3) 545 (t 26559 13689 779237 614000) nil (nil rear-nonsticky nil 1353 . 1354) (nil fontified nil 1185 . 1354) (1185 . 1354) nil (1183 . 1185) (t 26559 13552 120643 656000) nil (nil rear-nonsticky nil 1182 . 1183) (nil fontified nil 948 . 1183) (948 . 1183) nil (948 . 950) (t 26559 13468 541517 560000) nil (3018 . 3022) (t 26559 13329 859555 592000) nil (nil rear-nonsticky nil 3136 . 3137) (nil fontified nil 3019 . 3137) (3019 . 3137) nil (3018 . 3020) nil (2600 . 2608) nil (2604 . 2605) nil (2599 . 2600) nil (2594 . 2595) nil (2599 . 2602) nil (2598 . 2599) nil (2595 . 2598) nil (2594 . 2595) nil (2591 . 2594) nil (947 . 948) nil ("
" . -2589) ((marker . 1679) . -1) ("`" . -2590) ((marker . 1679) . -1) 2591 nil (2590 . 2591) nil (2589 . 2591) nil (957 . 965) nil (68 . 81) nil (72 . 73) nil (67 . 68) nil (62 . 63) nil (67 . 70) nil (66 . 67) nil (63 . 66) nil (62 . 63) nil (59 . 62) nil (57 . 60) nil (931 . 932) nil (921 . 922) nil (925 . 926) nil (926 . 929) nil (925 . 926) nil (922 . 925) nil (921 . 922) nil (918 . 921) nil ("`" . -918) ((marker . 1679) . -1) ("`" . -919) ((marker . 1679) . -1) ("`" . -920) ((marker . 1679) . -1) 921 nil (918 . 921) nil (917 . 919) (t 26559 13225 642633 323000) nil (nil rear-nonsticky nil 2939 . 2940) (nil fontified nil 2537 . 2940) (2537 . 2940) nil (2534 . 2539) nil ("
" . -917) ((marker . 947) . -1) ((marker . 1679) . -1) 918 (t 26559 13181 985106 755000) nil (27 . 56) (t 26559 13177 715617 367000) nil ("  -*- lexical-binding: t; -*-" . 27) (t 26559 13157 434596 844000) nil (1242 . 1247) (t 26559 13148 294952 209000) nil (1271 . 1279) nil (1269 . 1271) nil ("ほ" . -1269) ((marker . 1679) . -1) ("う" . -1270) ((marker . 1679) . -1) ("が" . -1271) ((marker . 1679) . -1) ("よ" . -1272) ((marker . 1679) . -1) ("い" . -1273) ((marker . 1679) . -1) 1274 nil (1272 . 1274) nil ("良" . -1272) ((marker . 1679) . -1) ("い" . -1273) ((marker . 1679) . -1) 1274 nil (1264 . 1274) nil ("他の" . -1264) ((marker . 1679) . -2) 1266 nil ("環境では" . -1266) ((marker . 1679) . -4) 1270 nil ("使えないかもしれない" . -1270) ((marker . 1679) . -10) 1280 (t 26559 13131 719847 855000) nil (1264 . 1280) nil (1258 . 1264) nil (1245 . 1258) nil ("V" . -1245) ((marker . 1679) . -1) ("O" . -1246) ((marker . 1679) . -1) 1247 nil (1231 . 1247) nil (1230 . 1231) (t 26559 13095 10510 660000) nil (2496 . 2499) nil (2495 . 2496) nil (2485 . 2495) ("auto" . -2485) ((marker . 1712) . -4) ((marker . 568) . -4) ((marker . 1679) . -4) 2489 nil (2482 . 2489) nil (2481 . 2482) nil (nil rear-nonsticky nil 2649 . 2650) (nil fontified nil 2482 . 2650) (2482 . 2650) nil (2481 . 2485) (t 26559 12947 463169 187000) nil (927 . 932) nil ("の" . -927) ((marker . 1679) . -1) ("場" . -928) ((marker . 1679) . -1) ("合" . -929) ((marker . 1679) . -1) 930 nil ("の" . -930) ((marker . 1679) . -1) ("み" . -931) ((marker . 1679) . -1) ("変" . -932) ((marker . 1679) . -1) ("数" . -933) ((marker . 1679) . -1) ("を" . -934) ((marker . 1679) . -1) ("宣" . -935) ((marker . 1679) . -1) ("言" . -936) ((marker . 1679) . -1) 937 (t 26559 12913 877623 163000) nil (919 . 937) (919 . 920) nil ("
" . 919) (";; macOSの場合のみ変数を宣言" . 919) (t 26559 12913 877623 163000) nil ("
" . -1222) ((marker . 1381) . -1) ((marker . 1679) . -1) ((marker . 1712) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 568) . -1) ((marker . 1679) . -1) 1223 nil (";; コマンドキーを Ctrl キーにする
(setq mac-command-modifier 'control)

;; オプションキーを Meta キーにする
(setq mac-option-modifier 'meta)
" . 1223) ((marker . 1679) . -116) ((marker . 1712) . -115) ((marker . 1679) . -115) ((marker . 1679) . -115) ((marker . 1679) . -115) ((marker . 1679) . -115) ((marker . 1679) . -115) ((marker . 1679) . -115) ((marker . 1679) . -115) ((marker . 1679) . -115) ((marker . 1679) . -115) ((marker . 1679) . -115) ((marker . 1679) . -115) ((marker . 1679) . -116) ((marker . 1679) . -115) ((marker . 1679) . -116) ((marker . 1679) . -115) ((marker . 1679) . -115) ((marker . 1679) . -115) ((marker . 1679) . -115) ((marker . 1679) . -115) ((marker . 1679) . -115) ((marker . 568) . -115) ((marker . 1679) . -116) 1339 nil (nil rear-nonsticky nil 1220 . 1221) (nil fontified nil 919 . 1221) (919 . 1221) nil (918 . 920) (t 26559 12831 214738 989000) nil (2317 . 2877) 1034 (t 26559 12682 662528 626000) nil ("
" . -1034) ((marker . 1381) . -1) ((marker . 1679) . -1) ((marker . 1712) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 568) . -1) ((marker . 1679) . -1) 1035 nil ("

;; Command キーを Control キーに変更
(setq mac-command-modifier 'control)
" . 1035) ((marker . 1679) . -68) ((marker . 1712) . -21) ((marker . 1679) . -2) ((marker . 1679) . -2) ((marker . 1679) . -2) ((marker . 1679) . -2) ((marker . 1679) . -2) ((marker . 1679) . -2) ((marker . 1679) . -2) ((marker . 1679) . -2) ((marker . 1679) . -2) ((marker . 1679) . -2) ((marker . 1679) . -2) ((marker . 1679) . -2) ((marker . 1679) . -67) ((marker . 1679) . -68) ((marker . 1679) . -68) ((marker . 1679) . -68) ((marker . 1679) . -68) ((marker . 568) . -21) ((marker . 1679) . -68) 1103 nil (nil rear-nonsticky nil 1034 . 1035) (nil fontified nil 919 . 1035) (919 . 1035) nil (918 . 920) nil (948 . 984) nil ("(setq mac-command-modifier 'control)" . 948) ((marker . 1679) . -36) nil (58 . 917) nil (1392 . 1487) nil (1391 . 1392) nil (58 . 60) nil ("

" . 124) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) nil (";; オプションキーを Meta キーにする
(setq mac-option-modifier 'meta)
" . 125) ((marker . 1679) . -55) ((marker . 1679) . -56) (nil fontified t 133 . 148) (nil fontified t 128 . 133) (nil fontified t 125 . 128) (nil rear-nonsticky t 180 . 181) nil (180 . 181) nil (128 . 133) nil ("Opttio" . 128) ((marker . 1679) . -6) nil (133 . 134) nil (128 . 133) nil ("Option " . 128) nil (182 . 183) nil (1 . 58) (t 26559 12523 933569 988000) nil (";;; init.el --- My init.el  -*- lexical-binding: t; -*-

" . 1) ((marker . 1679) . -57) ((marker . 105) . -57) ((marker . 1679) . -57) ((marker . 1679) . -57) ((marker . 1679) . -57) ((marker . 1679) . -57) ((marker . 1679) . -57) ((marker . 1679) . -57) ((marker . 1679) . -57) ((marker . 1679) . -57) ((marker . 1679) . -57) ((marker . 1679) . -57) ((marker . 1679) . -57) ((marker . 1679) . -57) ((marker . 88) . -57) ((marker . 1679) . -57) 58 (t 26559 12494 132902 848000) nil ("
" . -182) ((marker . 1679) . -1) 183 (t 26559 12492 336771 583000) nil (128 . 135) nil ("Optti" . -128) ((marker . 1679) . -5) 133 nil ("o" . -133) ((marker . 1679) . -1) 134 nil (128 . 134) nil ("オプション" . -128) ((marker . 1679) . -5) 133 nil ("
" . -180) ((marker . 1679) . -1) 181 nil (nil rear-nonsticky nil 180 . 181) (nil fontified nil 125 . 181) (125 . 181) nil (124 . 126) nil ("
" . -58) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ("
" . -59) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) 60 (t 26559 12476 438795 837000) nil ("
" . -1391) ((marker . 1381) . -1) ((marker . 1679) . -1) ((marker . 10498) . -1) ((marker . 1679) . -1) 1392 nil ("(provide 'init)

;; Local Variables:
;; indent-tabs-mode: nil
;; End:

;;; init.el ends here


" . 1392) ((marker . 1679) . -95) ((marker . 10498) . -92) ((marker . 1679) . -95) 1487 nil ("(eval-and-compile
  (when (or load-file-name byte-compile-current-file)
    (setq user-emacs-directory
          (expand-file-name
           (file-name-directory (or load-file-name byte-compile-current-file))))))

(eval-and-compile
  (customize-set-variable
   'package-archives '((\"gnu\"   . \"https://elpa.gnu.org/packages/\")
                       (\"melpa\" . \"https://melpa.org/packages/\")
                       (\"org\"   . \"https://orgmode.org/elpa/\")))
  (package-initialize)
  (unless (package-installed-p 'leaf)
    (package-refresh-contents)
    (package-install 'leaf))

  (leaf leaf-keywords
    :ensure t
    :init
    ;; optional packages if you want to use :hydra, :el-get, :blackout,,,
    (leaf hydra :ensure t)
    (leaf el-get :ensure t)
    (leaf blackout :ensure t)

    :config
    ;; initialize leaf-keywords.el
    (leaf-keywords-init)))
" . 58) ((marker . 1679) . -859) ((marker . 105) . -17) ((marker . 1679) . -859) 917 nil (948 . 984) nil (947 . 948) nil (938 . 947) nil (936 . 938) nil ("t" . -936) ((marker . 1679) . -1) 937 nil (919 . 937) nil ("
" . 919) ((marker . 1712) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 568) . -1) (";; macOSの場合のみ変数を宣言" . 919) nil (938 . 939) nil (";; コマンドキーを Ctrl キーにする
(setq mac-command-modifier 'control)

;; オプションキーを Meta キーにする
(setq mac-option-modifier 'meta)
" . 939) ((marker . 1679) . -116) ((marker . 1679) . -116) 1055 (t 26559 12295 41803 423000) nil ("
" . 938) nil (938 . 939) (t 26559 12295 41803 423000) nil ("(when (eq system-type 'sequoia)
  (defvar mac-command-modifier 'control \"macOS command modifier\")
  (defvar mac-option-modifier 'meta \"macOS option modifier\")

)
" . 938) ((marker . 1679) . -162) ((marker . 1679) . -162) ((marker . 1679) . -162) ((marker . 1679) . -162) ((marker . 1679) . -162) ((marker . 1679) . -162) ((marker . 1679) . -160) ((marker . 1679) . -34) ((marker . 1679) . -160) ((marker . 1679) . -162) 1100 nil ("  " . -1184) nil ("  " . -1161) nil ("  " . -1123) nil ("  " . -1101) nil (nil rear-nonsticky nil 1224 . 1225) (nil fontified nil 1197 . 1225) (nil fontified nil 1193 . 1197) (nil fontified nil 1192 . 1193) (nil fontified nil 1190 . 1192) (nil fontified nil 1170 . 1190) (nil fontified nil 1167 . 1170) (nil fontified nil 1165 . 1167) (nil fontified nil 1164 . 1165) (nil fontified nil 1162 . 1164) (nil fontified nil 1158 . 1162) (nil fontified nil 1132 . 1158) (nil fontified nil 1128 . 1132) (nil fontified nil 1127 . 1128) (nil fontified nil 1125 . 1127) (nil fontified nil 1106 . 1125) (nil fontified nil 1103 . 1106) (nil fontified nil 1101 . 1103) (1101 . 1225) nil (1100 . 1101) nil ("  ;; コマンドキーを Ctrl キーにする
  (setq mac-command-modifier 'control)

  ;; オプションキーを Meta キーにする
  (setq mac-option-modifier 'meta)
" . 1098) ((marker . 1679) . -124) ((marker . 1679) . -124) 1222 nil (" " . -1222) ((marker . 1679) . -1) (" " . -1223) ((marker . 1679) . -1) 1224 nil (1221 . 1224) (t 26559 12209 859039 243000) nil (apply 21 938 1223 undo--wrap-and-run-primitive-undo 938 1223 ((";; " . -1187) (";; " . -1162) (";; " . -1122) (";; " . -1098) (";; " . -1036) (";; " . -970) (";; " . -938) 1244)) nil ("(when (eq system-type 'darwin)
  (setq
   ns-command-modifier 'control
   ns-option-modifier 'meta
   ns-control-modifier 'super
   ns-function-modifier 'hyper))


" . 938) ((marker . 1679) . -164) ((marker . 1712) . -23) ((marker . 1679) . -163) ((marker . 568) . -23) ((marker . 1679) . -164) 1102 (t 26559 12191 856229 395000) nil (961 . 967) nil ("s" . 961) ((marker . 1712) . -1) ((marker . 568) . -1) ((marker . 1679) . -1) nil (961 . 962) nil ("sequoia" . 961) ((marker . 1712) . -4) ((marker . 568) . -4) (967 . 968) ("a" . 967) (t 26559 12158 266242 20000) nil (967 . 968) ("a" . -967) (961 . 968) nil ("s" . -961) ((marker . 1712) . -1) ((marker . 568) . -1) ((marker . 1679) . -1) 962 nil (961 . 962) nil ("darwin" . -961) ((marker . 1679) . -6) 967 nil (apply -21 1101 1409 undo--wrap-and-run-primitive-undo 1101 1409 ((1369 . 1372) (1341 . 1344) (1298 . 1301) (1271 . 1274) (1206 . 1209) (1137 . 1140) (1102 . 1105) 1387)) nil (nil rear-nonsticky nil 1098 . 1099) (nil fontified nil 938 . 1099) (938 . 1099) nil (937 . 940) (t 26559 12065 676560 688000) nil (1155 . 1159) nil (1152 . 1155) nil ("super" . -1152) ((marker . 1679) . -5) 1157 nil (1002 . 1009) nil ("super" . -1002) ((marker . 1679) . -5) 1007 (t 26559 11946 882500 915000) nil (961 . 968) nil ("darwin" . 961) nil (1149 . 1154) nil ("control" . 1149) ((marker . 1679) . -7) nil (apply 12 1095 1221 undo--wrap-and-run-primitive-undo 1095 1221 ((";; " . 1097) (";; " . 1124) (";; " . 1167) (";; " . 1195) 1232)) nil (apply -12 1095 1233 undo--wrap-and-run-primitive-undo 1095 1233 ((1195 . 1198) (1167 . 1170) (1124 . 1127) (1097 . 1100) 1006)) nil (1001 . 1006) nil ("control" . 1001) nil (961 . 967) nil ("seq" . 961) ((marker . 1712) . -3) ((marker . 568) . -3) ((marker . 1679) . -3) nil (961 . 964) nil ("darwin" . -961) ((marker . 1679) . -6) 967 nil (1001 . 1008) nil ("super" . -1001) ((marker . 1679) . -5) 1006 nil (apply 12 1095 1221 undo--wrap-and-run-primitive-undo 1095 1221 ((";; " . 1097) (";; " . 1124) (";; " . 1167) (";; " . 1195) 1232)) nil (apply -12 1095 1233 undo--wrap-and-run-primitive-undo 1095 1233 ((1195 . 1198) (1167 . 1170) (1124 . 1127) (1097 . 1100) 1156)) nil (1149 . 1156) nil ("super" . 1149) nil (961 . 967) nil ("sequoia" . 961) ((marker . 1712) . -4) ((marker . 568) . -4) (t 26559 11946 882500 915000) nil (961 . 968) nil ("sequoia" . 961) ((marker . 1712) . -4) ((marker . 568) . -4) (t 26559 11946 882500 915000) nil (961 . 968) nil ("sequoia" . 961) ((marker . 1712) . -4) ((marker . 568) . -4) (t 26559 11946 882500 915000) nil (961 . 968) nil ("darwin" . 961) nil (1149 . 1154) nil ("super" . 1149) nil (961 . 967) nil ("sequoia" . 961) ((marker . 1712) . -4) ((marker . 568) . -4) (t 26559 11946 882500 915000) nil (961 . 968) nil ("sequoia" . 961) ((marker . 1712) . -4) ((marker . 568) . -4) (t 26559 11946 882500 915000) nil (961 . 968) nil ("sequoia" . 961) ((marker . 1712) . -4) ((marker . 568) . -4) (t 26559 11946 882500 915000) nil (961 . 968) nil ("darwin" . -961) ((marker . 1679) . -6) 967 (t 26559 11902 83668 41000) nil (1149 . 1154) nil ("control" . -1149) ((marker . 1679) . -7) 1156 (t 26559 11898 925972 823000) nil (apply 12 1095 1221 undo--wrap-and-run-primitive-undo 1095 1221 ((";; " . 1097) (";; " . 1124) (";; " . 1167) (";; " . 1195) 1232)) nil (apply -12 1095 1233 undo--wrap-and-run-primitive-undo 1095 1233 ((1195 . 1198) (1167 . 1170) (1124 . 1127) (1097 . 1100) 1220)) nil (1001 . 1006) nil ("control" . -1001) ((marker . 1679) . -7) 1008 (t 26559 11833 957974 508000) nil (969 . 971) nil (" " . -969) ((marker . 1679) . -1) (" " . -970) ((marker . 1679) . -1) 971 nil ("
;; コマンドキーを Ctrl キーにする
(setq mac-command-modifier 'control)

;; オプションキーを Meta キーにする
(setq mac-option-modifier 'meta)
" . 1222) ((marker . 1679) . -117) ((marker . 1679) . -1) ((marker . 1679) . -23) ((marker . 1679) . -1) ((marker . 1679) . -117) ((marker . 1679) . -117) 1339 nil (nil rear-nonsticky nil 1220 . 1221) (nil fontified nil 919 . 1221) (919 . 1221) nil (917 . 919) (t 26559 11751 942839 44000) nil ("下記のような init.el を書いたところ、バイトコンパイル時に次のような警告が出ました。

In toplevel form:
init.el:9:2: Warning: Package autoload is deprecated
init.el:33:7: Warning: assignment to free variable ‘mac-command-modifier’
init.el:36:7: Warning: assignment to free variable ‘mac-option-modifier’



" . 1) ((marker . 1679) . -269) ((marker . 1712) . -11) ((marker . 1) . -48) ((marker . 1) . -267) ((marker . 568) . -11) ((marker . 1679) . -269) 270 nil ("これはどういう意味でしょうか？また、どのように修正すればよいでしょうか？" . 268) ((marker . 1) . -36) nil (268 . 304) nil (267 . 268) nil ("
" . 49) nil ("
" . 49) ("emacs --batch -f batch-byte-compile init.el" . 49) nil (nil rear-nonsticky nil 310 . 311) (nil fontified nil 49 . 311) (49 . 311) nil (47 . 49) nil (34 . 39) nil ("つ" . -34) ((marker . 1679) . -1) ("ご" . -35) ((marker . 1679) . -1) 36 nil (34 . 36) nil (42 . 43) nil (41 . 42) ("。" . -41) (24 . 42) nil (10 . 24) nil (1 . 10) nil (1 . 3) nil (apply 12 919 1036 undo--wrap-and-run-primitive-undo 919 1036 ((";; " . 919) (";; " . 944) (";; " . 985) (";; " . 1011) 273)) nil (apply -12 919 1048 undo--wrap-and-run-primitive-undo 919 1048 ((1011 . 1014) (985 . 988) (944 . 947) (919 . 922) 1035)) nil ("e" . -2393) ((marker . 1712) . -1) ((marker . 568) . -1) ((marker . 1679) . -1) 2394 nil (2393 . 2394) nil ("e" . -2393) ((marker . 1712) . -1) ((marker . 568) . -1) ((marker . 1679) . -1) 2394 nil (2393 . 2394) (t 26559 11390 45944 615000) nil (2392 . 2395) nil ("
" . -2392) ((marker . 1712) . -1) ((marker . 10498) . -1) ((marker . 568) . -1) ((marker . 1679) . -1) ("e" . -2393) ((marker . 1712) . -1) ((marker . 568) . -1) ((marker . 1679) . -1) 2394 nil (2393 . 2394) (t 26559 11248 242058 644000) nil (919 . 2299) nil (918 . 919) nil (917 . 918) nil ("

" . 57) ((marker . 1381) . -1) ((marker . 1679) . -1) nil (";; コマンドキーを Ctrl キーにする
(setq mac-command-modifier 'control)

;; オプションキーを Meta キーにする
(setq mac-option-modifier 'meta)

;; キーバインドの設定
(define-key global-map (kbd \"C-q\") 'Control-X-prefix)
(define-key global-map (kbd \"C-j\") 'mode-specific-command-prefix)
(define-key global-map (kbd \"C-q C-o\") 'save-buffer)
(define-key global-map (kbd \"C-q C-j\") 'save-buffers-kill-emacs)
(define-key global-map (kbd \"C-q C-a\") 'write-file)
(define-key global-map (kbd \"C-l\") 'set-mark-command)
(define-key global-map (kbd \"C-z\") 'kill-region)
(define-key global-map (kbd \"C-u\") 'forward-char)
(define-key global-map (kbd \"C-x\") 'backward-char)
(define-key global-map (kbd \"C-q x\") 'switch-to-buffer)
(define-key global-map (kbd \"C-q C-u\") 'find-file)
(define-key global-map (kbd \"C-r\") 'isearch-backward)
(define-key global-map (kbd \"C-p\") 'other-window)
(define-key global-map (kbd \"C-o\") 'split-window-horizontally)
(define-key global-map (kbd \"M-u\") 'forward-word)
(define-key global-map (kbd \"M-x\") 'backward-word)
(define-key global-map (kbd \"M-q\") 'execute-extended-command)
(define-key global-map (kbd \"C-j C-l\") 'comment-region)
(define-key global-map (kbd \"C-j C-r\") 'uncomment-region)
(define-key global-map (kbd \"M-p\") 'previous-buffer)
(define-key global-map (kbd \"M-k\") 'next-buffer)
(define-key global-map (kbd \"C-j t j\") 'compile)
(define-key global-map (kbd \"C-q C-f\") 'magit-status)
" . 58) ((marker . 1679) . -1380) (nil fontified t 61 . 80) (nil fontified t 85 . 117) (nil fontified t 117 . 118) (nil fontified t 121 . 141) (nil fontified t 146 . 174) (nil fontified t 174 . 175) (nil fontified t 178 . 188) (nil fontified t 221 . 242) (nil fontified t 275 . 308) (nil fontified t 345 . 361) (nil fontified t 398 . 426) (nil fontified t 463 . 478) (nil fontified t 511 . 532) (nil fontified t 565 . 581) (nil fontified t 614 . 631) (nil fontified t 664 . 682) (nil fontified t 717 . 738) (nil fontified t 775 . 789) (nil fontified t 822 . 843) (nil fontified t 876 . 893) (nil fontified t 926 . 956) (nil fontified t 989 . 1006) (nil fontified t 1039 . 1057) (nil fontified t 1090 . 1119) (nil fontified t 1156 . 1175) (nil fontified t 1212 . 1233) (nil fontified t 1266 . 1286) (nil fontified t 1319 . 1335) (nil fontified t 1372 . 1384) (nil rear-nonsticky t 1437 . 1438) nil (1437 . 1438) (t 26559 11227 970824 217000) nil ("
" . -1437) ((marker . 1679) . -1) 1438 nil (nil rear-nonsticky nil 1437 . 1438) (nil fontified nil 1437 . 1438) (nil fontified nil 1421 . 1437) (nil fontified nil 1412 . 1421) (nil fontified nil 1384 . 1412) (nil fontified nil 1372 . 1384) (nil fontified nil 1363 . 1372) (nil fontified nil 1319 . 1363) (nil fontified nil 1314 . 1319) (nil fontified nil 1266 . 1314) (nil fontified nil 1261 . 1266) (nil fontified nil 1212 . 1261) (nil fontified nil 1203 . 1212) (nil fontified nil 1156 . 1203) (nil fontified nil 1147 . 1156) (nil fontified nil 1090 . 1147) (nil fontified nil 1085 . 1090) (nil fontified nil 1039 . 1085) (nil fontified nil 1034 . 1039) (nil fontified nil 989 . 1034) (nil fontified nil 984 . 989) (nil fontified nil 926 . 984) (nil fontified nil 921 . 926) (nil fontified nil 876 . 921) (nil fontified nil 871 . 876) (nil fontified nil 822 . 871) (nil fontified nil 817 . 822) (nil fontified nil 775 . 817) (nil fontified nil 766 . 775) (nil fontified nil 717 . 766) (nil fontified nil 710 . 717) (nil fontified nil 664 . 710) (nil fontified nil 659 . 664) (nil fontified nil 614 . 659) (nil fontified nil 609 . 614) (nil fontified nil 581 . 609) (nil fontified nil 565 . 581) (nil fontified nil 560 . 565) (nil fontified nil 532 . 560) (nil fontified nil 511 . 532) (nil fontified nil 506 . 511) (nil fontified nil 463 . 506) (nil fontified nil 454 . 463) (nil fontified nil 398 . 454) (nil fontified nil 389 . 398) (nil fontified nil 345 . 389) (nil fontified nil 336 . 345) (nil fontified nil 275 . 336) (nil fontified nil 270 . 275) (nil fontified nil 242 . 270) (nil fontified nil 221 . 242) (nil fontified nil 216 . 221) (nil fontified nil 188 . 216) (nil fontified nil 178 . 188) (nil fontified nil 175 . 178) (nil fontified nil 174 . 175) (nil fontified nil 146 . 174) (nil fontified nil 142 . 146) (nil fontified nil 141 . 142) (nil fontified nil 121 . 141) (nil fontified nil 118 . 121) (nil fontified nil 117 . 118) (nil fontified nil 85 . 117) (nil fontified nil 81 . 85) (nil fontified nil 80 . 81) (nil fontified nil 61 . 80) (nil fontified nil 58 . 61) (58 . 1438) nil (57 . 59) nil ("
" . -917) ((marker . 1381) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) 918 nil ("
" . -918) ((marker . 1381) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) ((marker . 1679) . -1) 919 nil (";; コマンドキーを Ctrl キーにする
(setq mac-command-modifier 'control)

;; オプションキーを Meta キーにする
(setq mac-option-modifier 'meta)

;; キーバインドの設定
(define-key global-map (kbd \"C-q\") 'Control-X-prefix)
(define-key global-map (kbd \"C-j\") 'mode-specific-command-prefix)
(define-key global-map (kbd \"C-q C-o\") 'save-buffer)
(define-key global-map (kbd \"C-q C-j\") 'save-buffers-kill-emacs)
(define-key global-map (kbd \"C-q C-a\") 'write-file)
(define-key global-map (kbd \"C-l\") 'set-mark-command)
(define-key global-map (kbd \"C-z\") 'kill-region)
(define-key global-map (kbd \"C-u\") 'forward-char)
(define-key global-map (kbd \"C-x\") 'backward-char)
(define-key global-map (kbd \"C-q x\") 'switch-to-buffer)
(define-key global-map (kbd \"C-q C-u\") 'find-file)
(define-key global-map (kbd \"C-r\") 'isearch-backward)
(define-key global-map (kbd \"C-p\") 'other-window)
(define-key global-map (kbd \"C-o\") 'split-window-horizontally)
(define-key global-map (kbd \"M-u\") 'forward-word)
(define-key global-map (kbd \"M-x\") 'backward-word)
(define-key global-map (kbd \"M-q\") 'execute-extended-command)
(define-key global-map (kbd \"C-j C-l\") 'comment-region)
(define-key global-map (kbd \"C-j C-r\") 'uncomment-region)
(define-key global-map (kbd \"M-p\") 'previous-buffer)
(define-key global-map (kbd \"M-k\") 'next-buffer)
(define-key global-map (kbd \"C-j t j\") 'compile)
(define-key global-map (kbd \"C-q C-f\") 'magit-status)
" . 919) ((marker . 1679) . -1380) ((marker . 1679) . -1380) 2299 (t 26559 11185 875331 121000) nil (apply 12 919 1035 undo--wrap-and-run-primitive-undo 919 1035 ((";; " . -1002) (";; " . -979) (";; " . -941) (";; " . -919) 1047)) nil (apply -12 919 1061 undo--wrap-and-run-primitive-undo 919 1061 ((1011 . 1014) (985 . 988) (944 . 947) (919 . 922) 1036)) nil (919 . 1036) nil (";; コマンドキーを Ctrl キーにする
(setq mac-command-modifier 'control)

;; オプションキーを Meta キーにする
(setq mac-option-modifier 'meta)

" . 919) ((marker . 1679) . -117) ((marker . 1679) . -117) 1036 (t 26559 11009 874564 863000) nil ("
" . -2298) ((marker . 1679) . -1) 2299 nil ("
" . 1393) (";; (define-key global-map (kbd \"C-t\") 'kill-line)" . 1393) nil ("
" . -2348) ((marker . 1679) . -1) 2349 nil (nil rear-nonsticky nil 2348 . 2349) (nil fontified nil 919 . 2349) (919 . 2349) nil (918 . 919) nil (918 . 920) nil ("
" . 918) (";; ここにいっぱい設定を書く" . 918) (t 26559 10938 822071 132000) nil (1027 . 1028) 75 nil (";; Copyright (C) 2020  Naoya Yamashita

;; Author: Naoya Yamashita <conao3@gmail.com>

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; My init.el.

;;; Code:

;; this enables this running method
;;   emacs -q -l ~/.debug.emacs.d/init.el
" . 58) ((marker . 1679) . -852) ((marker . 1679) . -852) 910 nil (nil rear-nonsticky nil 1878 . 1879) (nil fontified nil 1 . 1879) (1 . 1879) (t . -1)))
