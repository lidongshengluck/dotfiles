#!/bin/bash

export PROMPT="%{$fg_bold[green]%}%n@%{$fg[cyan]%}%c%{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%}%# % %{$reset_color%}"

prompt_svn() {
    local rev branch
    if in_svn; then
        rev=$(svn_get_rev_nr)
        branch=$(svn_get_branch_name)
        if [[ $(svn_dirty_choose_pwd 1 0) -eq 1 ]]; then
            prompt_segment yellow black
            echo -n "$rev@$branch"
            echo -n "±"
        else
            prompt_segment green black
            echo -n "$rev@$branch"
        fi
    fi
}
