(setq dynamik-font-lock-keywords
      (let* (
            ;; define several category of keywords
            (x-keywords '("extern" "fn" "return" "else" "if" "while" "mod"))
            (x-types '("float" "int" "string"))
	   
            ;; generate regex string for each category of keywords
            (x-keywords-regexp (regexp-opt x-keywords 'words))
            (x-types-regexp (regexp-opt x-types 'words))
        `(
          (,x-types-regexp . 'font-lock-type-face)
          (,x-keywords-regexp . 'font-lock-keyword-face)
          ;; note: order above matters, because once colored, that part won't change.
          ;; in general, put longer words first
          )))

(setq font-lock-defaults '((dynamik-font-lock-keywords))))

;; add the mode to the `features' list
(provide 'dynamik-mode)
