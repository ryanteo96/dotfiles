#!/bin/sh
INSTALL_DIR=~

install_vimrc () {
    # Download vim plugin bundles
    git submodule init
    git submodule update

    # Symlink ~/.vim and ~/.vimrc
    cd ~
    ln -sfn "$INSTALL_DIR/dotfiles/vimrc" .vimrc
    ln -sfn "$INSTALL_DIR/dotfiles/vim" .vim
    touch ~/.vim/user.vim

    echo "Installed and configured .vim, have fun."
}

install_vimrc
