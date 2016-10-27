#!/bin/bash

# 基础环境检查
if [ -z `command -v zsh` ]; then
    success "zsh 不存在，请用chsh -l, 查看是否安装了zsh, 如果没有安装，请运行 yum install zsh"
    exit
fi

if [ -z `command -v autojump` ]; then
    success "autojump 不存在，请用 yum install autojump autojump-zsh"
    exit
fi

if [ -z `command -v tmux` ]; then
    success "tmux 不存在，请用 yum install tmux"
    exit
fi

if [ -z `command -v cscope` ]; then
    success "cscope 不存在，请用 yum install cscope"
fi

if [ -z `command -v ag` ]; then
    success "ag 不存在，请用 yum install epel-release.noarch the_silver_searcher"
fi
success "环境检查完成"

