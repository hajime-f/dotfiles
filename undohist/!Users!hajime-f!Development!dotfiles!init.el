
((digest . "96b5ce40b212f886d40067fd0847b9ab") (undo-list nil ("=" . -7530) ((marker . 7530) . -1) ((marker . 7530) . -1) 7531 nil ("-" . -7494) ((marker . 7530) . -1) 7495 nil ("+" . -7460) ((marker . 7530) . -1) 7461 (t 26560 31698 257446 93000) nil (apply 30 3843 4187 undo--wrap-and-run-primitive-undo 3843 4187 ((";; " . -4147) (";; " . -4124) (";; " . -4112) (";; " . -4096) (";; " . -4074) (";; " . -4021) (";; " . -3980) (";; " . -3903) (";; " . -3863) (";; " . -3843) 4217)) nil ("
" . -3841) ((marker . 3841) . -1) ((marker . 3841) . -1) ((marker . 3841) . -1) ((marker . 4187) . -1) ((marker . 3841) . -1) ((marker . 4187) . -1) ((marker . 3841) . -1) ((marker . 7530) . -1) ("
" . -3842) ((marker . 3841) . -1) ((marker . 3841) . -1) ((marker . 3841) . -1) ((marker . 4187) . -1) ((marker . 3841) . -1) ((marker . 4187) . -1) ((marker . 3841) . -1) ((marker . 7530) . -1) ("
" . -3843) ((marker . 4187) . -1) ((marker . 3841) . -1) ((marker . 4187) . -1) ((marker . 7530) . -1) 3844 nil ("(leaf *modeline-settings
  :config
  ;; doom-modeline
  ;; doom を利用した mode-line
  (leaf doom-modeline
    :ensure t
    :custom
    (doom-modeline-buffer-file-name-style . 'truncate-with-project)
    (doom-modeline-icon . t)
    (doom-modeline-major-mode-icon . nil)
    (doom-modeline-minor-modes . nil)
    :hook (after-init-hook . doom-modeline-mode)
    :config
    (line-number-mode 0)
    (column-number-mode 0)
    (doom-modeline-def-modeline 'main
      '(bar window-number matches buffer-info remote-host buffer-position parrot selection-info)
      '(misc-info persp-name lsp github debug minor-modes input-method major-mode process vcs))
    )
  
  ;; Hide mode line
  ;; 特定のモードでモードラインを非表示にする
  (leaf hide-mode-line
    :ensure t
    :after neotree minimap imenu-list
    :hook
    ((neotree-mode imenu-list-minor-mode minimap-mode) . hide-mode-line-mode)
    )
  )
" . 3844) ((marker . 7530) . -877) ((marker . 4187) . -877) 4721 nil ("e" . -3843) ((marker . 3841) . -1) ((marker . 3841) . -1) ((marker . 3841) . -1) ((marker . 7530) . -1) 3844 nil (3843 . 3844) (t 26560 31570 920053 387000) nil (apply -30 4723 5098 undo--wrap-and-run-primitive-undo 4723 5098 ((5054 . 5057) (5028 . 5031) (5013 . 5016) (4994 . 4997) (4969 . 4972) (4913 . 4916) (4869 . 4872) (4789 . 4792) (4746 . 4749) (4723 . 4726) 5067)) nil (nil rear-nonsticky nil 4719 . 4720) (nil fontified nil 3844 . 4720) (3844 . 4720) nil (3842 . 3846) (t 26560 31114 162095 835000) nil ("
" . 7347) (";; Git" . 7347) nil (7347 . 7353) nil (7346 . 7347) nil ("e" . -7346) 7347 nil (7346 . 7347) nil (7333 . 7346) nil (7332 . 7333) nil (nil rear-nonsticky nil 7523 . 7524) (nil fontified nil 7333 . 7524) (7333 . 7524) nil (7332 . 7334) (t 26560 30915 719562 35000) nil ("
" . -4369) 4370 (t 26560 30913 106848 14000) nil (nil rear-nonsticky nil 4306 . 4307) (nil fontified nil 4273 . 4307) (4273 . 4307) nil (4270 . 4273) nil (4269 . 4270) nil (nil rear-nonsticky nil 4218 . 4219) (nil fontified nil 4191 . 4219) (4191 . 4219) nil (4188 . 4191) nil ("
" . -4188) 4189 (t 26560 30817 388427 926000) nil ("

" . 4239) nil ("(leaf beacon
  :ensure t
  :global-minor-mode t)
" . 4240) (nil fontified t 4245 . 4253) (nil fontified t 4262 . 4265) (nil rear-nonsticky t 4288 . 4289) nil (nil rear-nonsticky nil 4288 . 4289) (nil fontified nil 4287 . 4289) (nil fontified nil 4286 . 4287) (nil fontified nil 4285 . 4286) (nil fontified nil 4267 . 4285) (nil fontified nil 4265 . 4267) (nil fontified nil 4262 . 4265) (nil fontified nil 4255 . 4262) (nil fontified nil 4245 . 4255) (nil fontified nil 4241 . 4245) (nil fontified nil 4240 . 4241) (4240 . 4289) nil (4239 . 4241) (t 26560 30817 388427 926000) nil ("leaf" . 4237) (4236 . 4237) ("t" . 4244) (4245 . 4249) nil ("leaf" . 4245) (4244 . 4245) ("t" . 4236) (4237 . 4241) 4239 (t 26560 30817 388427 926000) nil ("

" . 4303) nil ("(leaf volatile-highlights
  :ensure t
" . 4304) (nil fontified t 4309 . 4330) (nil rear-nonsticky t 4341 . 4342) nil (nil rear-nonsticky nil 4341 . 4342) (nil fontified nil 4339 . 4342) (nil fontified nil 4332 . 4339) (nil fontified nil 4309 . 4332) (nil fontified nil 4305 . 4309) (nil fontified nil 4304 . 4305) (4304 . 4342) nil (4303 . 4305) (t 26560 30817 388427 926000) nil (nil rear-nonsticky nil 4300 . 4301) (nil fontified nil 4240 . 4301) (4240 . 4301) nil (4238 . 4240) nil (nil rear-nonsticky nil 4237 . 4238) (nil fontified nil 4190 . 4238) (4190 . 4238) nil (4187 . 4192) (t 26560 30770 121029 502000) nil (4144 . 4146) (t 26560 30764 464386 651000) nil (4126 . 4144) (":global" . -4126) 4133 nil (4126 . 4133) nil (4123 . 4126) (t 26560 30634 440173 611000) nil ("
  '(bar workspace-number window-number evil-state god-state ryo-modal xah-fly-keys matches buffer-info remote-host buffer-position parrot selection-info)
  '(misc-info persp-name lsp github debug minor-modes input-method major-mode process vcs checker)" . 4162) 4415 (t 26560 30600 75100 515000) nil (")" . -4416) (")" . -4417) 4418 nil ("      " . -4319) (4319 . 4325) ("	" . 4319) (4317 . 4319) 4416 nil (nil rear-nonsticky nil 4415 . 4416) (nil fontified nil 4165 . 4416) (4165 . 4416) nil (4162 . 4165) (t 26560 30398 669194 940000) nil ("
" . -4163) 4164 (t 26560 30394 936793 750000) nil ("
" . -4163) (3843 . 4164) nil (3842 . 3845) (t 26560 29522 249723 154000) nil ("
" . 839) ("    " . -839) (839 . 843) ("    ;; initialize leaf-keywords.el" . 839) nil ("
" . 741) ("    " . -741) (741 . 745) ("    ;; optional packages if you want to use :hydra, :el-get, :blackout,,," . 741) (t 26560 29489 259689 549000) nil ("
" . -3950) 3951 (t 26560 29471 457541 436000) nil ("
" . -3636) ("
" . -3637) 3638 nil (";; (leaf doom-themes
;;   :init
;;   (let ((custom--inhibit-theme-enable nil))
;;     (unless (memq 'use-package custom-known-themes)
;;       (deftheme use-package)
;;       (enable-theme 'use-package)
;;       (setq custom-enabled-themes (remq 'use-package custom-enabled-themes)))
;;     (custom-theme-set-variables 'use-package
;; 				'(doom-themes-enable-italic t nil nil \"Customized with use-package doom-themes\")
;; 				'(doom-themes-enable-bold t nil nil \"Customized with use-package doom-themes\")))
;;   (apply #'face-spec-set
;; 	 (backquote
;; 	  (doom-modeline-bar
;; 	   ((t
;; 	     (:background \"#6272a4\"))))))
;;   :require t
;;   :config
;;   (load-theme 'doom-dark+ t)
;;   (set-frame-parameter nil 'alpha 95))
" . 3636) 4365 nil (apply 3 3614 3636 undo--wrap-and-run-primitive-undo 3614 3636 ((";; " . -3614) 3639)) nil (apply -60 3614 4369 undo--wrap-and-run-primitive-undo 3614 4369 ((4326 . 4329) (4294 . 4297) (4281 . 4284) (4265 . 4268) (4227 . 4230) (4216 . 4219) (4191 . 4194) (4175 . 4178) (4147 . 4150) (4059 . 4062) (3971 . 3974) (3923 . 3926) (3842 . 3845) (3805 . 3808) (3773 . 3776) (3718 . 3721) (3671 . 3674) (3660 . 3663) (3639 . 3642) (3614 . 3617) 4308)) nil ("  " . -4549) 4558 nil (nil rear-nonsticky nil 4624 . 4625) (nil fontified nil 4588 . 4625) (nil fontified nil 4559 . 4588) (nil fontified nil 4558 . 4559) (nil fontified nil 4551 . 4558) (nil fontified nil 4549 . 4551) (4549 . 4625) nil (4546 . 4549) nil ("
" . -4547) (4310 . 4548) nil (4308 . 4312) (t 26560 26373 709877 169000) nil (apply -6 8245 8411 undo--wrap-and-run-primitive-undo 8245 8411 ((8296 . 8299) (8247 . 8250) 8336)) nil (8245 . 8336) (t 26560 26349 440989 815000) nil ("  (defvar my:ctrl-o-map (make-sparse-keymap))
  (defalias 'my:ctrl-o-prefix my:ctrl-o-map)
" . 8245) 8336 (t 26560 26344 610854 584000) nil (8245 . 8290) ("  " . 8245) (8245 . 8247) (8245 . 8246) nil (8245 . 8289) ("  " . 8245) (8245 . 8247) (8245 . 8246) nil (8240 . 8244) nil ("bind" . 8240) (t 26560 26328 710452 164000) nil (8240 . 8244) nil ("init" . -8240) 8244 nil ("
" . 8245) ("  " . -8245) (8245 . 8247) ("  (defalias 'my:ctrl-o-prefix my:ctrl-o-map)" . 8245) nil ("
" . 8245) ("  " . -8245) (8245 . 8247) ("  (defvar my:ctrl-o-map (make-sparse-keymap))" . 8245) (t 26560 26314 805287 973000) nil ("
    \"My original keymap binded to C-o.\"" . 8289) 8329 (t 26560 24393 599251 202000) nil ("
" . -9720) ("
" . -9721) ("
" . -9722) ("
" . -9723) 9724 nil ("(require 'package)
(add-to-list 'package-archives '(\"melpa\" . \"https://melpa.org/packages/\") t)
(package-initialize)
(package-install 'google-gemini)
(add-to-list 'load-path \"~/.emacs.d/lisp/\")
(require 'gemini-code-completion)
" . 9724) 9952 (t 26560 24336 162475 775000) nil ("

(package-initialize)
(add-to-list 'load-path \"~/.emacs.d/lisp/\")
(require 'gemini-code-completion)
" . 9952) 10053 nil ("
" . 9874) nil ("
" . 9874) ("Add the following to your Emacs configuration to load the package:" . 9874) nil ("
" . 9874) nil ("
" . 9874) ("Download gemini-code-completion.el from GitHub and place it in your ~/.emacs.d/lisp/ directory." . 9874) nil ("
" . 9841) ("Install the dependent package, google-gemini:" . 9841) nil (nil rear-nonsticky nil 10161 . 10162) (nil fontified nil 9724 . 10162) (9724 . 10162) nil (9722 . 9726) (t 26560 24262 93752 70000) nil ("gemini-" . -9785) 9792 nil ("code-" . -9792) 9797 nil ("completion." . -9797) 9808 nil ("el/" . -9808) 9811 nil (9769 . 9770) nil ("/" . -9769) 9770 nil ("Users/" . -9770) 9776 nil ("hajime-" . -9776) 9783 nil ("f" . -9783) 9784 (t 26560 24241 644827 959000) nil (9724 . 9742) ("package-ini" . -9724) 9735 nil (9724 . 9735) (9723 . 9725) ("(" . -9723) (9723 . 9724) nil (9724 . 9842) nil (9722 . 9724) nil (9720 . 9722) (t 26560 24201 998407 93000) nil ("
" . -9720) ("
" . -9721) 9722 nil ("
" . -9722) ("
" . -9723) 9724 nil ("(add-to-list 'load-path \"/Users/hajime-f/.emacs.d/lisp/gemini-code-completion.el/\")
(require 'gemini-code-completion)
" . 9724) 9842 (t 26560 24109 594897 4000) nil (9779 . 9805) nil (9774 . 9779) ("lisp" . -9774) 9778 nil (9774 . 9778) nil (9765 . 9774) (".em" . -9765) 9768 nil (9765 . 9768) nil (9756 . 9765) nil (9750 . 9756) ("Us" . -9750) 9752 nil (9750 . 9752) nil (9749 . 9750) nil ("~/.emacs.d/lisp/gemini-code-completion.el/" . 9749) 9791 (t 26560 24051 408072 256000) nil (9765 . 9791) ("g" . -9765) 9766 nil (9765 . 9766) (t 26560 23864 810046 578000) nil ("
" . 9724) ("(add-to-list 'load-path \"~/.emacs.d/elpa/google-gemini/\")" . 9724) nil ("gemini-code-completion.el/" . 9823) 9849 nil ("
" . 9852) ("(require 'google-gemini)" . 9852) (t 26560 23844 659667 787000) nil (9861 . 9875) ("'" . -9861) (9860 . 9862) nil (9853 . 9860) ("requ" . -9853) 9857 nil (9853 . 9857) (9852 . 9854) ("(" . -9852) (9852 . 9853) nil (9851 . 9852) (t 26560 23824 379947 878000) nil (9765 . 9779) ("goo" . -9765) 9768 nil (9765 . 9768) nil (9760 . 9765) nil ("lisp/" . -9760) 9765 nil ("g" . -9765) 9766 nil (9765 . 9766) nil ("g" . -9765) ("o" . -9766) ("o" . -9767) 9768 nil (9765 . 9768) nil ("gemini-" . -9765) 9772 nil ("code-" . -9772) 9777 nil ("completion." . -9777) 9788 nil ("el/" . -9788) 9791 nil (nil rear-nonsticky nil 9792 . 9793) (nil fontified nil 9792 . 9793) (nil fontified nil 9791 . 9792) (nil fontified nil 9765 . 9791) (nil fontified nil 9748 . 9765) (nil fontified nil 9724 . 9748) (9724 . 9793) nil (9723 . 9724) nil (9765 . 9791) ("g" . -9765) 9766 nil (9765 . 9766) nil (nil rear-nonsticky nil 9800 . 9801) (nil fontified nil 9724 . 9801) (9724 . 9801) nil (9725 . 9727) nil (9723 . 9725) (t 26560 23706 645140 53000) nil ("
" . -9722) ("
" . -9723) ("
" . -9724) 9725 nil ("(add-to-list 'load-path \"~/.emacs.d/elpa/\")
(require 'google-gemini)

(defvar gemini-code-completion-default-prompt
  \"Suggest only missing part to work as feature, at most just only 1 or 2 lines.
Must not exceed 2 lines in suggesting.
Take care indentation as well.


\" \"Default prompt to input into Google Gemini.\")

(defun gemini-code-completion-extract-completion (response)
  \"Extract and clean completion text from the RESPONSE returned by Google Gemini.\"
  (let* ((candidates (alist-get 'candidates response))
         (first-candidate (aref candidates 0))
         (content (alist-get 'content first-candidate))
         (parts (alist-get 'parts content))
         (first-part (aref parts 0))
         (text (alist-get 'text first-part)))
    (gemini-code-completion-clean-text text)))

(defun gemini-code-completion-clean-text (text)
  \"Remove unwanted backquotes from the TEXT.\"
  (replace-regexp-in-string \"```[a-z]*\\n\\\\|```\" \"\" text))

(defun gemini-code-completion-handler (response)
  \"Handle Gemini code completion RESPONSE.\"

  (let ((current-position (point))
        (completion-text (gemini-code-completion-extract-completion response)))
    (insert
     (if (use-region-p)
         \"\\n\"
       \"\")
     (propertize completion-text 'face 'shadow))
    (when (use-region-p)
      (deactivate-mark))
    (goto-char current-position))) ; Restore cursor position

;;;###autoload
(defun gemini-code-completion (prefix)
  \"Get completion from Google Gemini for current buffer or a selected region.
If called with a PREFIX argument (\\\\[universal-argument]), prompt for additional
text to customize the completion.\"
  (interactive \"P\")

  (let* ((user-prompt (if prefix (concat (read-string \"Prompt: \") \"\\n\\n\") \"\"))
         (selected-text
          (if (use-region-p)
              (buffer-substring-no-properties (region-beginning) (region-end))
            (buffer-substring-no-properties (point-min) (point))))
         (end
          (if (use-region-p)
              (region-end)
            (point))))
    (save-excursion
      (goto-char end)
      (google-gemini-content-generate
       (concat
        user-prompt gemini-code-completion-default-prompt selected-text)
       #'gemini-code-completion-handler))))

(provide 'gemini-code-completion)
;;; gemini-code-completion.el ends here
" . 9723) 12029 (t 26560 23632 998045 379000) nil ("/" . 9764) (9759 . 9764) ("el" . -9759) 9761 nil (9759 . 9761) nil ("lisp" . -9759) 9763 nil ("
" . 9767) ("(package-install 'google-gemini)" . 9767) nil ("
" . 9767) ("(package-install 'google-gemini)" . 9767) nil (nil rear-nonsticky nil 9765 . 9766) (nil fontified nil 9723 . 9766) (9723 . 9766) nil (9723 . 9724) nil (nil rear-nonsticky nil 9754 . 9755) (nil fontified nil 9723 . 9755) (9723 . 9755) nil (9722 . 9723) (t 26560 23564 216947 767000) nil (nil rear-nonsticky nil 9754 . 9755) (nil fontified nil 9723 . 9755) (9723 . 9755) (t 26560 23472 724193 561000) nil ("(require 'google-gemini)

(defvar gemini-code-completion-default-prompt
  \"Suggest only missing part to work as feature, at most just only 1 or 2 lines.
Must not exceed 2 lines in suggesting.
Take care indentation as well.


\" \"Default prompt to input into Google Gemini.\")

(defun gemini-code-completion-extract-completion (response)
  \"Extract and clean completion text from the RESPONSE returned by Google Gemini.\"
  (let* ((candidates (alist-get 'candidates response))
         (first-candidate (aref candidates 0))
         (content (alist-get 'content first-candidate))
         (parts (alist-get 'parts content))
         (first-part (aref parts 0))
         (text (alist-get 'text first-part)))
    (gemini-code-completion-clean-text text)))

(defun gemini-code-completion-clean-text (text)
  \"Remove unwanted backquotes from the TEXT.\"
  (replace-regexp-in-string \"```[a-z]*\\n\\\\|```\" \"\" text))

(defun gemini-code-completion-handler (response)
  \"Handle Gemini code completion RESPONSE.\"

  (let ((current-position (point))
        (completion-text (gemini-code-completion-extract-completion response)))
    (insert
     (if (use-region-p)
         \"\\n\"
       \"\")
     (propertize completion-text 'face 'shadow))
    (when (use-region-p)
      (deactivate-mark))
    (goto-char current-position))) ; Restore cursor position

;;;###autoload
(defun gemini-code-completion (prefix)
  \"Get completion from Google Gemini for current buffer or a selected region.
If called with a PREFIX argument (\\\\[universal-argument]), prompt for additional
text to customize the completion.\"
  (interactive \"P\")

  (let* ((user-prompt (if prefix (concat (read-string \"Prompt: \") \"\\n\\n\") \"\"))
         (selected-text
          (if (use-region-p)
              (buffer-substring-no-properties (region-beginning) (region-end))
            (buffer-substring-no-properties (point-min) (point))))
         (end
          (if (use-region-p)
              (region-end)
            (point))))
    (save-excursion
      (goto-char end)
      (google-gemini-content-generate
       (concat
        user-prompt gemini-code-completion-default-prompt selected-text)
       #'gemini-code-completion-handler))))

(provide 'gemini-code-completion)
;;; gemini-code-completion.el ends here" . 9723) (nil fontified t 9746 . 9749) (nil fontified t 9794 . 9795) (nil fontified t 9797 . 9948) (nil fontified t 9995 . 9998) (nil fontified t 10046 . 10058) (nil fontified t 10140 . 10141) (nil fontified t 10148 . 10474) (nil fontified t 10514 . 10522) (nil fontified t 10567 . 10568) (nil fontified t 10618 . 10627) (nil fontified t 10664 . 10676) (nil fontified t 10719 . 10721) (nil fontified t 10727 . 10848) (nil fontified t 10856 . 10872) (nil fontified t 10885 . 10886) (nil fontified t 10895 . 10946) (nil fontified t 10955 . 10996) (nil fontified t 11033 . 11057) (nil fontified t 11057 . 11058) (nil fontified t 11072 . 11073) (nil fontified t 11102 . 11112) (nil fontified t 11114 . 11190) (nil fontified t 11245 . 11271) (nil fontified t 11305 . 11306) (nil fontified t 11324 . 11327) (nil fontified t 11403 . 11430) (nil fontified t 11443 . 11459) (nil fontified t 11529 . 11619) (nil fontified t 11632 . 11698) (nil fontified t 11717 . 11911) (nil fontified t 11943 . 11945) (nil rear-nonsticky t 11983 . 11984) nil (9723 . 11984) ("(require 'package)
(add-to-list 'package-archives '(\"melpa\" . \"https://melpa.org/packages/\") t)
(package-initialize)
(package-install 'google-gemini)

" . 9723) (nil fontified t 9740 . 9742) (nil fontified t 9814 . 9819) (nil fontified t 9839 . 9873) (nil rear-nonsticky t 9873 . 9874) nil (nil rear-nonsticky nil 9873 . 9874) (nil fontified nil 9839 . 9874) (nil fontified nil 9814 . 9839) (nil fontified nil 9785 . 9814) (nil fontified nil 9782 . 9785) (nil fontified nil 9775 . 9782) (nil fontified nil 9740 . 9775) (nil fontified nil 9733 . 9740) (nil fontified nil 9731 . 9733) (nil fontified nil 9724 . 9731) (nil fontified nil 9723 . 9724) (9723 . 9874) ("(require 'google-gemini)

(defvar gemini-code-completion-default-prompt
  \"Suggest only missing part to work as feature, at most just only 1 or 2 lines.
Must not exceed 2 lines in suggesting.
Take care indentation as well.


\" \"Default prompt to input into Google Gemini.\")

(defun gemini-code-completion-extract-completion (response)
  \"Extract and clean completion text from the RESPONSE returned by Google Gemini.\"
  (let* ((candidates (alist-get 'candidates response))
         (first-candidate (aref candidates 0))
         (content (alist-get 'content first-candidate))
         (parts (alist-get 'parts content))
         (first-part (aref parts 0))
         (text (alist-get 'text first-part)))
    (gemini-code-completion-clean-text text)))

(defun gemini-code-completion-clean-text (text)
  \"Remove unwanted backquotes from the TEXT.\"
  (replace-regexp-in-string \"```[a-z]*\\n\\\\|```\" \"\" text))

(defun gemini-code-completion-handler (response)
  \"Handle Gemini code completion RESPONSE.\"

  (let ((current-position (point))
        (completion-text (gemini-code-completion-extract-completion response)))
    (insert
     (if (use-region-p)
         \"\\n\"
       \"\")
     (propertize completion-text 'face 'shadow))
    (when (use-region-p)
      (deactivate-mark))
    (goto-char current-position))) ; Restore cursor position

;;;###autoload
(defun gemini-code-completion (prefix)
  \"Get completion from Google Gemini for current buffer or a selected region.
If called with a PREFIX argument (\\\\[universal-argument]), prompt for additional
text to customize the completion.\"
  (interactive \"P\")

  (let* ((user-prompt (if prefix (concat (read-string \"Prompt: \") \"\\n\\n\") \"\"))
         (selected-text
          (if (use-region-p)
              (buffer-substring-no-properties (region-beginning) (region-end))
            (buffer-substring-no-properties (point-min) (point))))
         (end
          (if (use-region-p)
              (region-end)
            (point))))
    (save-excursion
      (goto-char end)
      (google-gemini-content-generate
       (concat
        user-prompt gemini-code-completion-default-prompt selected-text)
       #'gemini-code-completion-handler))))

(provide 'gemini-code-completion)
;;; gemini-code-completion.el ends here" . -9723) 11984 nil (nil rear-nonsticky nil 11983 . 11984) (nil fontified nil 11949 . 11984) (nil fontified nil 11945 . 11949) (nil fontified nil 11943 . 11945) (nil fontified nil 11921 . 11943) (nil fontified nil 11919 . 11921) (nil fontified nil 11912 . 11919) (nil fontified nil 11717 . 11912) (nil fontified nil 11703 . 11717) (nil fontified nil 11632 . 11703) (nil fontified nil 11630 . 11632) (nil fontified nil 11529 . 11630) (nil fontified nil 11443 . 11529) (nil fontified nil 11441 . 11443) (nil fontified nil 11403 . 11441) (nil fontified nil 11401 . 11403) (nil fontified nil 11399 . 11401) (nil fontified nil 11393 . 11399) (nil fontified nil 11391 . 11393) (nil fontified nil 11381 . 11391) (nil fontified nil 11352 . 11381) (nil fontified nil 11350 . 11352) (nil fontified nil 11334 . 11350) (nil fontified nil 11330 . 11334) (nil fontified nil 11324 . 11330) (nil fontified nil 11321 . 11324) (nil fontified nil 11320 . 11321) (nil fontified nil 11309 . 11320) (nil fontified nil 11305 . 11309) (nil fontified nil 11245 . 11305) (nil fontified nil 11227 . 11245) (nil fontified nil 11114 . 11227) (nil fontified nil 11102 . 11114) (nil fontified nil 11080 . 11102) (nil fontified nil 11079 . 11080) (nil fontified nil 11074 . 11079) (nil fontified nil 11073 . 11074) (nil fontified nil 11072 . 11073) (nil fontified nil 11064 . 11072) (nil fontified nil 11061 . 11064) (nil fontified nil 11058 . 11061) (nil fontified nil 11057 . 11058) (nil fontified nil 11033 . 11057) (nil fontified nil 11031 . 11033) (nil fontified nil 10955 . 11031) (nil fontified nil 10951 . 10955) (nil fontified nil 10895 . 10951) (nil fontified nil 10893 . 10895) (nil fontified nil 10885 . 10893) (nil fontified nil 10881 . 10885) (nil fontified nil 10856 . 10881) (nil fontified nil 10854 . 10856) (nil fontified nil 10727 . 10854) (nil fontified nil 10724 . 10727) (nil fontified nil 10719 . 10724) (nil fontified nil 10716 . 10719) (nil fontified nil 10678 . 10716) (nil fontified nil 10664 . 10678) (nil fontified nil 10634 . 10664) (nil fontified nil 10633 . 10634) (nil fontified nil 10628 . 10633) (nil fontified nil 10618 . 10628) (nil fontified nil 10616 . 10618) (nil fontified nil 10615 . 10616) (nil fontified nil 10611 . 10615) (nil fontified nil 10610 . 10611) (nil fontified nil 10608 . 10610) (nil fontified nil 10596 . 10608) (nil fontified nil 10567 . 10596) (nil fontified nil 10524 . 10567) (nil fontified nil 10514 . 10524) (nil fontified nil 10481 . 10514) (nil fontified nil 10480 . 10481) (nil fontified nil 10475 . 10480) (nil fontified nil 10148 . 10475) (nil fontified nil 10144 . 10148) (nil fontified nil 10140 . 10144) (nil fontified nil 10060 . 10140) (nil fontified nil 10046 . 10060) (nil fontified nil 10029 . 10046) (nil fontified nil 10005 . 10029) (nil fontified nil 10004 . 10005) (nil fontified nil 9999 . 10004) (nil fontified nil 9995 . 9999) (nil fontified nil 9950 . 9995) (nil fontified nil 9949 . 9950) (nil fontified nil 9797 . 9949) (nil fontified nil 9794 . 9797) (nil fontified nil 9757 . 9794) (nil fontified nil 9756 . 9757) (nil fontified nil 9750 . 9756) (nil fontified nil 9746 . 9750) (nil fontified nil 9733 . 9746) (nil fontified nil 9731 . 9733) (nil fontified nil 9724 . 9731) (nil fontified nil 9723 . 9724) (9723 . 11984) (t 26560 23472 724193 561000) nil (nil rear-nonsticky nil 11984 . 11985) (nil fontified nil 11950 . 11985) (nil fontified nil 11946 . 11950) (nil fontified nil 11944 . 11946) (nil fontified nil 11922 . 11944) (nil fontified nil 11920 . 11922) (nil fontified nil 11913 . 11920) (nil fontified nil 11718 . 11913) (nil fontified nil 11704 . 11718) (nil fontified nil 11633 . 11704) (nil fontified nil 11631 . 11633) (nil fontified nil 11530 . 11631) (nil fontified nil 11444 . 11530) (nil fontified nil 11442 . 11444) (nil fontified nil 11404 . 11442) (nil fontified nil 11402 . 11404) (nil fontified nil 11400 . 11402) (nil fontified nil 11394 . 11400) (nil fontified nil 11392 . 11394) (nil fontified nil 11382 . 11392) (nil fontified nil 11353 . 11382) (nil fontified nil 11351 . 11353) (nil fontified nil 11335 . 11351) (nil fontified nil 11331 . 11335) (nil fontified nil 11325 . 11331) (nil fontified nil 11322 . 11325) (nil fontified nil 11321 . 11322) (nil fontified nil 11310 . 11321) (nil fontified nil 11306 . 11310) (nil fontified nil 11246 . 11306) (nil fontified nil 11228 . 11246) (nil fontified nil 11115 . 11228) (nil fontified nil 11103 . 11115) (nil fontified nil 11081 . 11103) (nil fontified nil 11080 . 11081) (nil fontified nil 11075 . 11080) (nil fontified nil 11074 . 11075) (nil fontified nil 11073 . 11074) (nil fontified nil 11065 . 11073) (nil fontified nil 11062 . 11065) (nil fontified nil 11059 . 11062) (nil fontified nil 11058 . 11059) (nil fontified nil 11034 . 11058) (nil fontified nil 11032 . 11034) (nil fontified nil 10956 . 11032) (nil fontified nil 10952 . 10956) (nil fontified nil 10896 . 10952) (nil fontified nil 10894 . 10896) (nil fontified nil 10886 . 10894) (nil fontified nil 10882 . 10886) (nil fontified nil 10857 . 10882) (nil fontified nil 10855 . 10857) (nil fontified nil 10728 . 10855) (nil fontified nil 10725 . 10728) (nil fontified nil 10720 . 10725) (nil fontified nil 10717 . 10720) (nil fontified nil 10679 . 10717) (nil fontified nil 10665 . 10679) (nil fontified nil 10635 . 10665) (nil fontified nil 10634 . 10635) (nil fontified nil 10629 . 10634) (nil fontified nil 10619 . 10629) (nil fontified nil 10617 . 10619) (nil fontified nil 10616 . 10617) (nil fontified nil 10612 . 10616) (nil fontified nil 10611 . 10612) (nil fontified nil 10609 . 10611) (nil fontified nil 10597 . 10609) (nil fontified nil 10568 . 10597) (nil fontified nil 10525 . 10568) (nil fontified nil 10515 . 10525) (nil fontified nil 10482 . 10515) (nil fontified nil 10481 . 10482) (nil fontified nil 10476 . 10481) (nil fontified nil 10149 . 10476) (nil fontified nil 10145 . 10149) (nil fontified nil 10141 . 10145) (nil fontified nil 10061 . 10141) (nil fontified nil 10047 . 10061) (nil fontified nil 10030 . 10047) (nil fontified nil 10006 . 10030) (nil fontified nil 10005 . 10006) (nil fontified nil 10000 . 10005) (nil fontified nil 9996 . 10000) (nil fontified nil 9951 . 9996) (nil fontified nil 9950 . 9951) (nil fontified nil 9798 . 9950) (nil fontified nil 9795 . 9798) (nil fontified nil 9758 . 9795) (nil fontified nil 9757 . 9758) (nil fontified nil 9751 . 9757) (nil fontified nil 9747 . 9751) (nil fontified nil 9734 . 9747) (nil fontified nil 9732 . 9734) (nil fontified nil 9725 . 9732) (nil fontified nil 9724 . 9725) (9724 . 11985) ("(add-to-list 'load-path \"~/.emacs.d/lisp/\")
(require 'gemini-code-completion)

" . -9724) 9803 nil (nil rear-nonsticky nil 9802 . 9803) (nil fontified nil 9800 . 9803) (nil fontified nil 9778 . 9800) (nil fontified nil 9776 . 9778) (nil fontified nil 9769 . 9776) (nil fontified nil 9768 . 9769) (nil fontified nil 9766 . 9768) (nil fontified nil 9748 . 9766) (nil fontified nil 9724 . 9748) (9724 . 9803) nil (9722 . 9728) nil (1384 . 1385) nil ("
" . -1384) 1385 nil ("(add-to-list 'load-path \"~/.emacs.d/lisp/\")
(require 'gemini-code-completion)

" . 1385) 1464 (t 26560 23349 48755 24000) nil ("(require 'package)
(add-to-list 'package-archives '(\"melpa\" . \"https://melpa.org/packages/\") t)
(package-initialize)
(package-install 'google-gemini)

" . 1385) 1536 (t 26560 23308 816622 900000) nil ("
(add-to-list 'load-path \"~/.emacs.d/elpa/\")
(require 'gemini-code-completion)
" . 1614) 1693 nil (nil rear-nonsticky nil 1612 . 1613) (nil fontified nil 1536 . 1613) (1536 . 1613) nil (1535 . 1537) nil ("
" . 1614) ("(require 'google-gemini)" . 1614) nil (nil rear-nonsticky nil 1533 . 1534) (nil fontified nil 1502 . 1534) (1502 . 1534) nil (nil rear-nonsticky nil 1500 . 1501) (nil fontified nil 1385 . 1501) (1385 . 1501) nil (1383 . 1387) (t 26560 23074 704176 741000) nil (1480 . 1485) nil ("o" . -1480) 1481 nil (1471 . 1481) ("'" . -1471) (1470 . 1472) nil (1463 . 1470) (1462 . 1464) ("(" . -1462) (1462 . 1463) nil (1461 . 1462) (t 26560 23040 252488 854000) nil ("/" . 1425) (1420 . 1425) ("el" . -1420) 1422 nil (1420 . 1422) nil ("lisp" . -1420) 1424 nil (nil rear-nonsticky nil 1426 . 1427) (nil fontified nil 1384 . 1427) (1384 . 1427) nil (1383 . 1384) (t 26560 22848 74681 380000) nil ("
" . -85) 86 (t 26560 22826 956409 45000) nil ("
" . 74) (";;" . 74) (t 26560 22825 111942 139000) nil ("
" . 77) (";; Google Gemini for a code at current cursor postion or a selected region." . 77) nil ("
" . 77) (";; gemini-code-completion.el is an Emacs package to get code completion with" . 77) nil (nil rear-nonsticky nil 240 . 241) (nil fontified nil 235 . 241) (nil fontified nil 231 . 235) (nil fontified nil 230 . 231) (nil fontified nil 157 . 230) (nil fontified nil 154 . 157) (nil fontified nil 80 . 154) (nil fontified nil 77 . 80) (nil fontified nil 76 . 77) (nil fontified nil 74 . 76) (nil fontified nil 62 . 74) (nil fontified nil 58 . 62) (58 . 241) nil (58 . 59) (t 26560 22730 409290 479000) nil ("
" . 1357) ("(add-to-list 'load-path \"~/.emacs.d/lisp/\")" . 1357) (t 26560 22600 755900 176000) nil ("gemini-" . -1398) 1405 nil ("code-" . -1405) 1410 nil ("completion/" . -1410) 1421 (t 26560 22552 323816 606000) nil ("." . -1420) ("e" . -1421) ("l" . -1422) 1423 (t 26560 22543 246203 533000) nil (".el" . 1459) (t 26560 22538 638836 330000) nil (1459 . 1462) (t 26560 22518 737726 457000) nil (1398 . 1424) ("gem" . -1398) 1401 nil (1398 . 1401) (t 26560 22511 459500 729000) nil ("
" . 1357) ("(setq load-path (cons\"~/.emacs.d\" load-path))" . 1357) nil (1403 . 1446) (1403 . 1404) nil (1357 . 1402) (1357 . 1358) nil ("
" . 1357) nil (1357 . 1358) nil ("
" . 1357) ("(setq load-path (cons\"~/.emacs.d\" load-path))" . 1357) nil ("
" . 1403) ("(add-to-list 'load-path \"~/.emacs.d/lisp/\")" . 1403) nil (1372 . 1373) nil (nil rear-nonsticky nil 1400 . 1401) (nil fontified nil 1357 . 1401) (1357 . 1401) nil (1356 . 1357) (t 26560 22033 668057 112000) nil (nil rear-nonsticky nil 1433 . 1434) (nil fontified nil 1357 . 1434) (1357 . 1434) nil (1356 . 1357) (t 26560 21817 840768 556000) nil ("(require 'package)
(setq package-archives
      '((\"gnu\" . \"http://elpa.gnu.org/packages/\")
        (\"marmalade\" . \"https://marmalade-repo.org/packages/\")
        (\"melpa\" . \"http://melpa.org/packages/\")
        (\"org\" . \"http://orgmode.org/elpa/\")))
(package-initialize)


" . 89) 363 (t 26560 21745 333908 164000) nil (360 . 361) nil (nil rear-nonsticky nil 359 . 360) (nil fontified nil 89 . 360) (89 . 360) nil (87 . 90) (t 26560 21564 137548 479000) nil (apply -30 9050 9464 undo--wrap-and-run-primitive-undo 9050 9464 ((9389 . 9392) (9374 . 9377) (9355 . 9358) (9330 . 9333) (9274 . 9277) (9226 . 9229) (9129 . 9132) (9088 . 9091) (9071 . 9074) (9050 . 9053) 9433)) nil (apply 30 9050 9433 undo--wrap-and-run-primitive-undo 9050 9433 ((";; " . -9362) (";; " . -9350) (";; " . -9334) (";; " . -9312) (";; " . -9259) (";; " . -9214) (";; " . -9120) (";; " . -9082) (";; " . -9068) (";; " . -9050) 9463 (t 26560 9002 427423 486000))) nil (apply -30 9050 9464 undo--wrap-and-run-primitive-undo 9050 9464 ((9389 . 9392) (9374 . 9377) (9355 . 9358) (9330 . 9333) (9274 . 9277) (9226 . 9229) (9129 . 9132) (9088 . 9091) (9071 . 9074) (9050 . 9053) 9433)) nil ("

" . 9434) 9436 nil ("
" . 9434) ("bind" . 9434) nil (9434 . 9438) nil (9433 . 9436) nil (9433 . 9434) nil ("
" . 9433) ("gi" . 9433) nil ("t" . -9435) 9436 nil (9433 . 9436) nil (9433 . 9434) nil ("
" . 9433) ("git-rebase-filename-regexp" . 9433) nil (9433 . 9459) ("git" . -9433) 9436 nil (9433 . 9436) nil ("g" . -9433) ("i" . -9434) ("t" . -9435) ("h" . -9436) 9437 nil (9433 . 9437) nil ("g" . -9433) ("i" . -9434) ("t" . -9435) ("h" . -9436) 9437 nil (9433 . 9437) (t 26560 8892 791876 569000) nil ("
  :after editorconfig jsonrpc" . 9431) 9461 (t 26560 8881 680243 402000) nil ("

" . 9464) nil (9464 . 9465) nil ("
" . 9464) ("leaf-keywords" . 9464) nil (9464 . 9477) (9464 . 9465) nil ("
" . 9464) nil (9464 . 9466) nil ("

" . 9049) nil ("(" . 9050) nil (9050 . 9051) nil ("
" . 9050) nil ("(autoload-if-found '(copilot-login copilot-mode) \"copilot\" nil t)

(keymap-global-set \"C-x C-:\" #'copilot-mode)

(with-eval-after-load 'copilot
  ;; config
  (setopt copilot-log-max 100000)

  ;; keymap
  (define-key copilot-mode-map (kbd \"C-S-i\") #'copilot-complete)
  (define-key copilot-mode-map (kbd \"C-S-a\") #'copilot-accept-completion)
  (define-key copilot-mode-map (kbd \"C-c # a\") #'copilot-accept-completion))" . 9051) nil (apply 33 9471 9885 undo--wrap-and-run-primitive-undo 9471 9885 ((";; " . 9471) (";; " . 9492) (";; " . 9509) (";; " . 9550) (";; " . 9647) (";; " . 9695) (";; " . 9751) (";; " . 9776) (";; " . 9795) (";; " . 9810) (";; " . 9883) 9917)) nil (apply -33 9471 9918 undo--wrap-and-run-primitive-undo 9471 9918 ((9883 . 9886) (9810 . 9813) (9795 . 9798) (9776 . 9779) (9751 . 9754) (9695 . 9698) (9647 . 9650) (9550 . 9553) (9509 . 9512) (9492 . 9495) (9471 . 9474) 9051)) nil (9051 . 9469) nil (9050 . 9051) nil ("
" . 9050) nil ("(autoload-if-found '(copilot-login copilot-mode) \"copilot\" nil t)

(keymap-global-set \"C-x C-:\" #'copilot-mode)

(with-eval-after-load 'copilot
  ;; config
  (setopt copilot-log-max 100000)

  ;; keymap
  (define-key copilot-mode-map (kbd \"C-S-i\") #'copilot-complete)
  (define-key copilot-mode-map (kbd \"C-S-a\") #'copilot-accept-completion)
  (define-key copilot-mode-map (kbd \"C-c # a\") #'copilot-accept-completion))" . 9051) nil (apply 33 9471 9885 undo--wrap-and-run-primitive-undo 9471 9885 ((";; " . 9471) (";; " . 9492) (";; " . 9509) (";; " . 9550) (";; " . 9647) (";; " . 9695) (";; " . 9751) (";; " . 9776) (";; " . 9795) (";; " . 9810) (";; " . 9883) 9917)) nil (apply -33 9471 9918 undo--wrap-and-run-primitive-undo 9471 9918 ((9883 . 9886) (9810 . 9813) (9795 . 9798) (9776 . 9779) (9751 . 9754) (9695 . 9698) (9647 . 9650) (9550 . 9553) (9509 . 9512) (9492 . 9495) (9471 . 9474) 9884)) nil (9051 . 9469) nil (9050 . 9051) nil ("(" . -9050) 9051 nil (9050 . 9051) nil (9049 . 9051) (t 26560 8015 431738 180000) nil ("

" . 9464) 9466 nil (9464 . 9465) nil ("
" . 9464) ("leaf-keywords" . 9464) nil (9464 . 9477) ("leaf" . -9464) 9468 nil (9464 . 9468) nil (9463 . 9464) nil ("
" . -9463) ("
" . -9464) 9465 nil (9464 . 9465) nil (9463 . 9464) nil ("
" . -9048) ("
" . -9049) ("
" . -9050) 9051 nil (9049 . 9052) (t 26560 7917 701236 876000)))
