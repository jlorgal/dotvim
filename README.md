# vim configuration

Basic configuration for vim using **vim-plug** as plugin manager.

### Installation

```sh
# Clone the repo and link the vimrc to the one of the repo
git clone git://github.com/jlorgal/dotvim.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc

# Install the plugins
vim -E -s <<-EOF
  :source ~/.vimrc
  :PlugInstall
  :PlugClean
  :qa
EOF
```

