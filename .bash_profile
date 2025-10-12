# jrmsdev/dotfiles .bash_profile

PS1='\u:\W\$ '

# shellcheck disable=SC1090
if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi
