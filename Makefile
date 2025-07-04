.PHONY: setup-dotfiles
setup-dotfiles:
	@./install.sh

.PHONY: setup-vscode
setup-vscode:
	@.vscode/sync.sh

.PHONY: vscode-dump
vscode-dump:
	@./vscode/dump.sh

.PHONY: brew-bundle
brew-bundle:
	brew bundle --file=./brewfiles/Brewfile

.PHONY: brew-bundle-mas
brew-bundle-mas:
	brew bundle --file=./brewfiles/Brewfile.mas

.PHONY: brew-bundle-cask
brew-bundle-cask:
	brew bundle --file=./brewfiles/Brewfile.cask

.PHONY: brew-bundle-taps
brew-bundle-taps:
	brew bundle --file=./brewfiles/Brewfile.taps

.PHONY: brew-bundle-vscode
brew-bundle-vscode:
	brew bundle --force --file=./brewfiles/Brewfile.vscode

.PHONY: brew-bundle-vscode-dump
brew-bundle-vscode-dump:
	brew bundle dump --force --vscode --file=brewfiles/Brewfile.vscode

.PHONY: brew-bundle-dump
brew-bundle-dump:
	brew bundle dump --force --brews --file=brewfiles/Brewfile
	brew bundle dump --force --vscode --file=brewfiles/Brewfile.vscode
	brew bundle dump --force --cask --file=brewfiles/Brewfile.cask
	brew bundle dump --force --taps --file=brewfiles/Brewfile.taps
	brew bundle dump --force --mas --file=brewfiles/Brewfile.mas

