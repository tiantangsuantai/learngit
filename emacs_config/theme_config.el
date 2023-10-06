;;; theme_config.el --- Load the theme for emacs
;;; commentary:
;; nice


;;; Code:

(use-package doom-themes
  :ensure t
  :config
  ;; Global settings (defaults)
  (setq doom-themes-enable-bold nil    ; if nil, bold is universally disabled
	doom-themes-enable-italic t) ; if nil, italics is universally disabled
  (load-theme 'doom-monokai-octagon t)
  (doom-themes-treemacs-config))


(provide 'theme_config)

;;; theme_config.el ends here
