.PHONY: homebrew-install
homebrew-install:
	@./homebrew_install.sh

.PHONY: setup-dotfiles
setup-dotfiles:
	@./setup_dotfiles.sh

.PHONY: setup-lazyvim
setup-lazyvim:
	@./lazyvim_setup.sh

.PHONY: setup-vscode
setup-vscode:
	@./vscode/sync.sh

.PHONY: vscode-dump
vscode-dump:
	@./vscode/dump.sh

.PHONY: brew-bundle
brew-bundle:
	brew bundle --file=.Brewfile

.PHONY: brew-bundle-dump
brew-bundle-dump:
	brew bundle dump --force --file=.Brewfile

.PHONY: shell-dump
shell-dump:
	@./shell/dump.sh

