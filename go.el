(require 'go-mode)
; Go Oracle
(load-file "~/go/src/code.google.com/p/go.tools/cmd/oracle/oracle.el")
; Goflymake
(add-to-list 'load-path "~/go/src/github.com/dougm/goflymake")

(defun my-go-mode-hook ()
	; Use goimports instead of go-fmt
	(setq gofmt-command "goimports")
	; Call gofmt before saving
	(add-hook 'before-save-hook 'gofmt-before-save)
	; Customize compile command to run go build
	(if (not (string-match "go" compile-command))
		(set (make-local-variable 'compile-command)
			"go build -v && go test -v"))
			; go vet not working
			; "go build -v && go test -v && go vet"))
	; Godef jump key binding
	(local-set-key (kbd "M-.") 'godef-jump))
	(go-oracle-mode)

(add-hook 'go-mode-hook 'my-go-mode-hook)
; kbd to godoc
(add-hook 'go-mode-hook '(lambda ()
	(local-set-key (kbd "C-c C-k") 'godoc)))
; godoc autocomplete
(add-hook 'go-mode-hook 'company-mode)
(add-hook 'go-mode-hook (lambda ()
	(set (make-local-variable 'company-backends) '(company-go))
	(company-mode)))
(require 'go-flymake)
