#!/bin/sh
INSTALL_DIR=~

install_vimrc () {
    cd "$INSTALL_DIR"
    git clone git://github.com/ryanteo96/dotfiles.git
    cd dotfiles

    # Download vim plugin bundles
    git submodule init
    git submodule update

    # Symlink ~/.vim and ~/.vimrc
    cd ~
    ln -s "$INSTALL_DIR/dotfiles/vimrc" .vimrc
    ln -s "$INSTALL_DIR/dotfiles/vim" .vim
    touch ~/.vim/user.vim

    echo "Installed and configured .vim, have fun."
}

install_vimr
