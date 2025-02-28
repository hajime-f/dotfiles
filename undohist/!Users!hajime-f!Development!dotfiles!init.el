
((digest . "83cb108c594dad66d65706065d3b4f9a") (undo-list nil ("



" . 3842) ((marker) . -2) ((marker . 3842) . -2) ((marker . 3842) . -2) ((marker . 3842) . -2) ((marker . 3842) . -2) ((marker . 3842) . -2) ((marker . 3842) . -2) ((marker . 3842) . -2) ((marker . 3842) . -2) ((marker . 3842) . -2) ((marker . 3842) . -2) ((marker . 3842) . -2) ((marker . 3842) . -2) ((marker . 3842) . -2) ((marker . 3842) . -2) nil ("(leaf doom-modeline
  :ensure t
  :hook (after-init-hook . doom-modeline-mode)
  :custom
  (doom-modeline-icon . t)
  (doom-modeline-major-mode-icon . nil)
  (doom-modeline-minor-modes . nil)
  :config
  (line-number-mode 0)
  (column-number-mode 0)
  (doom-modeline-def-modeline 'main
    '(bar window-number matches buffer-info remote-host buffer-position parrot selection-info)
    '(misc-info persp-name lsp github debug minor-modes input-method major-mode process vcs checker))
  :init
  (leaf nyan-mode
	:ensure t
	:config
	(nyan-mode 1)
	(nyan-start-animation)))" . 3844) ((marker . 3842) . -569) (nil fontified t 4372 . 4388) (nil fontified t 4365 . 4372) (nil fontified t 4361 . 4365) (nil fontified t 4354 . 4361) (nil fontified t 4342 . 4354) (nil fontified t 4338 . 4342) (nil fontified t 4334 . 4338) (nil fontified t 4329 . 4334) (nil fontified t 4327 . 4329) (nil fontified t 4129 . 4327) (nil fontified t 4124 . 4129) (nil fontified t 4123 . 4124) (nil fontified t 4097 . 4123) (nil fontified t 4045 . 4097) (nil fontified t 4038 . 4045) (nil fontified t 3932 . 4038) (nil fontified t 3925 . 3932) (nil fontified t 3883 . 3925) (nil fontified t 3878 . 3883) (nil fontified t 3873 . 3878) (nil fontified t 3866 . 3873) (nil fontified t 3849 . 3866) (nil fontified t 3845 . 3849) (nil fontified t 3844 . 3845) (nil rear-nonsticky nil 4412 . 4413) nil (apply 9 4416 4496 undo--wrap-and-run-primitive-undo 4416 4496 ((";; " . 4416) (";; " . 4439) (";; " . 4454) 4412)) nil (4327 . 4412) nil ("  :init
  (leaf nyan-mode
	:ensure t
	:config
	(nyan-mode 1)
	(nyan-start-animation))" . 4327) (t 26560 40674 842078 719000) nil (4327 . 4412) (t 26560 40644 166177 564000) nil ("  :init
  (leaf nyan-mode
	:ensure t
	:config
	(nyan-mode 1)
	(nyan-start-animation))" . 4327) 4412 (t 26560 40629 651406 507000) nil (apply -9 4416 4505 undo--wrap-and-run-primitive-undo 4416 4505 ((4454 . 4457) (4439 . 4442) (4416 . 4419) 4495)) nil (nil rear-nonsticky nil 4412 . 4413) (nil fontified nil 3844 . 4413) (3844 . 4413) nil (3842 . 3846) (t 26560 39897 972925 525000) nil ("




" . 3842) nil ("(use-package doom-modeline
  :ensure t
  :hook
  (after-init . doom-modeline-mode)
  :commands
  (doom-modeline-def-modeline doom-modeline-def-segment)
  :init
  (defun remove-padding-zero (num)
    (if (string= (substring num 0 1) \"0\")
        (substring num 1)
      num))

  (doom-modeline-def-segment buffer-size
    \"Display current buffer size\"
    (format-mode-line \" %IB\"))

  (doom-modeline-def-segment projectile-project-name
    \"Display Projectile project name\"
    (if (and (boundp 'projectile-mode) projectile-mode)
        (propertize (format \" Project: %s\"
                            (projectile-default-project-name (projectile-project-root)))
                    'face '(:foreground \"#8cd0d3\" :weight bold))
      \"\"))

  (doom-modeline-def-segment linum-colnum
    \"Display current linum/colnum\"
    (propertize (format \" Ln %s/%s, Col %s\"
                        (format-mode-line \"%l\")
                        (line-number-at-pos (point-max))
                        (format-mode-line \"%c\"))
                'face '(:foreground \"#8cd0d3\" :weight bold)))

  (doom-modeline-def-segment datetime
    \"Display datetime on modeline\"
    (let* ((system-time-locale \"C\")
           (dow (format \"%s\" (format-time-string \"%a\")))
           (month (format \"%s\" (remove-padding-zero (format-time-string \"%m\")) ))
           (day (format \"%s\" (remove-padding-zero (format-time-string \"%d\"))))
           (hour (format \"%s\" (remove-padding-zero (format-time-string \"%I\"))))
           (minute (format-time-string \"%M\"))
           (am-pm (format-time-string \"%p\")))
      (propertize
       (concat
        \" \"
        hour
        \":\"
        minute
        am-pm
        \"  \"
        )
       'help-echo \"Show calendar\"
       'mouse-face '(:box 1)
       'local-map (make-mode-line-mouse-map
                   'mouse-1 (lambda () (interactive) (calendar))))))

  (doom-modeline-def-segment python-venv
    \"Display current python venv name\"
    (if (eq major-mode 'python-mode)
        (let ((venv-name (if (or (not (boundp 'pyvenv-virtual-env-name))
                                 (eq pyvenv-virtual-env-name nil))
                             \"GLOBAL\"
                           pyvenv-virtual-env-name)))
          (propertize (format \" [%s]\" venv-name) 'face '(:foreground \"#f0dfaf\" :weight bold)))
      \"\"))

  (with-eval-after-load 'evil
    (doom-modeline-def-segment evil-state-seg
      \"Display current Evil State.\"
      (propertize (format \" <%s>\" (upcase (substring (symbol-name evil-state) 0 1)))
                  'face '(:weight bold)))
    (doom-modeline-def-modeline 'simple
      '(bar evil-state-seg matches remote-host buffer-info  pdf-pages linum-colnum)
      '(projectile-project-name python-venv vcs checker fancy-battery datetime)))

  (doom-modeline-def-modeline 'verbose
    '(bar matches remote-host buffer-info-simple buffer-size)
    '(major-mode minor-modes buffer-encoding))

  (defun setup-initial-doom-modeline ()
    (doom-modeline-set-modeline 'simple t))
  (add-hook 'doom-modeline-mode-hook #'setup-initial-doom-modeline)

  (defvar doom-modeline-simple-p t)
  (defun switch-modeline ()
    (interactive)
    (if doom-modeline-simple-p
        (doom-modeline-set-modeline 'verbose)
      (doom-modeline-set-modeline 'simple))
    (force-mode-line-update)
    (setq doom-modeline-simple-p (not doom-modeline-simple-p)))
  (bind-key \"C-l C-m\" 'switch-modeline)
  :config
  (setq doom-modeline-minor-modes t)
  (setq doom-modeline-major-mode-color-icon t)
  (setq doom-modeline-checker-simple-format nil))
" . 3845) (nil fontified t 7314 . 7354) (nil fontified t 7310 . 7314) (nil fontified t 7277 . 7310) (nil fontified t 7273 . 7277) (nil fontified t 7269 . 7273) (nil fontified t 7262 . 7269) (nil fontified t 7241 . 7262) (nil fontified t 7232 . 7241) (nil fontified t 7231 . 7232) (nil fontified t 7223 . 7231) (nil fontified t 7165 . 7223) (nil fontified t 7161 . 7165) (nil fontified t 7013 . 7161) (nil fontified t 7011 . 7013) (nil fontified t 7004 . 7011) (nil fontified t 6993 . 7004) (nil fontified t 6984 . 6993) (nil fontified t 6969 . 6984) (nil fontified t 6968 . 6969) (nil fontified t 6963 . 6968) (nil fontified t 6956 . 6963) (nil fontified t 6934 . 6956) (nil fontified t 6933 . 6934) (nil fontified t 6927 . 6933) (nil fontified t 6807 . 6927) (nil fontified t 6780 . 6807) (nil fontified t 6779 . 6780) (nil fontified t 6774 . 6779) (nil fontified t 6714 . 6774) (nil fontified t 6660 . 6714) (nil fontified t 6652 . 6660) (nil fontified t 6651 . 6652) (nil fontified t 6625 . 6651) (nil fontified t 6454 . 6625) (nil fontified t 6447 . 6454) (nil fontified t 6446 . 6447) (nil fontified t 6420 . 6446) (nil fontified t 6406 . 6420) (nil fontified t 6399 . 6406) (nil fontified t 6321 . 6399) (nil fontified t 6314 . 6321) (nil fontified t 6287 . 6314) (nil fontified t 6258 . 6287) (nil fontified t 6251 . 6258) (nil fontified t 6237 . 6251) (nil fontified t 6236 . 6237) (nil fontified t 6211 . 6236) (nil fontified t 6199 . 6211) (nil fontified t 6179 . 6199) (nil fontified t 6172 . 6179) (nil fontified t 6170 . 6172) (nil fontified t 6155 . 6170) (nil fontified t 6148 . 6155) (nil fontified t 6147 . 6148) (nil fontified t 6138 . 6147) (nil fontified t 6137 . 6138) (nil fontified t 6126 . 6137) (nil fontified t 6106 . 6126) (nil fontified t 6099 . 6106) (nil fontified t 6014 . 6099) (nil fontified t 6006 . 6014) (nil fontified t 5869 . 6006) (nil fontified t 5867 . 5869) (nil fontified t 5865 . 5867) (nil fontified t 5863 . 5865) (nil fontified t 5849 . 5863) (nil fontified t 5846 . 5849) (nil fontified t 5807 . 5846) (nil fontified t 5805 . 5807) (nil fontified t 5799 . 5805) (nil fontified t 5765 . 5799) (nil fontified t 5760 . 5765) (nil fontified t 5749 . 5760) (nil fontified t 5748 . 5749) (nil fontified t 5723 . 5748) (nil fontified t 5701 . 5723) (nil fontified t 5690 . 5701) (nil fontified t 5685 . 5690) (nil fontified t 5679 . 5685) (nil fontified t 5602 . 5679) (nil fontified t 5598 . 5602) (nil fontified t 5576 . 5598) (nil fontified t 5561 . 5576) (nil fontified t 5532 . 5561) (nil fontified t 5528 . 5532) (nil fontified t 5497 . 5528) (nil fontified t 5490 . 5497) (nil fontified t 5487 . 5490) (nil fontified t 5465 . 5487) (nil fontified t 5462 . 5465) (nil fontified t 5417 . 5462) (nil fontified t 5413 . 5417) (nil fontified t 5372 . 5413) (nil fontified t 5368 . 5372) (nil fontified t 5324 . 5368) (nil fontified t 5320 . 5324) (nil fontified t 5278 . 5320) (nil fontified t 5274 . 5278) (nil fontified t 5244 . 5274) (nil fontified t 5240 . 5244) (nil fontified t 5214 . 5240) (nil fontified t 5198 . 5214) (nil fontified t 5194 . 5198) (nil fontified t 5164 . 5194) (nil fontified t 5160 . 5164) (nil fontified t 5118 . 5160) (nil fontified t 5114 . 5118) (nil fontified t 5084 . 5114) (nil fontified t 5080 . 5084) (nil fontified t 5059 . 5080) (nil fontified t 5055 . 5059) (nil fontified t 5029 . 5055) (nil fontified t 5026 . 5029) (nil fontified t 5004 . 5026) (nil fontified t 5000 . 5004) (nil fontified t 4994 . 5000) (nil fontified t 4964 . 4994) (nil fontified t 4959 . 4964) (nil fontified t 4951 . 4959) (nil fontified t 4950 . 4951) (nil fontified t 4925 . 4950) (nil fontified t 4912 . 4925) (nil fontified t 4905 . 4912) (nil fontified t 4904 . 4905) (nil fontified t 4895 . 4904) (nil fontified t 4894 . 4895) (nil fontified t 4883 . 4894) (nil fontified t 4856 . 4883) (nil fontified t 4852 . 4856) (nil fontified t 4751 . 4852) (nil fontified t 4747 . 4751) (nil fontified t 4704 . 4747) (nil fontified t 4685 . 4704) (nil fontified t 4660 . 4685) (nil fontified t 4630 . 4660) (nil fontified t 4625 . 4630) (nil fontified t 4613 . 4625) (nil fontified t 4612 . 4613) (nil fontified t 4587 . 4612) (nil fontified t 4580 . 4587) (nil fontified t 4578 . 4580) (nil fontified t 4564 . 4578) (nil fontified t 4557 . 4564) (nil fontified t 4556 . 4557) (nil fontified t 4547 . 4556) (nil fontified t 4546 . 4547) (nil fontified t 4535 . 4546) (nil fontified t 4417 . 4535) (nil fontified t 4403 . 4417) (nil fontified t 4331 . 4403) (nil fontified t 4328 . 4331) (nil fontified t 4326 . 4328) (nil fontified t 4324 . 4326) (nil fontified t 4318 . 4324) (nil fontified t 4285 . 4318) (nil fontified t 4280 . 4285) (nil fontified t 4257 . 4280) (nil fontified t 4256 . 4257) (nil fontified t 4231 . 4256) (nil fontified t 4224 . 4231) (nil fontified t 4218 . 4224) (nil fontified t 4195 . 4218) (nil fontified t 4166 . 4195) (nil fontified t 4161 . 4166) (nil fontified t 4150 . 4161) (nil fontified t 4149 . 4150) (nil fontified t 4124 . 4149) (nil fontified t 4080 . 4124) (nil fontified t 4077 . 4080) (nil fontified t 4047 . 4077) (nil fontified t 4045 . 4047) (nil fontified t 4033 . 4045) (nil fontified t 4014 . 4033) (nil fontified t 4013 . 4014) (nil fontified t 4008 . 4013) (nil fontified t 4004 . 4008) (nil fontified t 3999 . 4004) (nil fontified t 3997 . 3999) (nil fontified t 3995 . 3997) (nil fontified t 3970 . 3995) (nil fontified t 3969 . 3970) (nil fontified t 3943 . 3969) (nil fontified t 3939 . 3943) (nil fontified t 3930 . 3939) (nil fontified t 3891 . 3930) (nil fontified t 3886 . 3891) (nil fontified t 3881 . 3886) (nil fontified t 3874 . 3881) (nil fontified t 3857 . 3874) (nil fontified t 3846 . 3857) (nil fontified t 3845 . 3846) (nil rear-nonsticky nil 7403 . 7404) nil (apply 9 7407 7488 undo--wrap-and-run-primitive-undo 7407 7488 ((";; " . 7407) (";; " . 7430) (";; " . 7445) 3997)) nil (apply -9 7407 7497 undo--wrap-and-run-primitive-undo 7407 7497 ((7445 . 7448) (7430 . 7433) (7407 . 7410) 7487)) nil (nil rear-nonsticky nil 7403 . 7404) (nil fontified nil 3845 . 7404) (3845 . 7404) nil (3842 . 3847) (t 26560 39636 842548 502000) nil ("(setq doom-modeline-support-imenu t)" . 3923) (nil fontified t 3958 . 3959) nil ("
" . 3959) nil (3959 . 3960) nil (nil fontified nil 3958 . 3959) (nil fontified nil 3928 . 3958) (nil fontified nil 3924 . 3928) (nil fontified nil 3923 . 3924) (3923 . 3959) nil ("
" . 3843) ("(setq doom-modeline-support-imenu t)" . 3843) (t 26560 39622 383415 878000) nil (nil rear-nonsticky nil 3878 . 3879) (nil fontified nil 3843 . 3879) (3843 . 3879) nil (3842 . 3843) (t 26560 39548 937984 656000) nil (3895 . 3899) nil (3894 . 3895) (t 26560 39531 344936 830000) nil ("-" . -3894) 3895 nil ("hook" . -3895) 3899 (t 26560 39489 871893 638000) nil ("  ;; :custom ((doom-modeline-height . 25)
  ;;          (doom-modeline-bar-width . 5)
  ;;          (doom-modeline-icon . t)
  ;;          (doom-modeline-buffer-file-name-style 'truncate-upto-project)
  ;;          (doom-modeline-persp-name . t)
  ;;          (doom-modeline-enable-word-count . nil)
  ;;          (doom-modeline-github . t))
" . 3875) 4217 (t 26560 39352 524981 815000) nil ("q" . 4746) nil (4746 . 4747) (t 26560 39352 524981 815000) nil ("
  
" . 4263) (4264 . 4266) ("  
" . 4265) (4265 . 4267) ("  " . 4266) nil (":config
    (doom-modeline-def-modeline
     'main
     '(bar window-number matches buffer-info remote-host buffer-position parrot selection-info)
     '(misc-info persp-name lsp github debug minor-modes input-method major-mode process vcs checker))" . 4264) (nil fontified t 4321 . 4411) (nil fontified t 4320 . 4321) (nil fontified t 4319 . 4320) (nil fontified t 4315 . 4319) (nil fontified t 4309 . 4315) (nil fontified t 4308 . 4309) (nil fontified t 4304 . 4308) (nil fontified t 4276 . 4304) (nil fontified t 4274 . 4276) (nil fontified t 4272 . 4274) (nil fontified t 4271 . 4272) (nil fontified t 4264 . 4271) (nil rear-nonsticky nil 4512 . 4513) nil ("  " . 4264) nil (4276 . 4278) nil (4308 . 4309) nil (4318 . 4319) nil (4413 . 4414) nil (4510 . 4511) (t 26560 39319 430627 423000) nil ("
" . -4510) 4511 nil (" " . -4413) 4414 nil (" " . -4318) 4320 nil (" " . -4308) 4311 nil ("  " . -4276) 4283 nil (4264 . 4266) 4271 nil (nil rear-nonsticky nil 4512 . 4513) (nil fontified nil 4264 . 4513) (4264 . 4513) nil (4266 . 4268) ("  " . 4265) (4265 . 4268) ("  " . 4264) (4263 . 4267) (t 26560 39239 497940 725000) nil (apply 6 4217 4265 undo--wrap-and-run-primitive-undo 4217 4265 (("
  " . 4263) (";; " . 4219) 4266)) nil (apply -6 4217 4271 undo--wrap-and-run-primitive-undo 4217 4271 ((4219 . 4222) (4263 . 4266))) nil (apply -21 3875 4265 undo--wrap-and-run-primitive-undo 3875 4265 ((4177 . 4180) (4123 . 4126) (4078 . 4081) (4002 . 4005) (3963 . 3966) (3919 . 3922) (3877 . 3880) 4196)) nil (apply 3 3991 4106 undo--wrap-and-run-primitive-undo 3991 4106 ((";; " . 4002) 4160)) nil (apply 3 4109 4199 undo--wrap-and-run-primitive-undo 4109 4199 ((";; " . 4120) 3912)) nil (apply -3 4109 4202 undo--wrap-and-run-primitive-undo 4109 4202 ((4120 . 4123) 4160)) nil (apply -3 3991 4109 undo--wrap-and-run-primitive-undo 3991 4109 ((4002 . 4005) 4064)) nil (";; (leaf *doom-emacs-theme
;;   :config
;;   (leaf doom-themes
;;     :ensure t
;;     :defun doom-modeline-def-modeline
;;     :custom ((doom-themes-enable-italic . t)
;;              (doom-themes-enable-bold . t))
;;     :config
;;     (load-theme 'doom-dark+ t)
;;     )
;;   (leaf doom-modeline
;;     :ensure t
;;     :custom ((doom-modeline-buffer-file-name-style . 'truncate-with-project)
;;              (doom-modeline-icon . t)
;;              (doom-modeline-major-mode-icon . nil)
;;              (doom-modeline-minor-modes . nil))
;;     :hook (after-init-hook . doom-modeline-mode)
;;     ;; :config
;;     ;; (doom-modeline-def-modeline
;;     ;;  'main
;;     ;;  '(bar window-number matches buffer-info remote-host buffer-position parrot selection-info)
;;     ;;  '(misc-info persp-name lsp github debug minor-modes input-method major-mode process vcs checker))
;;     )
;; )





" . 3527) 4424 (t 26560 39103 800903 21000) nil (5142 . 5155) nil (5141 . 5142) (t 26560 39092 900614 460000) nil ("
" . -5141) 5142 nil (";; (leaf doom-modeline
;;   :ensure t
;;   :init
;;   (let ((custom--inhibit-theme-enable nil))
;;     (unless (memq 'use-package custom-known-themes)
;;       (deftheme use-package)
;;       (enable-theme 'use-package)
;;       (setq custom-enabled-themes (remq 'use-package custom-enabled-themes))))
;;   (doom-modeline-mode 1)
;;   :require t)
" . 5142) 5489 (t 26560 39085 776218 465000) nil (5140 . 5141) nil (nil rear-nonsticky nil 5139 . 5140) (nil fontified nil 5139 . 5140) (nil fontified nil 5100 . 5139) (nil fontified nil 5095 . 5100) (nil fontified nil 5093 . 5095) (nil fontified nil 5091 . 5093) (nil fontified nil 5065 . 5091) (nil fontified nil 5054 . 5065) (nil fontified nil 5014 . 5054) (nil fontified nil 5003 . 5014) (nil fontified nil 4972 . 5003) (nil fontified nil 4961 . 4972) (nil fontified nil 4899 . 4961) (nil fontified nil 4888 . 4899) (nil fontified nil 4863 . 4888) (nil fontified nil 4852 . 4863) (nil fontified nil 4822 . 4852) (nil fontified nil 4811 . 4822) (nil fontified nil 4781 . 4811) (nil fontified nil 4774 . 4781) (nil fontified nil 4772 . 4774) (nil fontified nil 4769 . 4772) (nil fontified nil 4762 . 4769) (nil fontified nil 4760 . 4762) (nil fontified nil 4745 . 4760) (nil fontified nil 4741 . 4745) (nil fontified nil 4740 . 4741) (4740 . 5140) nil (4739 . 4740) nil ("
" . -5301) ("
" . -5302) 5303 nil ("(leaf doom-modeline
  :ensure t
  :custom ((doom-modeline-height . 25)
           (doom-modeline-bar-width . 5)
           (doom-modeline-icon . t)
           (doom-modeline-buffer-file-name-style 'truncate-upto-project)
           (doom-modeline-persp-name . t)
           (doom-modeline-enable-word-count . nil)
           (doom-modeline-github . t))
  :hook (after-init-hook . doom-modeline-mode))" . 5303) 5703 (t 26560 39064 870513 167000) nil ("
  " . 5702) 5705 (t 26560 39060 502222 556000) nil ("  ;; :doc \"A minimal and modern mode-line\"
  ;; :req \"emacs-25.1\" \"compat-29.1.4.5\" \"nerd-icons-0.1.0\" \"shrink-path-0.3.1\"
  ;; :tag \"mode-line\" \"faces\" \"emacs>=25.1\"
  ;; :url \"https://github.com/seagle0128/doom-modeline\"
  ;; :added \"2025-02-27\"
  ;; :emacs>= 25.1
" . 5323) 5590 (t 26560 39055 717223 596000) nil ("
  " . 5921) 5924 nil (5884 . 5895) ("  " . 5884) 5912 nil (5833 . 5844) ("  " . 5833) 5874 nil (5791 . 5802) ("  " . 5791) 5823 nil (5718 . 5729) ("  " . 5718) 5753 nil (5682 . 5693) ("  " . 5682) 5708 nil (5641 . 5652) ("  " . 5641) 5672 nil ("
  " . 5613) 5616 nil ("  ;; :init (doom-modeline-mode 1)
  ;; :global-minor-mode t
  ;; :after compat nerd-icons shrink-path
" . 5922) 6024 (t 26560 38999 422042 8000) nil (4735 . 4736) nil ("5" . -4735) 4736 (t 26560 38971 721980 190000) nil (apply -18 5323 5602 undo--wrap-and-run-primitive-undo 5323 5602 ((5573 . 5576) (5548 . 5551) (5492 . 5495) (5448 . 5451) (5368 . 5371) (5325 . 5328) 5572)) nil (apply -9 5904 6010 undo--wrap-and-run-primitive-undo 5904 6010 ((5966 . 5969) (5940 . 5943) (5906 . 5909) 5997)) nil (apply 33 4424 4739 undo--wrap-and-run-primitive-undo 4424 4739 ((";; " . -4700) (";; " . -4671) (";; " . -4661) (";; " . -4649) (";; " . -4633) (";; " . -4611) (";; " . -4566) (";; " . -4528) (";; " . -4495) (";; " . -4442) (";; " . -4424) 4772)) nil (apply -72 3527 4420 undo--wrap-and-run-primitive-undo 3527 4420 ((4414 . 4417) (4405 . 4408) (4296 . 4299) (4194 . 4197) (4177 . 4180) (4139 . 4142) (4121 . 4124) (4069 . 4072) (4018 . 4021) (3964 . 3967) (3923 . 3926) (3843 . 3846) (3826 . 3829) (3801 . 3804) (3792 . 3795) (3758 . 3761) (3743 . 3746) (3696 . 3699) (3648 . 3651) (3607 . 3610) (3590 . 3593) (3567 . 3570) (3554 . 3557) (3527 . 3530) 4347)) nil (apply 51 3527 4085 undo--wrap-and-run-primitive-undo 3527 4085 ((";; " . 3527) (";; " . 3554) (";; " . 3567) (";; " . 3590) (";; " . 3607) (";; " . 3648) (";; " . 3696) (";; " . 3743) (";; " . 3758) (";; " . 3792) (";; " . 3801) (";; " . 3826) (";; " . 3843) (";; " . 3923) (";; " . 3964) (";; " . 4018) (";; " . 4069) 4121)) nil (apply -51 3527 4136 undo--wrap-and-run-primitive-undo 3527 4136 ((4069 . 4072) (4018 . 4021) (3964 . 3967) (3923 . 3926) (3843 . 3846) (3826 . 3829) (3801 . 3804) (3792 . 3795) (3758 . 3761) (3743 . 3746) (3696 . 3699) (3648 . 3651) (3607 . 3610) (3590 . 3593) (3567 . 3570) (3554 . 3557) (3527 . 3530) 4070)) nil (apply 66 5264 5962 undo--wrap-and-run-primitive-undo 5264 5962 ((";; " . -5958) (";; " . -5919) (";; " . -5896) (";; " . -5865) (";; " . -5818) (";; " . -5814) (";; " . -5785) (";; " . -5743) (";; " . -5710) (";; " . -5646) (";; " . -5619) (";; " . -5587) (";; " . -5557) (";; " . -5545) (";; " . -5533) (";; " . -5517) (";; " . -5495) (";; " . -5442) (";; " . -5401) (";; " . -5324) (";; " . -5284) (";; " . -5264) 6028)) nil (5862 . 5867) nil (5861 . 5862) nil ("
" . -5861) ("
" . -5862) 5863 nil (nil fontified nil 5861 . 5862) (nil fontified nil 5835 . 5861) (nil fontified nil 5830 . 5835) (nil fontified nil 5790 . 5830) (nil fontified nil 5785 . 5790) (nil fontified nil 5754 . 5785) (nil fontified nil 5749 . 5754) (nil fontified nil 5748 . 5749) (nil fontified nil 5738 . 5748) (nil fontified nil 5687 . 5738) (nil fontified nil 5682 . 5687) (nil fontified nil 5657 . 5682) (nil fontified nil 5652 . 5657) (nil fontified nil 5622 . 5652) (nil fontified nil 5617 . 5622) (nil fontified nil 5589 . 5617) (nil fontified nil 5584 . 5589) (5584 . 5862) nil (5583 . 5585) nil (";;   (doom-modeline-height . 25)
;;   (doom-modeline-bar-width . 5)
;;   (doom-modeline-icon . t)
;;   (doom-modeline-buffer-file-name-style 'truncate-upto-project)
;;   (doom-modeline-persp-name . t)
;;   (doom-modeline-enable-word-count . nil)
;;   (doom-modeline-github . t)
" . 5583) (nil fontified t 5588 . 5616) (nil fontified t 5621 . 5651) (nil fontified t 5656 . 5681) (nil fontified t 5747 . 5748) (nil fontified t 5753 . 5784) (nil fontified t 5789 . 5829) (nil fontified t 5860 . 5861) nil (nil fontified nil 5860 . 5861) (nil fontified nil 5834 . 5860) (nil fontified nil 5829 . 5834) (nil fontified nil 5789 . 5829) (nil fontified nil 5784 . 5789) (nil fontified nil 5753 . 5784) (nil fontified nil 5748 . 5753) (nil fontified nil 5747 . 5748) (nil fontified nil 5737 . 5747) (nil fontified nil 5686 . 5737) (nil fontified nil 5681 . 5686) (nil fontified nil 5656 . 5681) (nil fontified nil 5651 . 5656) (nil fontified nil 5621 . 5651) (nil fontified nil 5616 . 5621) (nil fontified nil 5588 . 5616) (nil fontified nil 5583 . 5588) (5583 . 5861) nil (5582 . 5584) ("(" . -5582) (5581 . 5583) nil (";;   (doom-modeline-height . 25)
;;   (doom-modeline-bar-width . 5)
;;   (doom-modeline-icon . t)
;;   (doom-modeline-buffer-file-name-style 'truncate-upto-project)
;;   (doom-modeline-persp-name . t)
;;   (doom-modeline-enable-word-count . nil)
;;   (doom-modeline-github . t)
" . 5582) 5860 nil (nil rear-nonsticky nil 5859 . 5860) (nil fontified nil 5833 . 5860) (nil fontified nil 5828 . 5833) (nil fontified nil 5788 . 5828) (nil fontified nil 5783 . 5788) (nil fontified nil 5752 . 5783) (nil fontified nil 5747 . 5752) (nil fontified nil 5746 . 5747) (nil fontified nil 5736 . 5746) (nil fontified nil 5685 . 5736) (nil fontified nil 5680 . 5685) (nil fontified nil 5655 . 5680) (nil fontified nil 5650 . 5655) (nil fontified nil 5620 . 5650) (nil fontified nil 5615 . 5620) (nil fontified nil 5587 . 5615) (nil fontified nil 5582 . 5587) (nil fontified nil 5574 . 5582) (nil fontified nil 5569 . 5574) (5569 . 5860) nil (";;   :custom
;;   (doom-modeline-height . 25)
;;   (doom-modeline-bar-width . 5)
;;   (doom-modeline-icon . t)
;;   (doom-modeline-buffer-file-name-style 'truncate-upto-project)
;;   (doom-modeline-persp-name . t)
;;   (doom-modeline-enable-word-count . nil)
;;   (doom-modeline-github . t)
" . 5721) 6012 (t 26560 38837 311488 206000) nil (5572 . 5574) nil (5569 . 5570) nil (";" . 5569) (" " . 5569) (" " . 5569) (" " . 5569) (" " . 5569) nil (apply -3 5569 5621 undo--wrap-and-run-primitive-undo 5569 5621 ((5573 . 5576) 5617)) nil (nil rear-nonsticky nil 5617 . 5618) (nil fontified nil 5578 . 5618) (nil fontified nil 5573 . 5578) (nil fontified nil 5569 . 5573) (5569 . 5618) (t 26560 38722 979376 474000) nil (apply -20 4070 4345 undo--wrap-and-run-primitive-undo 4070 4345 ((4237 . 4240) (4138 . 4141) (4124 . 4127) (4089 . 4092) (4074 . 4077) (4323 . 4328))) nil ("
" . 4325) ("  " . -4325) (4325 . 4327) ("  ;; Hide mode line" . 4325) nil ("  (leaf hide-mode-line
    :ensure t neotree minimap imenu-list
    :hook ((neotree-mode imenu-list-minor-mode minimap-mode) . hide-mode-line-mode))" . 4345) 4493 (t 26560 38665 363284 270000) nil ("
" . 3765) ("    " . -3765) (3765 . 3769) ("    ;; (doom-themes-org-config)" . 3765) nil ("
" . 3765) ("    " . -3765) (3765 . 3769) ("    ;; (doom-themes-neotree-config)" . 3765) nil ("
" . 3734) ("    " . -3734) (3734 . 3738) ("    ;; (load-theme 'doom-tomorrow-night t)" . 3734) (t 26560 38634 84612 245000) nil (apply 3 3777 3808 undo--wrap-and-run-primitive-undo 3777 3808 ((";; " . 3781) 3847)) nil (apply -3 3811 3847 undo--wrap-and-run-primitive-undo 3811 3847 ((3815 . 3818) 3811)) nil (apply 3 3811 3844 undo--wrap-and-run-primitive-undo 3811 3844 ((";; " . -3815) 3847)) nil (apply -3 3777 3811 undo--wrap-and-run-primitive-undo 3777 3811 ((3781 . 3784) 3808)) nil (apply 3 3777 3808 undo--wrap-and-run-primitive-undo 3777 3808 ((";; " . -3781) 3811)) nil (apply -3 3734 3811 undo--wrap-and-run-primitive-undo 3734 3811 ((3738 . 3741) 3774)) nil (apply 3 3734 3774 undo--wrap-and-run-primitive-undo 3734 3774 ((";; " . -3738) 3777)) nil (apply -3 3777 3811 undo--wrap-and-run-primitive-undo 3777 3811 ((3781 . 3784) 3807)) nil (3799 . 3804) nil ("dracula" . -3799) 3806 (t 26560 38488 959708 510000) nil (apply -60 5525 6231 undo--wrap-and-run-primitive-undo 5525 6231 ((6223 . 6226) (6191 . 6194) (6146 . 6149) (6110 . 6113) (6043 . 6046) (6013 . 6016) (5978 . 5981) (5945 . 5948) (5932 . 5935) (5890 . 5893) (5864 . 5867) (5830 . 5833) (5815 . 5818) (5796 . 5799) (5771 . 5774) (5715 . 5718) (5671 . 5674) (5591 . 5594) (5548 . 5551) (5525 . 5528) 6170)) nil (apply -33 4613 4962 undo--wrap-and-run-primitive-undo 4613 4962 ((4919 . 4922) (4887 . 4890) (4874 . 4877) (4859 . 4862) (4840 . 4843) (4815 . 4818) (4767 . 4770) (4726 . 4729) (4690 . 4693) (4634 . 4637) (4613 . 4616) 4928)) nil (nil rear-nonsticky nil 4606 . 4607) (nil fontified nil 3527 . 4607) (3527 . 4607) nil (3526 . 3532) (t 26560 38361 682513 207000) nil (apply 60 4406 5051 undo--wrap-and-run-primitive-undo 4406 5051 ((";; " . -5047) (";; " . -5018) (";; " . -4976) (";; " . -4943) (";; " . -4879) (";; " . -4852) (";; " . -4820) (";; " . -4790) (";; " . -4780) (";; " . -4741) (";; " . -4718) (";; " . -4687) (";; " . -4675) (";; " . -4659) (";; " . -4637) (";; " . -4584) (";; " . -4543) (";; " . -4466) (";; " . -4426) (";; " . -4406) 5111)) nil (apply -30 3843 4191 undo--wrap-and-run-primitive-undo 3843 4191 ((4173 . 4176) (4145 . 4148) (4063 . 4066) (4026 . 4029) (3994 . 3997) (3939 . 3942) (3892 . 3895) (3881 . 3884) (3866 . 3869) (3843 . 3846) 4160)) nil ("
" . -4119) 4120 nil ("    (custom-theme-set-variables 'use-package
				;; '(doom-modeline-height 25 nil nil \"Customized with use-package doom-modeline\")
				;; '(doom-modeline-bar-width 5 nil nil \"Customized with use-package doom-modeline\")
				;; '(doom-modeline-icon t nil nil \"Customized with use-package doom-modeline\")
				;; '(doom-modeline-buffer-file-name-style 'truncate-upto-project nil nil \"Customized with use-package doom-modeline\")
				;; '(doom-modeline-persp-name t nil nil \"Customized with use-package doom-modeline\")
				;; '(doom-modeline-enable-word-count nil nil nil \"Customized with use-package doom-modeline\")
				;; '(doom-modeline-github t nil nil \"Customized with use-package doom-modeline\")
                                )" . 4120) 4849 (t 26560 38230 966364 16000) nil (apply -9 4165 4544 undo--wrap-and-run-primitive-undo 4165 4544 ((4343 . 4346) (4255 . 4258) (4169 . 4172) 4413)) nil (apply -36 4722 4842 undo--wrap-and-run-primitive-undo 4722 4842 ((4726 . 4729) (4803 . 4836))) nil (apply -6 4535 4806 undo--wrap-and-run-primitive-undo 4535 4806 ((4628 . 4631) (4539 . 4542) 4716)) nil (apply -3 4413 4535 undo--wrap-and-run-primitive-undo 4413 4535 ((4417 . 4420) 4531)) nil ("
" . -3842) ("
" . -3843) 3844 nil (apply 54 3845 4838 undo--wrap-and-run-primitive-undo 3845 4838 ((";; " . -4824) (";; " . -4799) (";; " . -4715) (";; " . -4620) (";; " . -4534) (";; " . -4415) (";; " . -4335) (";; " . -4250) (";; " . -4167) (";; " . -4122) (";; " . -4044) (";; " . -4010) (";; " . -3981) (";; " . -3929) (";; " . -3885) (";; " . -3877) (";; " . -3865) (";; " . -3845) 4892)) nil (apply -60 5108 5814 undo--wrap-and-run-primitive-undo 5108 5814 ((5806 . 5809) (5774 . 5777) (5729 . 5732) (5693 . 5696) (5626 . 5629) (5596 . 5599) (5561 . 5564) (5528 . 5531) (5515 . 5518) (5473 . 5476) (5447 . 5450) (5413 . 5416) (5398 . 5401) (5379 . 5382) (5354 . 5357) (5298 . 5301) (5254 . 5257) (5174 . 5177) (5131 . 5134) (5108 . 5111) 5753)) nil (nil rear-nonsticky nil 5418 . 5419) (nil fontified nil 5391 . 5419) (5391 . 5419) nil (5388 . 5391) nil (" " . -5388) (" " . -5389) 5390 (t 26560 37957 82780 594000) nil (5487 . 5489) nil (5518 . 5520) nil (5543 . 5545) nil (5638 . 5640) nil (5676 . 5678) nil (5705 . 5707) (t 26560 37937 644372 642000) nil ("." . -5705) (" " . -5706) 5707 nil ("." . -5676) (" " . -5677) 5678 nil ("." . -5638) (" " . -5639) 5640 nil ("." . -5543) (" " . -5544) 5545 nil ("." . -5518) (" " . -5519) 5520 nil ("." . -5487) (" " . -5488) 5489 (t 26560 37871 144346 433000) nil ("setq " . 5466) nil ("setq " . 5501) nil ("setq " . 5538) nil ("setq " . 5570) nil ("setq " . 5639) nil ("setq " . 5677) nil ("setq " . 5724) (t 26560 37851 167646 854000) nil (5724 . 5729) nil (5677 . 5682) nil (5639 . 5644) nil (5570 . 5575) nil (5538 . 5543) nil (5501 . 5506) nil (5466 . 5471) (t 26560 37654 611350 276000) nil (5456 . 5462) nil ("init" . -5456) 5460 nil (nil fontified nil 5716 . 5717) (nil fontified nil 5689 . 5716) (nil fontified nil 5461 . 5689) (nil fontified nil 5460 . 5461) (nil fontified nil 5455 . 5460) (nil fontified nil 5453 . 5455) (5453 . 5717) nil (5454 . 5456) ("  " . 5453) (5452 . 5456) (t 26560 37623 943171 461000) nil ("
" . -5388) 5389 nil ("  :init
  (doom-modeline-height . 25)
  (doom-modeline-bar-width . 5)
  (doom-modeline-icon . t)
  (doom-modeline-buffer-file-name-style 'truncate-upto-project)
  (doom-modeline-persp-name . t)
  (doom-modeline-enable-word-count . nil)
  (doom-modeline-github . t)" . 5389) 5653 nil (nil rear-nonsticky nil 5652 . 5653) (nil fontified nil 5625 . 5653) (nil fontified nil 5397 . 5625) (nil fontified nil 5396 . 5397) (nil fontified nil 5391 . 5396) (nil fontified nil 5389 . 5391) (5389 . 5653) nil ("  :init
  (doom-modeline-height . 25)
  (doom-modeline-bar-width . 5)
  (doom-modeline-icon . t)
  (doom-modeline-buffer-file-name-style 'truncate-upto-project)
  (doom-modeline-persp-name . t)
  (doom-modeline-enable-word-count . nil)
  (doom-modeline-github . t)" . 5391) (nil fontified t 5398 . 5399) (nil fontified t 5399 . 5627) (nil rear-nonsticky t 5654 . 5655) nil (nil rear-nonsticky nil 5654 . 5655) (nil fontified nil 5627 . 5655) (nil fontified nil 5399 . 5627) (nil fontified nil 5398 . 5399) (nil fontified nil 5393 . 5398) (nil fontified nil 5391 . 5393) (5391 . 5655) nil (5388 . 5391) nil ("
" . -5450) 5451 nil ("  :init
  (doom-modeline-height . 25)
  (doom-modeline-bar-width . 5)
  (doom-modeline-icon . t)
  (doom-modeline-buffer-file-name-style 'truncate-upto-project)
  (doom-modeline-persp-name . t)
  (doom-modeline-enable-word-count . nil)
  (doom-modeline-github . t)" . 5451) 5715 nil (5451 . 5715) nil ("  :init
  (doom-modeline-height . 25)
  (doom-modeline-bar-width . 5)
  (doom-modeline-icon . t)
  (doom-modeline-buffer-file-name-style 'truncate-upto-project)
  (doom-modeline-persp-name . t)
  (doom-modeline-enable-word-count . nil)
  (doom-modeline-github . t)" . 5128) (nil fontified t 5135 . 5136) (nil fontified t 5136 . 5364) (nil rear-nonsticky t 5391 . 5392) nil ("
" . 5394) (5392 . 5394) ("  " . 5393) (t 26560 37570 531308 100000) nil (5393 . 5395) ("  " . 5392) (5394 . 5395) nil (nil rear-nonsticky nil 5391 . 5392) (nil fontified nil 5364 . 5392) (nil fontified nil 5136 . 5364) (nil fontified nil 5135 . 5136) (nil fontified nil 5130 . 5135) (nil fontified nil 5128 . 5130) (5128 . 5392) nil ("  :init
  (doom-modeline-height . 25)
  (doom-modeline-bar-width . 5)
  (doom-modeline-icon . t)
  (doom-modeline-buffer-file-name-style 'truncate-upto-project)
  (doom-modeline-persp-name . t)
  (doom-modeline-enable-word-count . nil)
  (doom-modeline-github . t)" . 5451) 5715 nil (5454 . 5458) nil ("custom" . -5454) 5460 nil (5450 . 5717) (t 26560 37496 725093 882000) nil ("
  :custom
  (doom-modeline-height . 25)
  (doom-modeline-bar-width . 5)
  (doom-modeline-icon . t)
  (doom-modeline-buffer-file-name-style 'truncate-upto-project)
  (doom-modeline-persp-name . t)
  (doom-modeline-enable-word-count . nil)
  (doom-modeline-github . t)" . 5450) 5717 (t 26560 37467 188880 3000) nil ("
  " . 5717) 5720 (t 26560 37463 923519 368000) nil (" nil nil \"Customized with use-package doom-modeline\"" . 5716) 5768 nil (5713 . 5715) nil (nil rear-nonsticky nil 5766 . 5767) (nil fontified nil 5766 . 5767) (nil fontified nil 5723 . 5766) (nil fontified nil 5691 . 5723) (5691 . 5767) nil (5688 . 5691) nil (" nil nil \"Customized with use-package doom-modeline\"" . 5687) 5739 nil (5681 . 5683) nil (nil rear-nonsticky nil 5737 . 5738) (nil fontified nil 5737 . 5738) (nil fontified nil 5694 . 5737) (nil fontified nil 5649 . 5694) (5649 . 5738) nil (5646 . 5649) (t 26560 37424 998255 989000) nil (" nil nil \"Customized with use-package doom-modeline\"" . 5645) 5697 nil (5642 . 5644) nil (nil rear-nonsticky nil 5695 . 5696) (nil fontified nil 5695 . 5696) (nil fontified nil 5652 . 5695) (nil fontified nil 5616 . 5652) (5616 . 5696) nil (5613 . 5616) (t 26560 37406 346281 987000) nil (" " . -5612) 5613 nil ("nil " . -5613) 5617 nil ("nil" . -5617) 5620 nil (5590 . 5591) nil (". " . 5590) nil (5618 . 5621) nil (5614 . 5618) nil (5613 . 5614) (t 26560 37396 302542 933000) nil (" " . -5613) 5614 nil ("nil " . -5614) 5618 nil ("nil" . -5618) 5621 nil (5590 . 5592) nil ("'" . -5590) 5591 nil (" \"Customized with use-package doom-modeline\"" . 5620) 5664 nil (nil rear-nonsticky nil 5664 . 5665) (nil fontified nil 5664 . 5665) (nil fontified nil 5621 . 5664) (nil fontified nil 5552 . 5621) (5552 . 5665) nil (5549 . 5552) (t 26560 37362 323666 86000) nil (" nil nil \"Customized with use-package doom-modeline\"" . 5548) 5600 nil (5545 . 5547) nil (nil rear-nonsticky nil 5598 . 5599) (nil fontified nil 5598 . 5599) (nil fontified nil 5555 . 5598) (nil fontified nil 5525 . 5555) (5525 . 5599) nil (5522 . 5525) nil (" nil nil \"Customized with use-package doom-modeline\"" . 5521) 5573 nil (5518 . 5520) nil (nil rear-nonsticky nil 5571 . 5572) (nil fontified nil 5571 . 5572) (nil fontified nil 5528 . 5571) (nil fontified nil 5493 . 5528) (5493 . 5572) nil (5490 . 5493) (t 26560 37308 742015 349000) nil ("
  " . 5490) nil ("(doom-modeline-bar-width 5" . 5493) (nil rear-nonsticky t 5518 . 5519) nil (")" . 5519) (5519 . 5520) (")" . 5519) (5519 . 5520) (5519 . 5522) (")" . 5520) (5520 . 5521) (")" . 5520) (5520 . 5521) nil (")" . 5520) (5520 . 5521) (")" . 5520) (5520 . 5521) ("
  " . 5519) (")" . 5519) (5519 . 5520) (")" . 5519) (5519 . 5520) nil (5491 . 5523) ("  " . 5491) (5491 . 5493) (5491 . 5492) nil ("
" . 5491) ("  " . -5491) (5491 . 5493) ("  (doom-modeline-bar-width 5
  )" . 5491) nil (")" . 5519) (5519 . 5520) (")" . 5519) (5519 . 5520) (5519 . 5522) (")" . 5520) (5520 . 5521) (")" . 5520) (5520 . 5521) nil (")" . -5520) (5520 . 5521) (")" . -5520) (5520 . 5521) ("
  " . -5519) (")" . -5519) (5519 . 5520) (")" . -5519) (5519 . 5520) nil (nil rear-nonsticky nil 5518 . 5519) (nil fontified nil 5493 . 5519) (5493 . 5519) nil (5490 . 5493) (t 26560 37308 742015 349000) nil (" nil nil" . 5489) 5497 nil (5484 . 5486) (t 26560 37144 453567 84000) nil (apply -54 3845 4893 undo--wrap-and-run-primitive-undo 3845 4893 ((4875 . 4878) (4847 . 4850) (4760 . 4763) (4662 . 4665) (4573 . 4576) (4451 . 4454) (4368 . 4371) (4280 . 4283) (4194 . 4197) (4146 . 4149) (4065 . 4068) (4028 . 4031) (3996 . 3999) (3941 . 3944) (3894 . 3897) (3883 . 3886) (3868 . 3871) (3845 . 3848) 4838)) nil ("
" . -5442) (" " . -5443) (" " . -5444) 5445 nil (5442 . 5445) nil (" \"Customized with use-package doom-modeline\"" . 5441) 5485 nil (nil rear-nonsticky nil 5485 . 5486) (nil fontified nil 5485 . 5486) (nil fontified nil 5442 . 5485) (nil fontified nil 5409 . 5442) (5409 . 5486) nil (5407 . 5409) (" " . 5406) (5407 . 5408) nil (5406 . 5407) nil (5399 . 5406) (":cus" . -5399) 5403 nil (5399 . 5403) nil (5397 . 5399) nil (5398 . 5400) ("  " . 5397) (5396 . 5400) nil (apply 30 5054 5398 undo--wrap-and-run-primitive-undo 5054 5398 ((";; " . -5358) (";; " . -5335) (";; " . -5323) (";; " . -5307) (";; " . -5285) (";; " . -5232) (";; " . -5191) (";; " . -5114) (";; " . -5074) (";; " . -5054) 5428)) nil ("
" . -4838) 4839 (t 26560 36951 879919 293000) nil (nil rear-nonsticky nil 5052 . 5053) (nil fontified nil 5050 . 5053) (nil fontified nil 5043 . 5050) (nil fontified nil 5041 . 5043) (nil fontified nil 5035 . 5041) (nil fontified nil 5027 . 5035) (nil fontified nil 5024 . 5027) (nil fontified nil 5012 . 5024) (nil fontified nil 5011 . 5012) (nil fontified nil 5005 . 5011) (nil fontified nil 5002 . 5005) (nil fontified nil 4952 . 5002) (nil fontified nil 4951 . 4952) (nil fontified nil 4947 . 4951) (nil fontified nil 4944 . 4947) (nil fontified nil 4931 . 4944) (nil fontified nil 4930 . 4931) (nil fontified nil 4924 . 4930) (nil fontified nil 4923 . 4924) (nil fontified nil 4919 . 4923) (nil fontified nil 4916 . 4919) (nil fontified nil 4904 . 4916) (nil fontified nil 4903 . 4904) (nil fontified nil 4899 . 4903) (nil fontified nil 4896 . 4899) (nil fontified nil 4864 . 4896) (nil fontified nil 4863 . 4864) (nil fontified nil 4859 . 4863) (nil fontified nil 4845 . 4859) (nil fontified nil 4841 . 4845) (nil fontified nil 4840 . 4841) (4840 . 5053) nil (4838 . 4840) nil (3845 . 4838) nil (3842 . 3845) nil (3842 . 3843) nil (apply -30 3843 4217 undo--wrap-and-run-primitive-undo 3843 4217 ((3843 . 3846) (3863 . 3866) (3903 . 3906) (3980 . 3983) (4021 . 4024) (4074 . 4077) (4096 . 4099) (4112 . 4115) (4124 . 4127) (4147 . 4150) 4187)) nil ("




" . 4187) nil ("(leaf doom-modeline
  :ensure t
  :global-minor-mode t
  :custom
  (doom-modeline-bar-width . 4)
  (doom-modeline-hud . t))" . 4190) (nil fontified t 4254 . 4287) (nil fontified t 4247 . 4254) (nil fontified t 4242 . 4247) (nil fontified t 4224 . 4242) (nil fontified t 4219 . 4224) (nil fontified t 4212 . 4219) (nil fontified t 4195 . 4212) (nil fontified t 4191 . 4195) (nil fontified t 4190 . 4191) (nil rear-nonsticky nil 4312 . 4313) nil ("
  " . 4185) nil ("
" . 4188) (4186 . 4188) ("  " . 4187) nil ("  :custom
  (doom-modeline-bar-width . 4)
  (doom-modeline-hud . t)" . 4186) (nil fontified t 4196 . 4228) (nil fontified t 4195 . 4196) (nil rear-nonsticky nil 4252 . 4253) nil (4253 . 4256) nil (4256 . 4382) nil (4254 . 4256) nil ("
  " . 4195) nil ("(" . 4198) (4198 . 4199) ("()" . 4198) nil ("doom-modeline-height" . 4199) (nil rear-nonsticky nil 4218 . 4219) nil (" . 25" . 4219) nil (4222 . 4224) nil ("45" . 4222) nil ("1" . 4222) nil (4196 . 4226) ("  " . 4196) (4196 . 4198) (4196 . 4197) (t 26560 36884 947137 507000) nil ("


" . 4255) nil ("
" . 4257) nil ("(leaf nerd-icons
  :doc \"Emacs Nerd Font Icons Library.\"
  :req \"emacs-24.3\"
  :tag \"lisp\" \"emacs>=24.3\"
  :url \"https://github.com/rainstormstudio/nerd-icons.el\"
  :added \"2025-02-28\"
  :emacs>= 24.3
  :ensure t)
" . 4257) (4470 . 4471) nil (4470 . 4471) nil (4255 . 4256) nil ("
" . -4255) 4256 nil ("
" . -4470) 4471 nil ("
" . -4470) (4257 . 4471) nil (4257 . 4258) nil (4255 . 4258) (t 26560 36884 947137 507000) nil ("
" . 4196) ("  " . -4196) (4196 . 4198) ("  (doom-modeline-height . 145)" . 4196) (t 26560 36870 874388 716000) nil (4222 . 4223) (t 26560 36851 226706 433000) nil (4222 . 4224) nil ("2" . -4222) ("5" . -4223) 4224 (t 26560 36834 151993 879000) nil (4219 . 4224) nil (nil rear-nonsticky nil 4218 . 4219) (nil fontified nil 4199 . 4219) (4199 . 4219) nil (4198 . 4200) ("(" . -4198) (4198 . 4199) nil (4195 . 4198) (t 26560 36736 454961 462000) nil ("
" . -4254) ("
" . -4255) 4256 nil ("

(leaf doom-modeline
  :ensure t
  :global-minor-mode t
  :custom
  (doom-modeline-bar-width . 4)
  (doom-modeline-hud . t))
" . 4256) 4382 (t 26560 36731 248694 724000) nil ("
  " . 4253) 4256 nil (nil rear-nonsticky nil 4252 . 4253) (nil fontified nil 4195 . 4253) (nil fontified nil 4188 . 4195) (nil fontified nil 4186 . 4188) (4186 . 4253) nil (4187 . 4189) ("  " . 4186) (4188 . 4189) nil (4185 . 4188) nil (nil rear-nonsticky nil 4312 . 4313) (nil fontified nil 4190 . 4313) (4190 . 4313) nil (4187 . 4192) nil (apply 30 3843 4187 undo--wrap-and-run-primitive-undo 3843 4187 ((";; " . 4147) (";; " . 4124) (";; " . 4112) (";; " . 4096) (";; " . 4074) (";; " . 4021) (";; " . 3980) (";; " . 3903) (";; " . 3863) (";; " . 3843) 3842)) nil ("
" . 3842) nil ("


" . 3842) nil ("(leaf doom-modeline
  :ensure t
  :init
  (let ((custom--inhibit-theme-enable nil))
    (unless (memq 'use-package custom-known-themes)
      (deftheme use-package)
      (enable-theme 'use-package)
      (setq custom-enabled-themes (remq 'use-package custom-enabled-themes)))
    (custom-theme-set-variables 'use-package
				'(doom-modeline-height 25 nil nil \"Customized with use-package doom-modeline\")
				'(doom-modeline-bar-width 5 nil nil \"Customized with use-package doom-modeline\")
				'(doom-modeline-icon t nil nil \"Customized with use-package doom-modeline\")
				'(doom-modeline-buffer-file-name-style 'truncate-upto-project nil nil \"Customized with use-package doom-modeline\")
				'(doom-modeline-persp-name t nil nil \"Customized with use-package doom-modeline\")
				'(doom-modeline-enable-word-count nil nil nil \"Customized with use-package doom-modeline\")
				'(doom-modeline-github t nil nil \"Customized with use-package doom-modeline\")))
  (doom-modeline-mode 1)
  :require t)
" . 3845) nil (3845 . 4838) nil (3842 . 3845) nil (3842 . 3843) nil (apply -30 3843 4217 undo--wrap-and-run-primitive-undo 3843 4217 ((3843 . 3846) (3863 . 3866) (3903 . 3906) (3980 . 3983) (4021 . 4024) (4074 . 4077) (4096 . 4099) (4112 . 4115) (4124 . 4127) (4147 . 4150) 4187)) nil (apply 30 3843 4187 undo--wrap-and-run-primitive-undo 3843 4187 ((";; " . 4147) (";; " . 4124) (";; " . 4112) (";; " . 4096) (";; " . 4074) (";; " . 4021) (";; " . 3980) (";; " . 3903) (";; " . 3863) (";; " . 3843) 3842)) nil ("
" . 3842) nil ("


" . 3842) nil ("(leaf doom-modeline
  :ensure t
  :init
  (let ((custom--inhibit-theme-enable nil))
    (unless (memq 'use-package custom-known-themes)
      (deftheme use-package)
      (enable-theme 'use-package)
      (setq custom-enabled-themes (remq 'use-package custom-enabled-themes)))
    (custom-theme-set-variables 'use-package
				'(doom-modeline-height 25 nil nil \"Customized with use-package doom-modeline\")
				'(doom-modeline-bar-width 5 nil nil \"Customized with use-package doom-modeline\")
				'(doom-modeline-icon t nil nil \"Customized with use-package doom-modeline\")
				'(doom-modeline-buffer-file-name-style 'truncate-upto-project nil nil \"Customized with use-package doom-modeline\")
				'(doom-modeline-persp-name t nil nil \"Customized with use-package doom-modeline\")
				'(doom-modeline-enable-word-count nil nil nil \"Customized with use-package doom-modeline\")
				'(doom-modeline-github t nil nil \"Customized with use-package doom-modeline\")))
  (doom-modeline-mode 1)
  :require t)
" . 3845) (t 26560 36585 507843 842000) nil (3845 . 4838) nil (3842 . 3845) nil (3842 . 3843) nil (apply -30 3843 4217 undo--wrap-and-run-primitive-undo 3843 4217 ((3843 . 3846) (3863 . 3866) (3903 . 3906) (3980 . 3983) (4021 . 4024) (4074 . 4077) (4096 . 4099) (4112 . 4115) (4124 . 4127) (4147 . 4150) 4187)) nil ("


" . 4187) nil ("
" . 4188) nil ("(leaf nerd-fonts
  :tag \"out-of-MELPA\"
  :added \"2025-02-28\"
  :el-get {{user}}/nerd-fonts
  :require t)
" . 4189) (4293 . 4294) nil ("
" . 4293) (4189 . 4294) nil ("(leaf nerd-icon
  :tag \"out-of-MELPA\"
  :added \"2025-02-28\"
  :el-get {{user}}/nerd-icon
  :require t)
" . 4189) (4291 . 4292) nil ("
" . 4291) (4189 . 4292) nil ("(leaf nerd
  :tag \"out-of-MELPA\"
  :added \"2025-02-28\"
  :el-get {{user}}/nerd
  :require t)
" . 4189) (4281 . 4282) nil ("
" . 4281) (4189 . 4282) nil ("(leaf nerd
  :tag \"out-of-MELPA\"
  :added \"2025-02-28\"
  :el-get {{user}}/nerd
  :require t)
" . 4189) (4281 . 4282) nil ("
" . -4281) (4189 . 4282) nil ("(leaf nerd-icon
  :tag \"out-of-MELPA\"
  :added \"2025-02-28\"
  :el-get {{user}}/nerd-icon
  :require t)
" . 4189) (4291 . 4292) nil ("
" . -4291) (4189 . 4292) nil ("(leaf nerd-fonts
  :tag \"out-of-MELPA\"
  :added \"2025-02-28\"
  :el-get {{user}}/nerd-fonts
  :require t)
" . 4189) (4293 . 4294) nil ("
" . -4293) (4189 . 4294) nil (4188 . 4189) nil (4187 . 4190) (t 26560 36284 930096 957000) nil (apply 30 3843 4187 undo--wrap-and-run-primitive-undo 3843 4187 ((";; " . -4147) (";; " . -4124) (";; " . -4112) (";; " . -4096) (";; " . -4074) (";; " . -4021) (";; " . -3980) (";; " . -3903) (";; " . -3863) (";; " . -3843) 4217)) nil ("
" . -3842) 3843 nil ("
" . -3842) ("
" . -3843) ("
" . -3844) 3845 nil ("(leaf doom-modeline
  :ensure t
  :init
  (let ((custom--inhibit-theme-enable nil))
    (unless (memq 'use-package custom-known-themes)
      (deftheme use-package)
      (enable-theme 'use-package)
      (setq custom-enabled-themes (remq 'use-package custom-enabled-themes)))
    (custom-theme-set-variables 'use-package
				'(doom-modeline-height 25 nil nil \"Customized with use-package doom-modeline\")
				'(doom-modeline-bar-width 5 nil nil \"Customized with use-package doom-modeline\")
				'(doom-modeline-icon t nil nil \"Customized with use-package doom-modeline\")
				'(doom-modeline-buffer-file-name-style 'truncate-upto-project nil nil \"Customized with use-package doom-modeline\")
				'(doom-modeline-persp-name t nil nil \"Customized with use-package doom-modeline\")
				'(doom-modeline-enable-word-count nil nil nil \"Customized with use-package doom-modeline\")
				'(doom-modeline-github t nil nil \"Customized with use-package doom-modeline\")))
  (doom-modeline-mode 1)
  :require t)
" . 3845) 4838 (t 26560 36192 246354 759000)))
