
((digest . "a2307d7de4a0ea3ea5a5066c4eea84ba") (undo-list nil ("map" . 5692) ((marker . 5692) . -3) (5682 . 5692) ("global" . -5682) ((marker . 5682) . -6) ((marker . 5682) . -6) ((marker . 5726) . -6) 5688 nil (5682 . 5688) nil ("term-" . -5682) ((marker . 5726) . -5) 5687 nil ("raw-" . -5687) ((marker . 5726) . -4) 5691 (t 26559 45753 286426 300000) nil (3593 . 3612) (3593 . 3594) (t 26559 45741 313174 154000) nil ("
" . 3593) ("(scroll-bar-mode 0)" . 3593) (t 26559 45717 167317 169000) nil (nil rear-nonsticky nil 3154 . 3155) (nil fontified nil 3133 . 3155) (nil fontified nil 3120 . 3133) (nil fontified nil 3117 . 3120) (3117 . 3155) nil (3116 . 3117) nil (";; 最後のカーソル位置を記録
(save-place-mode t) 

" . 4882) ((marker) . -38) ((marker) . -15) ((marker) . -15) ((marker) . -38) 4920 (t 26559 45663 934555 375000) nil ("
" . -8853) ((marker) . -1) ("
" . -8854) ((marker) . -1) ("
" . -8855) ((marker) . -1) 8856 nil ("
" . -8317) ((marker) . -1) ("
" . -8318) ((marker) . -1) ("
" . -8319) ((marker) . -1) 8320 (t 26559 45649 531145 932000) nil (apply -15 8078 8318 undo--wrap-and-run-primitive-undo 8078 8318 ((8239 . 8242) (8195 . 8198) (8121 . 8124) (8099 . 8102) (8078 . 8081) 8302)) nil (apply 15 8078 8302 undo--wrap-and-run-primitive-undo 8078 8302 ((";; " . -8227) (";; " . -8186) (";; " . -8115) (";; " . -8096) (";; " . -8078) 8317)) nil (apply -39 8321 8857 undo--wrap-and-run-primitive-undo 8321 8857 ((8779 . 8782) (8766 . 8769) (8733 . 8736) (8660 . 8663) (8645 . 8648) (8626 . 8629) (8601 . 8604) (8545 . 8548) (8497 . 8500) (8400 . 8403) (8359 . 8362) (8342 . 8345) (8321 . 8324) 8817)) nil ("e" . -8818) 8819 nil (8818 . 8819) (t 26559 45581 929800 522000) nil ("/" . 8805) (8797 . 8805) ("v" . -8797) 8798 nil (8797 . 8798) nil ("v19." . -8797) 8801 nil ("9." . -8801) 8803 nil ("0" . -8803) 8804 (t 26559 45459 100518 501000) nil ("
" . 8819) (" " . 8819) (";;" . 8819) nil (8819 . 8822) nil (8818 . 8821) nil ("
" . 8818) ("co" . 8818) nil (8818 . 8820) nil ("
" . 8818) ("server" . 8818) nil ("e" . -8824) (8824 . 8825) nil (8818 . 8824) nil (8817 . 8818) (t 26559 45301 629422 112000) nil (apply 39 8321 8817 undo--wrap-and-run-primitive-undo 8321 8817 ((";; " . -8743) (";; " . -8733) (";; " . -8703) (";; " . -8633) (";; " . -8621) (";; " . -8605) (";; " . -8583) (";; " . -8530) (";; " . -8485) (";; " . -8391) (";; " . -8353) (";; " . -8339) (";; " . -8321) 8856)) nil (";;   (setq lsp-print-io t)
;;   (with-eval-after-load 'lsp-clients
;;     (remhash 'angular-ls lsp-clients))
" . 8779) 8888 (t 26559 45254 812150 869000) nil (apply -15 8078 8318 undo--wrap-and-run-primitive-undo 8078 8318 ((8239 . 8242) (8195 . 8198) (8121 . 8124) (8099 . 8102) (8078 . 8081) 8302)) nil ("
" . 8303) (";; github copilot" . 8303) nil ("
" . 8321) ("提案してくれ" . 8321) nil (8327 . 8328) nil (8321 . 8327) nil (8320 . 8321) nil (8303 . 8320) nil (8302 . 8305) nil ("
" . 8302) ("emojify-emoji-styles" . 8302) nil (8302 . 8322) ("e" . -8302) 8303 nil (8302 . 8303) (t 26559 45193 84029 148000) nil (nil rear-nonsticky nil 8301 . 8302) (nil fontified nil 8078 . 8302) (8078 . 8302) (t 26559 44886 211779 449000) nil ("
" . -8078) ("
" . -8079) 8080 nil ("(leaf lsp-mode :ensure t
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
" . 8080) 9913 (t 26559 44812 708273 234000) nil (apply -48 9915 10560 undo--wrap-and-run-primitive-undo 9915 10560 ((10482 . 10485) (10440 . 10443) (10400 . 10403) (10373 . 10376) (10360 . 10363) (10327 . 10330) (10254 . 10257) (10239 . 10242) (10220 . 10223) (10195 . 10198) (10139 . 10142) (10091 . 10094) (9994 . 9997) (9953 . 9956) (9936 . 9939) (9915 . 9918) 10511)) nil (apply 48 9915 10511 undo--wrap-and-run-primitive-undo 9915 10511 ((";; " . -10437) (";; " . -10398) (";; " . -10361) (";; " . -10337) (";; " . -10327) (";; " . -10297) (";; " . -10227) (";; " . -10215) (";; " . -10199) (";; " . -10177) (";; " . -10124) (";; " . -10079) (";; " . -9985) (";; " . -9947) (";; " . -9933) (";; " . -9915) 10559)) nil (apply -48 9915 10560 undo--wrap-and-run-primitive-undo 9915 10560 ((10482 . 10485) (10440 . 10443) (10400 . 10403) (10373 . 10376) (10360 . 10363) (10327 . 10330) (10254 . 10257) (10239 . 10242) (10220 . 10223) (10195 . 10198) (10139 . 10142) (10091 . 10094) (9994 . 9997) (9953 . 9956) (9936 . 9939) (9915 . 9918) 10511)) nil (nil fontified nil 9910 . 9911) (nil fontified nil 9882 . 9910) (nil fontified nil 9878 . 9882) (nil fontified nil 9873 . 9878) (nil fontified nil 9852 . 9873) (nil fontified nil 9837 . 9852) (nil fontified nil 9819 . 9837) (nil fontified nil 9800 . 9819) (nil fontified nil 9786 . 9800) (nil fontified nil 9782 . 9786) (nil fontified nil 9776 . 9782) (nil fontified nil 9761 . 9776) (nil fontified nil 9743 . 9761) (nil fontified nil 9720 . 9743) (nil fontified nil 9702 . 9720) (nil fontified nil 9685 . 9702) (nil fontified nil 9659 . 9685) (nil fontified nil 9653 . 9659) (nil fontified nil 9650 . 9653) (nil fontified nil 9596 . 9650) (nil fontified nil 9590 . 9596) (nil fontified nil 9588 . 9590) (nil fontified nil 9554 . 9588) (nil fontified nil 9551 . 9554) (nil fontified nil 9548 . 9551) (nil fontified nil 9541 . 9548) (nil fontified nil 9539 . 9541) (nil fontified nil 9523 . 9539) (nil fontified nil 9520 . 9523) (nil fontified nil 9499 . 9520) (nil fontified nil 9498 . 9499) (nil fontified nil 9489 . 9498) (nil fontified nil 9420 . 9489) (nil fontified nil 9402 . 9420) (nil fontified nil 9372 . 9402) (nil fontified nil 9328 . 9372) (nil fontified nil 9326 . 9328) (nil fontified nil 9317 . 9326) (nil fontified nil 9278 . 9317) (nil fontified nil 9277 . 9278) (nil fontified nil 9232 . 9277) (nil fontified nil 9230 . 9232) (nil fontified nil 9225 . 9230) (nil fontified nil 9187 . 9225) (nil fontified nil 9176 . 9187) (nil fontified nil 9173 . 9176) (nil fontified nil 9131 . 9173) (nil fontified nil 9089 . 9131) (nil fontified nil 9083 . 9089) (nil fontified nil 9078 . 9083) (nil fontified nil 9075 . 9078) (nil fontified nil 9029 . 9075) (nil fontified nil 8987 . 9029) (nil fontified nil 8953 . 8987) (nil fontified nil 8923 . 8953) (nil fontified nil 8913 . 8923) (nil fontified nil 8863 . 8913) (nil fontified nil 8862 . 8863) (nil fontified nil 8826 . 8862) (nil fontified nil 8825 . 8826) (nil fontified nil 8775 . 8825) (nil fontified nil 8762 . 8775) (nil fontified nil 8759 . 8762) (nil fontified nil 8721 . 8759) (nil fontified nil 8678 . 8721) (nil fontified nil 8675 . 8678) (nil fontified nil 8590 . 8675) (nil fontified nil 8523 . 8590) (nil fontified nil 8520 . 8523) (nil fontified nil 8477 . 8520) (nil fontified nil 8421 . 8477) (nil fontified nil 8414 . 8421) (nil fontified nil 8401 . 8414) (nil fontified nil 8400 . 8401) (nil fontified nil 8378 . 8400) (nil fontified nil 8372 . 8378) (nil fontified nil 8345 . 8372) (nil fontified nil 8344 . 8345) (nil fontified nil 8285 . 8344) (nil fontified nil 8284 . 8285) (nil fontified nil 8246 . 8284) (nil fontified nil 8245 . 8246) (nil fontified nil 8205 . 8245) (nil fontified nil 8159 . 8205) (nil fontified nil 8154 . 8159) (nil fontified nil 8151 . 8154) (nil fontified nil 8112 . 8151) (nil fontified nil 8111 . 8112) (nil fontified nil 8107 . 8111) (nil fontified nil 8102 . 8107) (nil fontified nil 8095 . 8102) (nil fontified nil 8085 . 8095) (nil fontified nil 8081 . 8085) (8081 . 9911) nil (8080 . 8082) ("(" . -8080) (8080 . 8081) nil ("(" . -8080) 8081 nil ("leaf lsp-mode :ensure t
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
    (push dir lsp-file-watch-ignored))" . 8081) 9911 nil ("
" . 9372) ("           " . -9372) (9372 . 9383) ("           ;;" . 9372) nil ("           ;;
           ;; (lsp-inhibit-message . t)
           ;; (create-lockfiles . nil)
" . 9328) 9421 nil ("
" . -9277) (" " . -9278) (" " . -9279) (" " . -9280) (" " . -9281) (" " . -9282) (" " . -9283) (" " . -9284) (" " . -9285) (" " . -9286) (" " . -9287) (" " . -9288) 9289 nil (9278 . 9289) ("           " . -9278) (";; (lsp-diagnostics-provider . :auto) ;; default :auto" . 9289) nil (9278 . 9289) (" " . 9278) ("          " . 9278) ("
" . 9278) nil ("
" . 9278) ("           " . -9278) (9278 . 9289) ("           ;; (lsp-completion-show-kind . nil)" . 9278) nil ("           ;; (lsp-completion-provider . :capf)  ;;
           ;; (lsp-prefer-capf . t)  ;;  use ‘lsp-completion-provider’ instead.
           ;; (lsp-completion-no-cache . t)  ;;
           ;; (lsp-completion-enable-additional-text-edit  . t)
" . 9232) 9476 nil ("
" . 9131) ("           " . -9131) (9131 . 9142) ("           ;;" . 9131) nil ("
" . 9029) ("           " . -9029) (9029 . 9040) ("           ;; (lsp-enable-snippet       . t)     ;; original t" . 9029) nil ("           ;; ミニバッファでの関数情報
           ;;   nil: シグニチャだけ,   t: doc-string 本体を表示する
           ;;
" . 8953) 9048 nil ("           ;; (lsp-headerline-breadcrumb-segments . '(project file symbols))
           ;;
           ;; (lsp-document-sync-method . nil)  ;; original nil  'incremental
           ;; (lsp-document-sync-method . 'lsp-sync-incremental)  ;; original nil  'inclemental は変更された
           ;;
" . 8913) 9199 nil (" " . -8862) (";" . -8863) (";" . -8864) 8865 nil ("
" . -8865) 8866 nil ("           ;;   \"Auto configure `lsp-mode' main features.
           ;; When set to t `lsp-mode' will auto-configure
           ;;   completion, code-actions, breadcrumb, flycheck, flymake, imenu, symbol highlighting,
           ;;   lenses, links, and so on.
" . 8866) 9126 nil ("           ;;   Automatically guess the project root using projectile/project.
           ;;   Do *not* use this setting unless you are familiar with ‘lsp-mode’
           ;;   internals and you are sure that all of your projects are
           ;;   following ‘projectile’/‘project.el’ conventions.
" . 8775) 9074 nil ("
" . 8721) ("           " . -8721) (8721 . 8732) ("           ;; general" . 8721) nil ("
" . 8477) ("           " . -8477) (8477 . 8488) ("           ;; debug" . 8477) nil (" ;; デフォでは使わないようにする [2021-06-12]" . 8400) nil (" " . -8344) (";" . -8345) (";" . -8346) (" " . -8347) (" " . -8348) 8349 nil ("`'" . 8349) 8350 nil ("Adds " . -8348) 8353 nil ("to" . -8353) 8357 nil ("which-" . -8357) 8363 nil ("key-" . -8363) 8367 nil ("mode" . -8367) 8372 nil ("         ;; (haskell-mode . lsp-deferred)      ;;
         ;; To defer LSP server startup (and DidOpen notifications) until the buffer is visible
         ;; you can use lsp-deferred instead of lsp:
" . 8285) 8484 nil ("   ;; yarn global add bash-language-server" . 8284) nil (" ;; rust-analyzer(次に学ぶとしたら、)" . 8245) nil (")" . -11767) (11767 . 11768) (")" . -11767) (11767 . 11768) nil (nil rear-nonsticky nil 11766 . 11767) (nil fontified nil 8080 . 11767) (8080 . 11767) nil (8078 . 8081) nil (";" . -8677) (";" . -8678) 8679 nil (8677 . 8679) (t 26559 44458 698976 698000) nil ("
" . 8677) (";;" . 8677) nil (8677 . 8679) (t 26559 44455 376683 718000) nil (";" . -8677) (";" . -8678) ("
" . -8679) 8680 nil (8679 . 8680) nil (8677 . 8679) (t 26559 44364 737686 269000) nil (8565 . 8567) 8599 nil (nil rear-nonsticky nil 8598 . 8599) (nil fontified nil 8528 . 8599) (8528 . 8599) nil (8525 . 8528) (t 26559 44353 34225 436000) nil (nil rear-nonsticky nil 8524 . 8525) (nil fontified nil 8504 . 8525) (8504 . 8525) nil (8501 . 8504) nil (8502 . 8504) (" " . 8501) (8502 . 8503) (t 26559 44327 335433 509000) nil ("
" . 8576) (";; emojify" . 8576) nil (8576 . 8586) (8576 . 8577) nil (apply 36 8080 8575 undo--wrap-and-run-primitive-undo 8080 8575 ((";; " . 8080) (";; " . 8101) (";; " . 8118) (";; " . 8159) (";; " . 8256) (";; " . 8304) (";; " . 8360) (";; " . 8385) (";; " . 8404) (";; " . 8419) (";; " . 8492) (";; " . 8525) 8610)) nil ("
" . 8610) nil (";; GitHub Copilot
(require 'copilot)
(setq copilot-node-executable \"~/.nvm/versions/node/v19.9.0/bin/node\")
(add-hook 'prog-mode-hook 'copilot-mode)
(define-key copilot-completion-map (kbd \"C-f\") 'copilot-accept-completion)" . 8611) (nil fontified t 8833 . 8834) (nil fontified t 8805 . 8833) (nil fontified t 8800 . 8805) (nil fontified t 8760 . 8800) (nil fontified t 8717 . 8760) (nil fontified t 8678 . 8717) (nil fontified t 8653 . 8678) (nil fontified t 8649 . 8653) (nil fontified t 8646 . 8649) (nil fontified t 8639 . 8646) (nil fontified t 8637 . 8639) (nil fontified t 8630 . 8637) (nil fontified t 8629 . 8630) (nil fontified t 8614 . 8629) (nil fontified t 8611 . 8614) (t 26559 44060 588479 622000) nil (nil rear-nonsticky nil 8833 . 8834) (t 26559 44060 588479 622000) nil (nil rear-nonsticky nil 8833 . 8834) (nil fontified nil 8611 . 8834) (8611 . 8834) nil (8610 . 8611) (t 26559 44052 610778 95000) nil (apply -36 8080 8611 undo--wrap-and-run-primitive-undo 8080 8611 ((8525 . 8528) (8492 . 8495) (8419 . 8422) (8404 . 8407) (8385 . 8388) (8360 . 8363) (8304 . 8307) (8256 . 8259) (8159 . 8162) (8118 . 8121) (8101 . 8104) (8080 . 8083) 8574)) nil ("
" . 8576) (";; emojify" . 8576) nil (8573 . 8574) (t 26559 43859 70300 912000) nil (nil rear-nonsticky nil 8571 . 8572) (nil fontified nil 8502 . 8572) (8502 . 8572) nil (8494 . 8502) nil ("c" . -8494) 8495 nil (8494 . 8495) nil (8491 . 8494) nil (8504 . 8505) nil (8494 . 8504) nil (8493 . 8496) (t 26559 43750 264238 367000) nil ("
" . -8721) 8722 nil ("  :config
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
	(set-fontset-font t 'symbol (font-spec :family \"Segoe UI Emoji\") nil 'prepend)))))" . 8722) 9212 (t 26559 43716 657047 617000) nil ("
" . 8399) (t 26559 43713 53608 948000) nil ("
" . 8463) ("  " . -8463) (8463 . 8465) ("  :bind (define-key copilot-completion-map (kbd \"C-f\") 'copilot-accept-completion)" . 8463) nil (" " . 8461) (" " . 8461) (" " . 8461) ("
" . 8461) nil (" " . 8426) (" " . 8426) (" " . 8426) ("
" . 8426) nil (8425 . 8426) nil ("   (\"M-f\" . copilot-accept-completion-by-word)
   (\"M-f\" . copilot-accept-completion-by-paragraph)
   (\"M-n\" . copilot-accept-completion-by-line)
   (\"C-M-n\" . copilot-next-completion)
   (\"C-M-p\" . copilot-previous-completion)
" . 8465) 8693 nil (8433 . 8434) nil ("e" . -8433) 8434 nil (nil rear-nonsticky nil 8696 . 8697) (nil fontified nil 8402 . 8697) (8402 . 8697) nil (8400 . 8402) (" " . 8399) (8400 . 8401) nil (8394 . 8400) nil (8391 . 8394) (t 26559 43637 629677 287000) nil (8431 . 8434) nil (8420 . 8431) nil (8412 . 8420) nil ("copilot-mode-map" . 8412) (t 26559 43619 984062 582000) nil (8412 . 8428) nil ("copilot-" . -8412) 8420 nil ("completion-" . -8420) 8431 nil ("map" . -8431) 8434 (t 26559 43555 510201 313000) nil (8080 . 8097) (t 26559 43548 224088 318000) nil ("
" . -8489) 8490 nil ("

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
" . 8490) 8937 (t 26559 43542 988589 193000) nil (nil rear-nonsticky nil 8456 . 8457) (nil fontified nil 8383 . 8457) (8383 . 8457) nil (8377 . 8383) nil ("bind:" . 8377) nil (8377 . 8382) nil (8374 . 8377) nil ("
" . -8405) (8081 . 8406) nil (8079 . 8083) nil ("
" . -8525) 8526 nil (8525 . 8526) nil (nil rear-nonsticky nil 8524 . 8525) (nil fontified nil 8081 . 8525) (8081 . 8525) nil (8079 . 8082) nil ("  " . 8800) ("cat" . -8800) 8803 nil (8800 . 8803) (t 26559 43150 936528 827000) nil (apply 18 7136 7351 undo--wrap-and-run-primitive-undo 7136 7351 ((";; " . -7286) (";; " . -7256) (";; " . -7181) (";; " . -7169) (";; " . -7151) (";; " . -7136) 7369)) nil (nil rear-nonsticky nil 8815 . 8816) (nil fontified nil 8797 . 8816) (nil fontified nil 8781 . 8797) (nil fontified nil 8780 . 8781) (nil fontified nil 8773 . 8780) (nil fontified nil 8733 . 8773) (nil fontified nil 8712 . 8733) (nil fontified nil 8696 . 8712) (nil fontified nil 8687 . 8696) (nil fontified nil 8683 . 8687) (nil fontified nil 8645 . 8683) (nil fontified nil 8633 . 8645) (nil fontified nil 8625 . 8633) (nil fontified nil 8620 . 8625) (nil fontified nil 8563 . 8620) (nil fontified nil 8544 . 8563) (nil fontified nil 8543 . 8544) (nil fontified nil 8536 . 8543) (nil fontified nil 8475 . 8536) (nil fontified nil 8456 . 8475) (nil fontified nil 8447 . 8456) (nil fontified nil 8443 . 8447) (nil fontified nil 8403 . 8443) (nil fontified nil 8391 . 8403) (nil fontified nil 8383 . 8391) (nil fontified nil 8378 . 8383) (nil fontified nil 8343 . 8378) (nil fontified nil 8339 . 8343) (nil fontified nil 8335 . 8339) (nil fontified nil 8328 . 8335) (nil fontified nil 8280 . 8328) (nil fontified nil 8273 . 8280) (nil fontified nil 8246 . 8273) (nil fontified nil 8237 . 8246) (nil fontified nil 8233 . 8237) (nil fontified nil 8228 . 8233) (nil fontified nil 8185 . 8228) (nil fontified nil 8180 . 8185) (nil fontified nil 8163 . 8180) (nil fontified nil 8158 . 8163) (nil fontified nil 8153 . 8158) (nil fontified nil 8146 . 8153) (nil fontified nil 8143 . 8146) (nil fontified nil 8137 . 8143) (nil fontified nil 8136 . 8137) (nil fontified nil 8130 . 8136) (nil fontified nil 8129 . 8130) (nil fontified nil 8125 . 8129) (nil fontified nil 8114 . 8125) (nil fontified nil 8110 . 8114) (8110 . 8816) nil (8109 . 8111) ("(" . -8109) (8109 . 8110) nil ("(" . -8109) 8110 nil (")" . -8110) (8110 . 8111) (")" . -8110) (8110 . 8111) nil ("leaf emojify
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
	(set-fontset-font t 'symbol (font-spec :family \"Segoe UI Emoji\") nil 'prepend)))))" . 8110) 8816 (t 26559 43104 633297 173000) nil (")" . -8816) (8816 . 8817) (")" . -8816) (8816 . 8817) (t 26559 43104 633297 173000) (")" . -8816) (8816 . 8817) (")" . -8816) (8816 . 8817) (t 26559 43104 633297 173000) (")" . -8816) (8816 . 8817) (")" . -8816) (8816 . 8817) (t 26559 43104 633297 173000) (")" . -8816) (8816 . 8817) (")" . -8816) (8816 . 8817) (t 26559 43104 633297 173000) nil (apply -18 7136 7370 undo--wrap-and-run-primitive-undo 7136 7370 ((7301 . 7304) (7268 . 7271) (7190 . 7193) (7175 . 7178) (7154 . 7157) (7136 . 7139) 7351)) nil (")" . -8801) (8801 . 8802) (")" . -8801) (8801 . 8802) nil (8798 . 8801) (t 26559 43001 92588 242000) nil (")" . -8798) (8798 . 8799) (")" . -8798) (8798 . 8799) (t 26559 43001 92588 242000) nil (8308 . 8799) nil (8307 . 8308) nil (")" . 8307) (8307 . 8308) (")" . 8307) (8307 . 8308) nil (")" . -8307) (8307 . 8308) (")" . -8307) (8307 . 8308) nil ("
