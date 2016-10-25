#!/usr/bin/env bash

curr_path=`pwd`
[ -z "$VUNDLE_URI" ] && VUNDLE_URI="https://github.com/VundleVim/Vundle.vim.git"
[ -z "$REPO_URI" ] && REPO_URI='https://github.com/lidongshengluck/vim.git'

# 显示一条消息
msg() {
    printf '%b\n' "$1" >&2
}

# 成功消息提醒
success() {
    msg "\33[32m[✔]\33[0m ${1}${2}"
}

# 检查运行环境
source "${curr_path}/envron_check.sh"

# 初始化目录
initialization() {
    rm -rf $HOME/.vim
    rm -rf $HOME/.vimrc
    rm -rf $HOME/.vimrc.bundles
    rm -rf $HOME/.oh-my-zsh
    rm -rf $HOME/.zsh
    rm -rf $HOME/.zshrc
    rm -rf $HOME/.tmux.conf

    return 1
}

# 创建链接文件
create_symlinks() {
    local source_path="$1"
    local target_path="$2"

    ln -s "$source_path/vim"             "$target_path/.vim"
    ln -s "$source_path/vimrc"           "$target_path/.vimrc"
    ln -s "$source_path/vimrc.bundles"   "$target_path/.vimrc.bundles"
    ln -s "$source_path/zsh"             "$target_path/.zsh"
    ln -s "$source_path/oh-my-zsh"       "$target_path/.oh-my-zsh"
    ln -s "$source_path/zshrc"           "$target_path/.zshrc"
    ln -s "$source_path/user_default.sh" "$target_path/.user_default.sh"
    ln -s "$source_path/tmux.conf"       "$target_path/.tmux.conf"

    success "创建链接成功"
}

# 安装vundle包管理软件
install_vundle() {
    local vundle_uri="$1"
    local vundle_path=$HOME/.vim/bundle/Vundle.vim

    if [ ! -e "$vundle_path" ]; then
        msg "安装vundle插件"
        git clone $vundle_uri $vundle_path
        success "vundle 插件克隆完成." 
    fi
} 

# 安装各种插件
install_vundle_plugins() {
    local system_shell="$SHELL"
    export SHELL='/bin/sh'

    vim \
        "+set nomore" \
        "+BundleInstall!" \
        "+BundleClean" \
        "+qall"

    export SHELL="$system_shell"

    success "安装插件"
}


# 创建链接文件
initialization
res=$?
if [ $res -eq 1 ]; then
    success '初始化成功';
else
    msg '初始化失败';
    exit
fi

create_symlinks "$curr_path" \
                "$HOME"

install_vundle  "$VUNDLE_URI" \
                "$HOME"

install_vundle_plugins  "$HOME/.vimrc.bundles"

