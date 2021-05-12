;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Rajat Shukla"
      user-mail-address "shk.rajat@gmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))
;;; Add to ~/.doom.d/config.el
;;(setq doom-font (font-spec :family "JetBrains Mono NL" :size 14 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "JetBrains Mono NL") ; inherits `doom-font''s :size
;;      doom-unicode-font (font-spec :family "JetBrains Mono NL" :size 14)
;;      doom-big-font (font-spec :family "JetBrains Mono NL" :size 19))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-vibrant)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/Dropbox/Org/")

;; (setq org-default-notes-file (concat org-directory "inbox.org"))

;; (setq org-journal-dir (concat org-directory "journal"))
(setq org-journal-file-format "%Y-%m-%d")
;; (setq org-journal-date-format "%e %b %Y (%A)")
;; (setq org-journal-date-format "%A, %d %B %Y")
;; (setq org-journal-time-format "")

(setq org-journal-enable-agenda-integration t)

;; Custom org todo keywords
;;(setq org-todo-keywords
;;      '((sequence
;;         "TODO(t)"
;;         "NEXT(n)"
;;         "DEFER(e)"
;;         "IDEA(i)"
;;         "WAIT(w@/!)"
;;         "|"
;;         "DONE(d!)"
;;         "CANCEL(c@/!)")))

;; Set colors for keywords
;;(setq org-todo-keyword-faces
;;      (quote (("TODO" :foreground "indian red" :weight bold)
;;              ("DEFER" :foreground "dark khaki" :weight bold)
;;              ("IDEA" :foreground "cornflower blue" :weight bold)
;;              ("NEXT" :foreground "dark salmon" :weight bold)
;;              ("DONE" :foreground "forest green" :weight bold)
;;              ("WAIT" :foreground "plum" :weight bold)
;;              ("CANCEL" :foreground "forest green" :weight bold))))
;;
;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

(setq +mu4e-mu4e-mail-path "~/Documents/Maildir")

;; Each path is relative to `+mu4e-mu4e-mail-path', which is ~/.mail by default
(set-email-account! "shkrajat"
  '((mu4e-sent-folder       . "/gmail/Sent Mail")
    (mu4e-drafts-folder     . "/gmail/Drafts")
    (mu4e-trash-folder      . "/gmail/Trash")
    (mu4e-refile-folder     . "/gmail/All Mail")
    (smtpmail-smtp-user     . "shk.rajat@gmail.com")
    (user-mail-address      . "shk.rajat@gmail.com")    ;; only needed for mu < 1.4
    (mu4e-compose-signature . "---\nRajat Shukla"))
  t)

(when (eq system-type 'darwin)
  (progn
    ;; http://stackoverflow.com/questions/20405433/how-to-force-emacs-not-use-mountain-lions-full-screen-style
    (setq ns-auto-hide-menu-bar nil)
    ;; Dont use the native full screen method
    (setq ns-use-native-fullscreen nil)

    ;; Anti alias the text in Mac OS
    (setq ns-antialias-text t)

    ;; set keys for Apple keyboard, for emacs in OS X
    ;; (setq mac-option-key-is-meta nil)
    ;; (setq mac-command-key-is-meta t)

    ;; (setq mac-command-modifier 'meta)      ; make cmd key do Meta
    ;; (setq mac-option-modifier 'super)      ; make opt key do Super
    ;; (setq mac-control-modifier 'control)   ; make Control key do Control
    ;; (setq ns-function-modifier 'hyper)  ; make Fn key do Hyper

    ;; Allow mac anti aliasing
    ;; (setq mac-allow-anti-aliasing t)
    ;; (setq default-input-method "MacOSX")
    ;; Make mouse wheel / trackpad scrolling less jerky
    ;; (setq mouse-wheel-scroll-amount '(1
    ;;                                   ((shift) . 5)
    ;;                                   ((control))))
    ;; (setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time
    ;; (setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
    ;; (setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse

    ;; what describe-key reports for cmd-option-h
    ))

;; choose your own fonts, in a system dependant way
;; (if (string-match "apple-darwin" system-configuration)
;;    (progn
;;      (set-face-font 'default "Source Code Pro-12")
;;      (set-frame-font "Source Code Pro-12" nil t)
;;      (add-to-list 'default-frame-alist '(font . "Source Code Pro-12")))
;;  (progn
;;    (set-face-font 'default "Source Code Pro-11")
;;    (set-frame-font "Source Code Pro-11" nil t)
;;    (add-to-list 'default-frame-alist '(font . "Source Code Pro-11"))))
