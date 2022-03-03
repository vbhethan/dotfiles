(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
;; (package-refresh-contents)
(package-initialize)

(setq frame-background-mode `dark)

(unless (package-installed-p `use-package)
  (package-install `use-package))
(setq use-package-always-ensure t)

(use-package all-the-icons)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(global-display-line-numbers-mode 1)
(global-visual-line-mode t)

(use-package doom-modeline)
(doom-modeline-mode 1)


(use-package doom-themes
  :ensure t
  :config
  ;; Global settings (defaults)
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t) ; if nil, italics is universally disabled
  (load-theme 'doom-gruvbox t)

  ;; Enable flashing mode-line on errors
  (doom-themes-visual-bell-config)
  ;; Enable custom neotree theme (all-the-icons must be installed!)
  (doom-themes-neotree-config)
  ;; or for treemacs users
  (setq doom-themes-treemacs-theme "doom-atom") ; use "doom-colors" for less minimal icon theme
  (doom-themes-treemacs-config)
  ;; Corrects (and improves) org-mode's native fontification.
  (doom-themes-org-config))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#282828" "#fb4934" "#b8bb26" "#fabd2f" "#83a598" "#cc241d" "#8ec07c" "#ebdbb2"])
 '(custom-enabled-themes (quote (doom-gruvbox)))
 '(custom-safe-themes
   (quote
    ("c4063322b5011829f7fdd7509979b5823e8eea2abf1fe5572ec4b7af1dd78519" "835868dcd17131ba8b9619d14c67c127aa18b90a82438c8613586331129dda63" default)))
 '(exwm-floating-border-color "#504945")
 '(fci-rule-color "#7c6f64")
 '(highlight-tail-colors ((("#363627" "#363627") . 0) (("#323730" "#323730") . 20)))
 '(jdee-db-active-breakpoint-face-colors (cons "#0d1011" "#fabd2f"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#0d1011" "#b8bb26"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#0d1011" "#928374"))
 '(objed-cursor-color "#fb4934")
 '(org-agenda-files (quote ("~/Documents/org/personal.org")))
 '(package-selected-packages (quote (doom-themes rust-mode)))
 '(pdf-view-midnight-colors (cons "#ebdbb2" "#282828"))
 '(rustic-ansi-faces
   ["#282828" "#fb4934" "#b8bb26" "#fabd2f" "#83a598" "#cc241d" "#8ec07c" "#ebdbb2"])
 '(vc-annotate-background "#282828")
 '(vc-annotate-color-map
   (list
    (cons 20 "#b8bb26")
    (cons 40 "#cebb29")
    (cons 60 "#e3bc2c")
    (cons 80 "#fabd2f")
    (cons 100 "#fba827")
    (cons 120 "#fc9420")
    (cons 140 "#fe8019")
    (cons 160 "#ed611a")
    (cons 180 "#dc421b")
    (cons 200 "#cc241d")
    (cons 220 "#db3024")
    (cons 240 "#eb3c2c")
    (cons 260 "#fb4934")
    (cons 280 "#e05744")
    (cons 300 "#c66554")
    (cons 320 "#ac7464")
    (cons 340 "#7c6f64")
    (cons 360 "#7c6f64")))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;; -*- mode: elisp -*-

;; Disable the splash screen (to enable it agin, replace the t with 0)
(setq inhibit-splash-screen t)

;; Enable transient mark mode
(transient-mark-mode 1)

;;;;Org mode configuration
;; Enable Org mode
(require 'org)
;; Make Org mode work with files ending in .org
;; (add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
;; The above is the default in recent emacsen

(global-set-key "\C-ca" 'org-agenda)