" . -8307) 8308 nil ("  :config
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
	(set-fontset-font t 'symbol (font-spec :family \"Segoe UI Emoji\") nil 'prepend)))))
" . 8308) 8799 (t 26559 43001 92588 242000) nil (8224 . 8226) (t 26559 42942 147238 301000) nil ("
" . 8316) ("  " . -8316) (8316 . 8318) ("  ;; MacOSX と Windows でフォントの指定や表示する絵文字のフォーマットを切り替え" . 8316) nil ("
" . 8251) ("  " . -8251) (8251 . 8253) ("  ;; ユニコード文字としての利用と、github （Slack 風でもある）のように :fuga: のように書くと絵文字に変換してくれる。 :) のように あscii で変換されるのは誤爆が多そうなので ascii は無効" . 8251) nil ("
" . 8208) ("  " . -8208) (8208 . 8210) ("  ;; 絵文字を挿入するコマンド。Vertico が効くので便利" . 8208) nil ("
" . 8160) ("  " . -8160) (8160 . 8162) ("  ;; グローバルで絵文字を利用する" . 8160) nil ("
" . 8138) ("  " . -8138) (8138 . 8140) ("  ;; GUI 版のみ利用" . 8138) (t 26559 42933 878229 305000) nil (8291 . 8292) nil ("j" . -8291) 8292 nil (8291 . 8292) nil ("x" . -8291) 8292 (t 26559 42914 523150 166000) nil (8086 . 8090) nil (8080 . 8086) nil ("
" . -9020) 9021 nil (nil rear-nonsticky nil 9019 . 9020) (nil fontified nil 8081 . 9020) (8081 . 9020) nil (8077 . 8081) nil ("(leaf tab-bar-mode
  :tag \"out-of-MELPA\"
  :added \"2025-02-27\"
  :el-get {{user}}/tab-bar-mode
  :require t)
