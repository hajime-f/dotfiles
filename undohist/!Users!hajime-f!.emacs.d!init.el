
((digest . "478944aeb0765c16748089419e7887c0") (undo-list nil (apply 33 9050 9463 undo--wrap-and-run-primitive-undo 9050 9463 ((";; " . -9432) (";; " . -9362) (";; " . -9350) (";; " . -9334) (";; " . -9312) (";; " . -9259) (";; " . -9214) (";; " . -9120) (";; " . -9082) (";; " . -9068) (";; " . -9050) 9496)) nil (818 . 10036) (";; (leaf el-get :ensure t)
    (leaf blackout :ensure t)

    :config
    ;; initialize leaf-keywords.el
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
  :bind ((\"C-c e\" . macrostep-expand)))

(leaf cus-edit
  :doc \"tools for customizing Emacs and Lisp packages\"
  :tag \"builtin\" \"faces\" \"help\"
  :custom `((custom-file . ,(locate-user-emacs-file \"custom.el\"))))


;;; 
;;; 操作に関する設定
;;; 

;; macOS 用の設定
(when (eq system-type 'darwin)
  (defvar mac-command-modifier 'control \"macOS command modifier\")
  (defvar mac-option-modifier 'meta \"macOS option modifier\")

  ;; コマンドキーを Ctrl キーにする
  (setq mac-command-modifier 'control)

  ;; オプションキーを Meta キーにする
  (setq mac-option-modifier 'meta))

;; キーバインドの設定
;; KINESIS キーボードと Dvorak 配列に特化した設定のため、真似しない方がいいかもしれない
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

;; 画像ファイルを表示する
(auto-image-file-mode t)


;;; 
;;; その他の設定
;;; 

;; バックアップとオートセーブファイルを~/.emacs.d/backups/へ集める
(add-to-list 'backup-directory-alist
(cons \".\" \"~/.emacs.d/backups/\"))
(setq auto-save-file-name-transforms
`((\".*\" ,(expand-file-name \"~/.emacs.d/backups/\") t)))

;; autorevert
(global-auto-revert-mode t)

;; zsh
(defun toggle-zsh-window ()
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
            (define-key global-map (kbd \"C-'\") 'toggle-zsh-window)))

;; 自動補完（company）
(leaf company
  :doc \"Modular text completion framework\"
  :req \"emacs-24.3\"
  :tag \"matching\" \"convenience\" \"abbrev\" \"emacs>=24.3\"
  :url \"http://company-mode.github.io/\"
  :emacs>= 24.3
  :ensure t
  :leaf-defer nil
  :bind ((company-active-map
          (\"M-n\" . nil)
          (\"M-p\" . nil)
          (\"C-s\" . company-filter-candidates)
          (\"C-n\" . company-select-next)
          (\"C-p\" . company-select-previous)
          (\"C-f\" . company-complete-selection))
         (company-search-map
          (\"C-n\" . company-select-next)
          (\"C-p\" . company-select-previous)))
  :custom ((company-idle-delay . 0)
           (company-minimum-prefix-length . 1)
           (company-transformers . '(company-sort-by-occurrence)))
  :global-minor-mode global-company-mode)

;; (with-eval-after-load 'company
;;   ;; disable inline previews
;;   (delq 'company-preview-if-just-one-frontend company-frontends))

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
				  `(,(rx \"/.git/COMMIT_EDITMSG\" eot))
				  nil nil \"Customized with use-package undohist\")))
  :require t
  :config
  (undohist-initialize))

;; magit
(leaf magit
  :ensure t
  :bind
  ((\"C-q C-f\" . magit-status)))

;; Smartparens
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

;; タブ
(leaf tab-bar-mode
  :init
  (defvar my:ctrl-o-map (make-sparse-keymap)
    \"My original keymap binded to C-o.\")
  (defalias 'my:ctrl-o-prefix my:ctrl-o-map)
  (define-key global-map (kbd \"C-<up>\") 'tab-bar-switch-to-prev-tab)
  (define-key global-map (kbd \"C-<down>\") 'tab-bar-switch-to-next-tab)
  (define-key global-map (kbd \"C-t\") 'tab-bar-new-tab)
  (define-key global-map (kbd \"C-w\") 'tab-bar-close-tab)
  :custom
  ((tab-bar-new-tab-choice . \"*scratch*\"))
  :config
  (tab-bar-mode t)
  (face-spec-set 'tab-bar-tab '((((background light)) (:background \"gold\")) (((background dark)) (:background \"#808080\")))))



;; ;; GitHub Copilot
;; (require 'copilot)
;; (setq copilot-node-executable \"~/.nvm/versions/node/v19.9.0/bin/node\")
;; (add-hook 'prog-mode-hook 'copilot-mode)
;; (define-key copilot-completion-map (kbd \"C-f\") 'copilot-accept-completion)

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
;;   :after editorconfig jsonrpc)


;; emojify
(leaf emojify
  :tag \"core\" \"font\"
  :ensure t
  :when window-system
  :hook (after-init-hook . global-emojify-mode)
  :bind
  (\"C-q C-e\" . emojify-insert-emoji)
  :custom
  (emojify-emoji-styles . '(unicode github)))


(provide 'init)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(blackou" . 818) ((marker . 9050) . -2727) ((marker . 818) . -864) ((marker . 818) . -2245) ((marker . 818) . -2770) ((marker . 818) . -7673) ((marker . 818) . -7675) ((marker . 818) . -8238) ((marker . 9463) . -2727) ((marker . 818) . -2770) ((marker . 818) . -2770) ((marker . 818) . -8235) ((marker . 818) . -8238) ((marker . 818) . -8238) ((marker . 818) . -8235) ((marker* . 10003) . 6462) ((marker . 818) . -2752) ((marker . 818) . -2752) ((marker . 818) . -2752) ((marker . 818) . -2752) ((marker . 818) . -2752) ((marker . 818) . -2752) ((marker* . 10003) . 6462) ((marker . 818) . -2752) ((marker . 818) . -2752) ((marker . 818) . -2752) ((marker . 818) . -2752) ((marker . 818) . -2752) ((marker . 818) . -2752) ((marker . 818) . -8679) ((marker . 818) . -2770) ((marker . 818) . -2770) ((marker . 818) . -2770) ((marker . 818) . -2770) ((marker . 818) . -2215) ((marker . 818) . -2770) 3588 (t 26560 6339 447881 755000) nil ("el-get " . 10034) 3588 (t 26560 6325 616462 540000) nil (818 . 821) 3585 (t 26560 4684 882405 836000) nil ("
" . 3585) ((marker . 818) . -1) ("(scroll-bar-mode 0)" . 3585) nil ("、スクロールバー" . 3542) ((marker . 9463) . -8) ((marker) . -8) 3550 nil (3536 . 3537) nil ("、" . -3536) ((marker) . -1) 3537 (t 26560 4405 317921 574000) nil ("


" . 3593) ((marker . 9050) . -1) ((marker . 818) . -1) ((marker . 818) . -1) ((marker . 818) . -1) ((marker) . -1) nil ("

" . 3616) ((marker . 818) . -1) ((marker) . -1) nil ("Warning: the function ‘scroll-bar-mode’ is not known to be defined." . 3617) (nil rear-nonsticky t 3683 . 3684) nil ("init." . 3594) ((marker . 818) . -4) ((marker . 818) . -4) ((marker) . -4) ((marker) . -5) nil ("el に、" . 3599) nil ("

" . 3625) ((marker) . -2) nil ("と書くと、" . 3627) nil ("

" . 3701) ((marker) . -2) nil ("という" . 3703) ((marker) . -3) nil ("警告が出ます。なぜでしょうか？" . 3706) ((marker) . -15) nil (3706 . 3721) nil (3703 . 3706) nil (3701 . 3703) nil (3627 . 3632) nil (3625 . 3627) nil (3599 . 3604) nil (3594 . 3599) nil (nil rear-nonsticky nil 3683 . 3684) (nil fontified nil 3617 . 3684) (3617 . 3684) nil (3616 . 3618) nil (3593 . 3596) (t 26560 4405 317921 574000) nil ("
" . 3575) ((marker) . -1) nil (3575 . 3576) (t 26560 4405 317921 574000) nil ("
" . 3575) ((marker* . 10003) . 1) ((marker) . -1) ((marker . 818) . -1) ((marker . 818) . -1) ((marker . 818) . -1) ((marker . 818) . -1) ((marker . 818) . -1) ((marker) . -1) ((marker . 818) . -1) nil (3575 . 3576) (t 26560 4405 317921 574000) nil ("
" . 3575) ((marker* . 10003) . 1) ((marker) . -1) ((marker . 818) . -1) ((marker . 818) . -1) ((marker . 818) . -1) ((marker . 818) . -1) ((marker . 818) . -1) ((marker) . -1) ((marker . 818) . -1) nil (3575 . 3576) (t 26560 4405 317921 574000) nil (8841 . 9002) ("GitHub Copilot
(require 'copilot)
(setq copilot-node-executable \"~/.nvm/versions/node/v19.9.0/bin/node\")
(add-hook 'prog-mode-hook 'copilot-mode)
" . 8841) 9508 (t 26560 4371 140038 471000) nil (8841 . 8987) (";; GitHub Copilot
;; (require 'copilot)
;; (setq copilot-node-executable \"~/.nvm/versions/node/v19.9.0/bin/node\")
;; (add-hook 'prog-mode-hook 'copilot-mode)
;; " . 8841) 9523 (t 26560 4321 610300 278000) nil (9081 . 9493) ("GitHub Copilot
(leaf copilot
  :doc \"An unofficial Copilot plugin\"
  :req \"emacs-27.2\" \"s-1.12.0\" \"dash-2.19.1\" \"editorconfig-0.8.2\" \"jsonrpc-1.0.14\" \"f-0.20.0\"
  :tag \"copilot\" \"convenience\" \"emacs>=27.2\"
  :url \"https://github.com/copilot-emacs/copilot.el\"
  :added \"2025-02-27\"
  :emacs>= 27.2
  :ensure t
  :bind  (copilot-completion-map (\"C-f\" . copilot-accept-completion))
" . 9081) ((marker . 818) . -309) ((marker . 818) . -309) ((marker . 818) . -309) ((marker . 818) . -309) ((marker . 818) . -309) ((marker . 818) . -309) ((marker) . -309) 9490 (t 26560 4311 470094 236000) nil ("
" . -9489) ((marker . 9050) . -1) ((marker . 9463) . -1) ((marker) . -1) 9490 nil ("  :config
  (setq copilot-node-executable \"~/.nvm/versions/node/v17.9.1/bin/node\")" . 9490) ((marker . 9463) . -82) ((marker) . -82) 9572 (t 26560 4251 291573 508000) nil (apply 39 9078 9574 undo--wrap-and-run-primitive-undo 9078 9574 ((";; " . -9500) (";; " . -9490) (";; " . -9460) (";; " . -9390) (";; " . -9378) (";; " . -9362) (";; " . -9340) (";; " . -9287) (";; " . -9242) (";; " . -9148) (";; " . -9110) (";; " . -9096) (";; " . -9078) 9613)) nil ("
" . 9417) (";;   :bind (define-key global-map (kbd \"C-f\") 'copilot-acc)" . 9417) ((marker . 9050) . -10) ((marker . 818) . -10) ((marker . 818) . -11) ((marker . 9463) . -10) ((marker . 818) . -10) ((marker . 818) . -10) ((marker . 818) . -10) ((marker) . -10) nil (9472 . 9475) ("accept" . 9472) ((marker) . -6) nil ("-com" . 9478) ((marker) . -4) nil (9479 . 9482) ("completion" . 9479) nil (9491 . 9563) (9491 . 9492) nil (apply -39 9078 9614 undo--wrap-and-run-primitive-undo 9078 9614 ((9078 . 9081) (9096 . 9099) (9110 . 9113) (9148 . 9151) (9242 . 9245) (9287 . 9290) (9340 . 9343) (9362 . 9365) (9378 . 9381) (9390 . 9393) (9461 . 9464) (9491 . 9494) (9501 . 9504) 9398)) nil ("
" . 9398) (9397 . 9398) ("  " . 9398) nil (9419 . 9422) nil (9412 . 9419) nil ("copilot-mode" . 9412) nil (9412 . 9424) nil ("global-" . 9412) ((marker) . -7) nil ("map" . 9419) nil ("
  " . 9397) ((marker . 9050) . -3) ((marker . 818) . -3) ((marker . 9463) . -3) ((marker . 818) . -3) ((marker . 818) . -3) ((marker . 818) . -3) ((marker) . -3) ((marker) . -3) nil ("(define-key global-map (kbd \"C-c a\") 'some-command)" . 9400) ((marker . 9050) . -38) ((marker . 818) . -38) ((marker . 9463) . -50) ((marker . 818) . -38) ((marker . 818) . -38) ((marker) . -38) ((marker) . -34) (nil rear-nonsticky t 9450 . 9451) nil (9431 . 9434) nil ("6" . 9431) ((marker) . -1) nil (9431 . 9432) nil ("f" . 9431) nil (9436 . 9448) nil ("copilot-accept-comp" . 9436) ((marker . 818) . -9) ((marker . 818) . -9) ((marker) . -9) ((marker) . -19) nil ("la" . 9455) ((marker) . -2) nil (9456 . 9457) nil ("etion" . 9456) nil (9463 . 9527) ("  " . 9463) (9463 . 9465) (9463 . 9464) (t 26560 4218 318599 808000) nil ("
" . 9463) ("  " . -9463) (9463 . 9465) ("  (define-key global-map (kbd \"C-f\") 'copilot-accept-completion)" . 9463) nil (9456 . 9461) nil ("a" . -9456) ((marker) . -1) 9457 nil (9455 . 9457) nil (9436 . 9455) nil ("some-command" . 9436) ((marker . 9463) . -12) ((marker) . -12) 9448 nil (9431 . 9432) nil ("6" . -9431) ((marker) . -1) 9432 nil (9431 . 9432) nil ("c" . -9431) ((marker) . -1) (" " . -9432) ((marker) . -1) ("a" . -9433) ((marker) . -1) 9434 nil (nil rear-nonsticky nil 9450 . 9451) (nil fontified nil 9400 . 9451) (9400 . 9451) nil (9397 . 9400) (t 26560 4135 802445 593000) nil (9419 . 9422) nil (9412 . 9419) nil ("copilot-mode" . 9412) ((marker . 818) . -3) ((marker . 818) . -3) ((marker) . -3) (t 26560 4129 824623 78000) nil (9412 . 9424) nil ("global-" . -9412) ((marker) . -7) 9419 nil ("map" . -9419) ((marker) . -3) 9422 (t 26560 4111 94558 841000) nil (9398 . 9400) (" " . 9397) ((marker . 818) . -1) ((marker) . -1) (9398 . 9399) (t 26560 4083 206194 350000) nil (apply 39 9078 9575 undo--wrap-and-run-primitive-undo 9078 9575 ((";; " . -9501) (";; " . -9491) (";; " . -9461) (";; " . -9390) (";; " . -9378) (";; " . -9362) (";; " . -9340) (";; " . -9287) (";; " . -9242) (";; " . -9148) (";; " . -9110) (";; " . -9096) (";; " . -9078) 9614)) nil ("
" . 9491) (";;   :bind  (copilot-completion-map (\"C-f\" . copilot-accept-completion))" . 9491) nil (9479 . 9489) ("com" . -9479) ((marker . 818) . -3) ((marker) . -3) ((marker) . -3) 9482 nil (9478 . 9482) nil (9472 . 9478) ("acc" . -9472) ((marker . 818) . -3) ((marker) . -3) ((marker) . -3) 9475 nil (9464 . 9475) nil ("tab-" . -9464) ((marker) . -4) 9468 nil ("bar-" . -9468) ((marker) . -4) 9472 nil ("new-" . -9472) ((marker) . -4) 9476 nil ("tab" . -9476) ((marker) . -3) 9479 nil (9459 . 9460) nil ("t" . -9459) ((marker) . -1) 9460 nil (nil rear-nonsticky nil 9479 . 9480) (nil fontified nil 9461 . 9480) (nil fontified nil 9456 . 9461) (nil fontified nil 9428 . 9456) (9428 . 9480) nil (9423 . 9428) nil (" " . -9423) ((marker) . -1) 9424 nil (9417 . 9424) nil (9416 . 9417) (t 26560 3047 515132 434000) nil ("Commentary: " . -5) ((marker . 818) . -7) ((marker) . -7) ((marker) . -12) 17 nil (5 . 17) (t 26559 46295 503608 836000)))
