# common aliases

if [[ -n $PS1 ]]; then
    # case `uname` in
    # 	Linux)
    # 	    lscolor="--color=auto"
    # 	    ;;
    # 	Darwin)
    # 	    alias where=whereis
    # 	    lscolor="-G"
    # 	    ;;
    # esac

    # alias l.="ls -d ${lscolor} .*"
    # alias ll="ls -l ${lscolor}"
    # alias ls="ls -CF ${lscolor}"
    # alias sl="ls -CF"
    # alias la="ls -aF ${lscolor}"
    # alias lla="ls -alF ${lscolor}"
    # alias lz="ls -aZF ${lscolor}"
    # alias top='nice -10 top'
    # unset lscolor

    # alias svnaddall='svn status | awk "/^\?/ {print \$(NF)}" | xargs svn add'
    # alias svncommit='svn commit -m ""'
    # alias svnlost='svn status | awk "/^\!/ {print \$(NF)}"'
    # alias svn_ps_kw='svn ps -R svn:keywords "Id Head URL" .'

    # alias rmbackup='rm -f `find . -name "*~"`'
    # alias rmpyc='rm -f `find . -name "*.pyc"`'
    # alias cleanup='rm -f $( find . \( -name "*.pyc" -o -name "*~" -o -name ".#*" -o -name "#*" \) )'

    # alias suz='sudo zsh'
    # alias sudologin='sudo -i'

    # if [[ -x /usr/bin/colordiff ]]; then
    # 	alias diff='/usr/bin/colordiff $*'
    # fi

    # if [[ -x '/opt/google/chrome/google-chrome' ]]; then
    # 	alias chrome='/opt/google/chrome/google-chrome'
    # 	alias chrome-allow-file-access='/opt/google/chrome/google-chrome --allow-file-access-from-files'
    # fi

    # if [[ -x /Applications/Emacs.app/Contents/MacOS/Emacs ]]; then
    # 	alias emacs=/Applications/Emacs.app/Contents/MacOS/Emacs
    # fi

    # macOS用ls設定
    alias l.="ls -dG .*"
    alias ll="ls -lG"
    alias ls="ls -CFG"
    alias sl="ls -CF"
    alias la="ls -aFG"
    alias lla="ls -alFG"
    
    # macOS向けエイリアス
    alias o='open'
    alias oo='open .'
    alias brew_update='brew update && brew upgrade && brew cleanup'
    alias brew_doctor='brew doctor'
    
    # 一般的なエイリアス
    alias top='top -o cpu'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
    
    # ネットワーク
    alias flushdns='sudo dscacheutil -flushcache && sudo killall -HUP mDNSResponder'
    alias showfiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder'
    alias hidefiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder'
    
    # 開発関連
    alias servers='lsof -i -P | grep LISTEN'
    alias myip='curl -s https://ipecho.net/plain; echo'
    
    # Docker（Homebrewからインストールした場合）
    if [[ -x ${HOMEBREW_PREFIX}/bin/docker ]]; then
        alias d='docker'
        alias dc='docker-compose'
        alias dps='docker ps'
        alias dpsa='docker ps -a'
    fi
    
    # Git（Homebrewからインストールした場合）
    if [[ -x ${HOMEBREW_PREFIX}/bin/git ]]; then
        alias g='git'
        alias gs='git status'
        alias ga='git add'
        alias gc='git commit'
        alias gp='git push'
        alias gl='git log --oneline --graph'
    fi
fi