" . 8077) (8185 . 8186) nil ("
" . -8185) (8077 . 8186) nil (8076 . 8078) (t 26559 17574 230093 384000) nil (7912 . 7920) nil (7911 . 7912) nil (7676 . 7677) nil ("c" . -7676) 7677 nil (7670 . 7677) nil (7666 . 7670) nil (7665 . 7666) (t 26559 17549 879066 769000) nil ("
" . -8054) (7900 . 8055) nil (7898 . 7900) (t 26559 17531 811396 345000) nil ("
" . -7898) (7666 . 7899) nil ("(leaf autopep8
  :tag \"out-of-MELPA\"
  :added \"2025-02-27\"
  :el-get {{user}}/autopep8
  :require t)
" . 7666) (7766 . 7767) nil ("
" . -7766) (7666 . 7767) nil (7665 . 7668) (t 26559 17421 134897 970000) nil (5737 . 5744) nil (5736 . 5738) (t 26559 17412 442852 235000) nil (4971 . 4975) nil ("る" . 4971) ("す" . 4971) ("関" . 4971) ("に" . 4971) ("観" . 4971) ("外" . 4971) nil ("
" . -4984) 4985 nil ("
" . -4984) 4985 nil (nil rear-nonsticky nil 4984 . 4985) (nil fontified nil 4984 . 4985) (nil fontified nil 4980 . 4984) (nil fontified nil 4971 . 4980) (nil fontified nil 4967 . 4971) (nil fontified nil 4966 . 4967) (nil fontified nil 4962 . 4966) (4962 . 4985) (t 26559 17343 20688 482000) nil ("
" . -5172) 5173 nil (nil rear-nonsticky nil 5172 . 5173) (nil fontified nil 4965 . 5173) (4965 . 5173) nil (4964 . 4966) (t 26559 17204 343062 460000) nil (6875 . 6878) nil ("g" . -6875) 6876 nil (6873 . 6874) nil ("x" . -6873) 6874 nil (6825 . 6833) nil (6824 . 6825) nil (nil rear-nonsticky nil 6885 . 6886) (nil fontified nil 6825 . 6886) (6825 . 6886) nil (6824 . 6826) (t 26559 17094 551846 152000) nil (" " . -5014) 5015 nil ("の" . -5015) 5016 nil ("設定" . -5016) 5018 (t 26559 17091 103955 772000) nil ("
" . -5007) ("
" . -5008) ("
" . -5009) 5010 (t 26559 17087 720407 43000) nil (" " . -4978) ("の" . -4979) ("設" . -4980) ("定" . -4981) 4982 (t 26559 16982 525456 666000) nil (nil rear-nonsticky nil 7363 . 7364) (nil fontified nil 6836 . 7364) (6836 . 7364) nil (6835 . 6836) (t 26559 16933 537649 769000)))
