.PHONY: default
default:

.PHONY: install
install: check
	@./install.sh

.PHONY: check
check:
	@find . -type f -name '*.sh' | xargs shellcheck
	@shellcheck -s bash .bash_profile .bashrc .bashrc.aliases
