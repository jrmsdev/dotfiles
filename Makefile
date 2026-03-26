.PHONY: default
default:

.PHONY: install
install: check
	@./install.sh
	@./prune.sh

.PHONY: prune
prune:
	@./prune.sh

.PHONY: check
check:
	@find . -type f -name '*.sh' | xargs shellcheck
	@shellcheck -s bash .bash_profile .bashrc .bashrc.aliases
