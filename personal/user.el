;; Customizations

;; Global line numbers
(global-linum-mode)

;; Global company mode
(add-hook 'after-init-hook 'global-company-mode)

;; no tool bar across top of window
(tool-bar-mode -1)

;; highlight trailing whitespaces
(require 'whitespace)
(setq whitespace-style '(face empty tabs lines-tail trailing))
(global-whitespace-mode t)

; Speclj
(require 'clojure-mode)
(put-clojure-indent 'describe 1)
(put-clojure-indent 'describe-server 1)
(put-clojure-indent 'describe-with-mock-etl-state 1)
(put-clojure-indent 'describe-with-db 1)
(put-clojure-indent 'describe-with-es 1)
(put-clojure-indent 'it 1)
(put-clojure-indent 'before-all 0)
(put-clojure-indent 'after-all 0)
(put-clojure-indent 'before 0)
(put-clojure-indent 'around 1)
(put-clojure-indent 'after 0)
(put-clojure-indent 'context 2)
(put-clojure-indent 'context* 2)
(put-clojure-indent 'GET* 2)
(put-clojure-indent 'POST* 2)
(put-clojure-indent 'PUT* 2)
(put-clojure-indent 'DELETE* 2)
(put-clojure-indent 'GET 2)
(put-clojure-indent 'POST 2)
(put-clojure-indent 'PUT 2)
(put-clojure-indent 'DELETE 2)
(put-clojure-indent 'with 1)
(put-clojure-indent 'do-until-input 1)

(require 'clj-refactor)

(global-aggressive-indent-mode)

(defun my-clojure-mode-hook ()
  (clj-refactor-mode 1)
  (yas-minor-mode 1) ; for adding require/use/import statements
  ;; This choice of keybinding leaves cider-macroexpand-1 unbound
  (cljr-add-keybindings-with-prefix "C-c C-m"))

(add-hook 'clojure-mode-hook #'my-clojure-mode-hook)

(define-key clojure-mode-map (kbd "C-o y")
  (lambda ()
    (interactive)
    (insert "\n;;=>\n")
    (cider-eval-last-sexp 't)))

;; (add-hook 'clojure-mode-hook #'rainbow-delimiters-mode)

; ac-cider
;; (require 'ac-cider)
;; (add-hook 'cider-mode-hook 'ac-flyspell-workaround)
;; (add-hook 'cider-mode-hook 'ac-cider-setup)
;; (add-hook 'cider-repl-mode-hook 'ac-cider-setup)
;; (eval-after-load "auto-complete"
  ;; '(progn
     ;; (add-to-list 'ac-modes 'cider-mode)
     ;; (add-to-list 'ac-modes 'cider-repl-mode)))

;; (defun set-auto-complete-as-completion-at-point-function ()
  ;; (setq completion-at-point-functions '(auto-complete)))

;; (add-hook 'auto-complete-mode-hook 'set-auto-complete-as-completion-at-point-function)
;; (add-hook 'cider-mode-hook 'set-auto-complete-as-completion-at-point-function)
