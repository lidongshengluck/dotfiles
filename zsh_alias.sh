#!/bin/bash

# 命令缩写 
alias cls='clear'
alias ll='ls -l'
alias la='ls -a'
alias vi='vim'
alias h='history' # 查看历史命令
alias rmsvn='find . -name ".svn" -exec rm -rf {} \; >> /dev/null 2>&1'  # 递归删除目录下所有.svn
alias grep="grep --color=auto"

# 更快速的目录回退跳转
alias ...='cd ../..'
alias ....='cd ../../..'
alias cds='echo "`pwd`" > ~/.cdsave' # 记录当前目录
alias cdb='cd "`cat ~/.cdsave`"'     # 返回上次记录的目录

# 默认扩展名的打开
alias -s php=vi
alias -s js=vi
alias -s css=vi
alias -s c=vi
alias -s txt=vi
alias -s tcz='tar -czf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'

# 打包
mktgz() {
    tar cvzf "${1%%}.tar.gz"   "${1%%/}/"; 
}

mktar() {
    tar cvf "${1%%}.tar"   "${1%%/}/"; 
}

mktbz() {
    tar cvjf "${1%%}.tar.bz2"   "${1%%/}/"; 
}

# 自动解包
extract() {
    if [ -f $1 ];then
        case $1 in
            *.bz2)       bunzip   $1 ;;
            *.rar)       unrar e  $1 ;;
            *.tar)       tar xvf  $1 ;;
            *.zip)       unzip    $1 ;;
            *.7z)        7z x     $1 ;;
            *.tgz)       tar zxvf $1 ;;
            *.tar.gz)    tar zxvf $1 ;;
            *.tbz2)      tar xvjf $1 ;;
            *.tar.bz2)   tar zxvf $1 ;;
            *)           echo "'$1' 不能够解压"
        esac
    fi
}

# 创建目录，并cd进入
mcd() {
    mkdir -pv "$@"
    cd "$@"
}

# 查看自己常用的命令
used() {
    if [ $1 ]; then
        history | awk '{print $2}' | sort | uniq -c | sort -nr | head -n $1
    else
        history | awk '{print $2}' | sort | uniq -c | sort -nr | head -n 10
    fi
}
