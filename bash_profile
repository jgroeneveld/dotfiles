# ======== STYLE ========
PS1="\[\e[1;31m\]________________________________________________________________________________________\n\[\e[1;33m\]| \W @ \h (\u) \n| => \[\e[0m\]"
PS2="\[\e[1;33m\]| => \[\e[0m\]"

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced


function parse_git_branch {
    if git diff --quiet 2>/dev/null >&2; then
        git_color="${c_git_clean}"
    else
        git_color=${c_git_dirty}
    fi

    ref=$(git symbolic-ref HEAD 2> /dev/null) || return
    echo $git_color"["${ref#refs/heads/}"]"$c_reset
}

PS1="\[\e[1;31m\]________________________________________________________________________________________\n\[\e[1;33m\]| \W @ \h (\u) \$(parse_git_branch)\n| => \[\e[0m\]"



source $HOME/dotfiles/shared_shell

# ======== RVM ========
# at the end
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.
