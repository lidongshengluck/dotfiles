#!/usr/bin/env bash

curr_path=`pwd`
dotfiles=$HOME/.dotfiles

# 显示一条消息
msg() {
    printf '%b\n' "$1" >&2
}

# 成功消息提醒
success() {
    echo "\33[32m[✔]\33[0m ${1}${2}"
}

# 初始化目录
initialization() {
    rm -rf $HOME/.vim
    rm -rf $HOME/.vimrc
    rm -rf $HOME/.oh-my-zsh
    rm -rf $HOME/.zsh
    rm -rf $HOME/.zshrc
    rm -rf $HOME/.zsh_defined.sh
    rm -rf $HOME/.tmux.conf

    return 1
}

# 复制文件
copy_files() {
    cp $curr_path/vim              $dotfiles/vim_conf/ -Ru
    cp $curr_path/vimrc            $dotfiles/vim_conf/vimrc -u
    cp $curr_path/tmux.conf        $dotfiles/tmux_conf/tmux.conf -u
    cp $curr_path/zshrc            $dotfiles/zsh_conf/zshrc -u
    cp $curr_path/zsh_defined.sh   $dotfiles/zsh_conf/zsh_defined.sh -u
    cp $curr_path/zsh_alias.sh     $dotfiles/zsh_conf/zsh_alias.sh -u
}

# 创建链接文件
create_symlinks() {
    local source_path="$1"
    local target_path="$2"

    ln -s "$source_path/vim_conf/vim"             "$target_path/.vim"
    ln -s "$source_path/vim_conf/vimrc"           "$target_path/.vimrc"
    ln -s "$source_path/zsh_conf/zsh"             "$target_path/.zsh"
    ln -s "$source_path/zsh_conf/oh-my-zsh"       "$target_path/.oh-my-zsh"
    ln -s "$source_path/zsh_conf/zshrc"           "$target_path/.zshrc"
    ln -s "$source_path/tmux_conf/tmux.conf"      "$target_path/.tmux.conf"

    success "创建链接成功"
}

# 创建链接文件
initialization

# 复制常用配置文件
copy_files

# 创建链接
create_symlinks "$dotfiles" \
                "$HOME"

