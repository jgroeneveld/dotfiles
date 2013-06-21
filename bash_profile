# ======== STYLE ========
PS1="\[\e[1;31m\]________________________________________________________________________________________\n\[\e[1;33m\]| \W @ \h (\u) \n| => \[\e[0m\]"
PS2="\[\e[1;33m\]| => \[\e[0m\]"

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# ======== Programme ========
# alias subl='/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl'
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias subl3='echo "***Use subl***"; subl'
alias adb='/Users/jaap/Documents/Programmieren/_tools/android-sdk-mac_x86/platform-tools/adb'
alias ddms='/Users/jaap/Documents/Programmieren/_tools/android-sdk-mac_x86/tools/ddms'
alias nme='haxelib run nme'

# ======== Titanium ========
# aalias titanium='~/Library/Application\ Support/Titanium/mobilesdk/osx/2.0.2.GA/titanium.py'
function install_titanium_module() { cp $1 ~/Library/Application\ Support/Titanium/ ;}

# ======== GIT ========
alias hub='~/bin/hub'
alias gl='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit --date=iso'
alias gd='git diff'
alias gad='git add .'
alias gco='git checkout'
alias gp='git push'

function g {
  if [[ $# > 0 ]]; then
    git $@
  else
    git status
  fi
}

# Allows commit message without typing quotes (can't have quotes in the commit msg though).
function gc {
  git commit -m "$*"
}





function mergeall() { eval 'git checkout stable; git merge $1; git checkout master; git merge $1;'; }

if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
    c_reset=`tput sgr0`
    c_user=`tput setaf 2; tput bold`
    c_path=`tput setaf 4; tput bold`
    c_git_clean=`tput setaf 2`
    c_git_dirty=`tput setaf 1`
else
    c_reset=
    c_user=
    c_path=
    c_git_clean=
    c_git_dirty=
fi

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


# ======== Rails ========
alias r='rails'


# ======== Plutex ========
alias aplutex='xattr -d com.apple.quarantine ~/Documents/Projekte/Plutex/files.dmg; hdiutil attach ~/Documents/Projekte/Plutex/files.dmg; cd /Volumes/Plutex/'
alias dplutex='cd ~; hdiutil detach /Volumes/Plutex/'

alias pong='cd /Volumes/Plutex/pong'
alias kong='cd /Volumes/Plutex/kong'



# ====== zeug

alias kw='date +%V'

httpload() {
    STAMP=`date +"%s"`;
    echo "http://$1" > /var/tmp/$STAMP.http_load_temp_file
    http_load -parallel $2 -seconds $3 /var/tmp/$STAMP.http_load_temp_file
    rm -f /var/tmp/$STAMP.http_load_temp_file
}

phpserver() {
    /usr/local/opt/php54/bin/php -S localhost:$1
}


# ======== PATHs ========
export PATH=$PATH:/opt/local/bin
export PATH="$PATH:/usr/local/share/npm/bin"

export MANPATH=$MANPATH:/opt/local/share/man
export INFOPATH=$INFOPATH:/opt/local/share/info

export ANDROID_SDK='/Users/jaap/Documents/Programmieren/_tools/android-sdk-mac_x86'
export ANDROID_NDK='/Users/jaap/Documents/Programmieren/_tools/android-ndk-r7b'
export PATH=$PATH:"$ANDROID_SDK/tools"


export PATH=$PATH:"/usr/texbin"

export DYLD_LIBRARY_PATH="/usr/local/mysql/lib:$DYLD_LIBRARY_PATH"

# ======== RVM ========
# at the end
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.






