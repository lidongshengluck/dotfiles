#!/bin/bash

# 自定义别名
source ~/.dotfiles/zsh_conf/zsh_alias.sh

# 修改 zsh 命令提示符
export PROMPT="%{$fg_bold[green]%}%n@%{$fg[cyan]%}%c%{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%}%# % %{$reset_color%}"

# 自动删除历史记录条数
export HISTCONTROL=erasedups

