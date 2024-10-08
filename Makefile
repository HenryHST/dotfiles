.PHONY: brew git k9s nvim ssh vscode zsh
default: .PHONY

bootstrap:
	# ln will fail if repo was already checked out in ~/dotfiles
	@ln -sfv $(shell pwd -P) ${HOME} || true
ifeq (,$(wildcard ${HOME}/dotfiles/.profile))
	@echo "Usage (private/work)?"
	@read line; echo $$line > ${HOME}/dotfiles/.profile
endif

brew: bootstrap
	@chmod +x brew/install.sh
	@./brew/install.sh

git: bootstrap
	@chmod +x git/install.sh
	@./git/install.sh

k9s: bootstrap zsh
	@chmod +x k9s/install.sh
	@./k9s/install.sh

nvim: bootstrap brew
	@chmod +x nvim/install.sh
	@./nvim/install.sh

ssh: bootstrap
	@chmod +x ssh/install.sh
	@./ssh/install.sh

vscode: bootstrap brew
	@chmod +x vscode/install.sh
	@./vscode/install.sh

zsh: bootstrap brew
	@chmod +x zsh/install.sh
	@./zsh/install.sh
