#!/usr/bin/env bash

curr_path=`pwd`
dotfiles=$HOME/.dotfiles

# vim 包管理插件
[ -z "$VUNDLE_URI" ] && VUNDLE_URI="https://github.com/VundleVim/Vundle.vim.git"

# oh_my_zsh zsh的增强配置
[ -z "$OH_MY_ZSH" ] && OH_MY_ZSH='https://github.com/robbyrussell/oh-my-zsh.git'

# zsh 的自动跳转插件
[ -z "$AUTO_JUMP" ] && AUTO_JUMP='https://github.com/joelthelion/autojump.git'

# zsh 自动补全
[ -z "$ZSH_AUTO" ] && ZSH_AUTO='https://github.com/zsh-users/zsh-autosuggestions.git'

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
    rm -rf $HOME/.oh-my-zsh
    rm -rf $HOME/.zsh
    rm -rf $HOME/.zshrc
    rm -rf $HOME/.zsh_defined.sh
    rm -rf $HOME/.tmux.conf
    rm -rf $dotfiles
    
    #success "创建目录"
    mkdir -p "$dotfiles/vim_conf"
    mkdir -p "$dotfiles/tmux_conf"
    mkdir -p "$dotfiles/zsh_conf"

    return 1
}

# 复制文件
copy_files() {
    cp $curr_path/vim              $dotfiles/vim_conf/vim -rf
    cp $curr_path/vimrc            $dotfiles/vim_conf/vimrc -rf
    cp $curr_path/tmux.conf        $dotfiles/tmux_conf/tmux.conf -rf
    cp $curr_path/tmuxcolors-dark.conf $dotfiles/tmux_conf/tmuxcolors-dark.conf -rf
    cp $curr_path/zshrc            $dotfiles/zsh_conf/zshrc -rf
    cp $curr_path/start.sh         $dotfiles/zsh_conf/start.sh -rf
    cp $curr_path/zsh_defined.sh   $dotfiles/zsh_conf/zsh_defined.sh -rf
    cp $curr_path/zsh_alias.sh     $dotfiles/zsh_conf/zsh_alias.sh -rf
}

# 安装 zsh 配置
install_zsh() {
    # oh_my_zsh
    git clone $OH_MY_ZSH "${dotfiles}/zsh_conf/oh-my-zsh"

    # autojump.zsh
    git clone $AUTO_JUMP "${dotfiles}/zsh_conf/autojump"

    # zsh-autosuggestions zsh的shell自动补全插件安装
    git clone $ZSH_AUTO "${dotfiles}/zsh_conf/zsh/zsh-autosuggestions"
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
    ln -s "$source_path/zsh_conf/start.sh"        "$target_path/start.sh"
    ln -s "$source_path/tmux_conf/tmux.conf"      "$target_path/.tmux.conf"
    ln -s "$source_path/tmux_conf/tmuxcolors-dark.conf" "$target_path/.tmuxcolors-dark.conf"

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

# 复制常用配置文件
copy_files

# 安装 zsh 插件
install_zsh

# 安装 autojump 插件
./install_autojump.sh

# 创建链接
create_symlinks "$dotfiles" \
                "$HOME"

# 安装vim插件管理包
install_vundle  "$VUNDLE_URI" \
                "$HOME"

# 安装vim插件
install_vundle_plugins

# 修改默认环境为 zsh， 编译 vimproc
cd ~/.vim/bundle/vimproc
make
chsh -s /bin/zsh
