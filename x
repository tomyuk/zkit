+/etc/zshrc:11> PROMPT='[%n@%m]%~%# ' 
+/etc/zshrc:16> bindkey ' ' magic-space
+/etc/zshrc:47> _src_etc_profile_d
+_src_etc_profile_d:4> emulate -L ksh
+_src_etc_profile_d:8> [[ ! -o login ]]
+_src_etc_profile_d:9> i=/etc/profile.d/PackageKit.sh
+_src_etc_profile_d:10> [ -r /etc/profile.d/PackageKit.sh ']'
+_src_etc_profile_d:11> . /etc/profile.d/PackageKit.sh
+_src_etc_profile_d:9> i=/etc/profile.d/autojump.sh
+_src_etc_profile_d:10> [ -r /etc/profile.d/autojump.sh ']'
+_src_etc_profile_d:11> . /etc/profile.d/autojump.sh
+/etc/profile.d/autojump.sh:3> shell=+/etc/profile.d/autojump.sh:3> awk -F/ '{ print $NF }'
+/etc/profile.d/autojump.sh:3> shell=+/etc/profile.d/autojump.sh:3> echo /bin/bash
+/etc/profile.d/autojump.sh:3> shell=bash 
+/etc/profile.d/autojump.sh:6> [ -s /home/tomo/.autojump/etc/profile.d/autojump.bash ']'
+/etc/profile.d/autojump.sh:10> [ -s /etc/profile.d/autojump.bash ']'
+/etc/profile.d/autojump.sh:11> source /etc/profile.d/autojump.bash
+/etc/profile.d/autojump.bash:13> complete -F _autojump j
/etc/profile.d/autojump.bash:13: command not found: complete
+/etc/profile.d/autojump.bash:31> [[ -n '' ]]
+/etc/profile.d/autojump.bash:36> [[ -n '' ]]
+/etc/profile.d/autojump.bash:39> export 'AUTOJUMP_DATA_DIR=/home/tomo/.local/share/autojump'
+/etc/profile.d/autojump.bash:42> [ ! -e /home/tomo/.local/share/autojump ']'
+/etc/profile.d/autojump.bash:50> [ -d /home/tomo/.autojump/ ']'
+/etc/profile.d/autojump.bash:54> export 'AUTOJUMP_HOME=/home/tomo'
+/etc/profile.d/autojump.bash:55> [ '' '==' 1 ']'
+/etc/profile.d/autojump.bash:58> _PWD_ARGS=-P 
+/etc/profile.d/autojump.bash:67> case autojump_add_to_database; printf "\033]0;%s@%s(%s):%s\007" "${USER}" "${HOSTNAME%%.*}" "${TTY/#\/dev\/}" "${PWD/#$HOME/~}" (*autojump*)
+_src_etc_profile_d:9> i=/etc/profile.d/bash_completion.sh
+_src_etc_profile_d:10> [ -r /etc/profile.d/bash_completion.sh ']'
+_src_etc_profile_d:11> . /etc/profile.d/bash_completion.sh
+/etc/profile.d/bash_completion.sh:2> [ -z '' -o -z '[%n@%m]%~%# ' -o -n '' ']'
+/etc/profile.d/bash_completion.sh:2> return
+_src_etc_profile_d:9> i=/etc/profile.d/ccache.sh
+_src_etc_profile_d:10> [ -r /etc/profile.d/ccache.sh ']'
+_src_etc_profile_d:11> . /etc/profile.d/ccache.sh
+/etc/profile.d/ccache.sh:4> case :/home/tomo/.zkit_private/bin:/home/tomo/.zkit/bin:/home/tomo/.rvm/gems/ruby-1.9.3-p327/bin:/home/tomo/.rvm/gems/ruby-1.9.3-p327@global/bin:/home/tomo/.rvm/rubies/ruby-1.9.3-p327/bin:/home/tomo/.rvm/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin: (*:/usr/lib64/ccache:*)
+/etc/profile.d/ccache.sh:4> case :/home/tomo/.zkit_private/bin:/home/tomo/.zkit/bin:/home/tomo/.rvm/gems/ruby-1.9.3-p327/bin:/home/tomo/.rvm/gems/ruby-1.9.3-p327@global/bin:/home/tomo/.rvm/rubies/ruby-1.9.3-p327/bin:/home/tomo/.rvm/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin: (*)
+/etc/profile.d/ccache.sh:6> PATH=/usr/lib64/ccache:/home/tomo/.zkit_private/bin:/home/tomo/.zkit/bin:/home/tomo/.rvm/gems/ruby-1.9.3-p327/bin:/home/tomo/.rvm/gems/ruby-1.9.3-p327@global/bin:/home/tomo/.rvm/rubies/ruby-1.9.3-p327/bin:/home/tomo/.rvm/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin 
+/etc/profile.d/ccache.sh:14> [ -n '' ']'
+/etc/profile.d/ccache.sh:20> [ 1000 '!=' 0 ']'
+/etc/profile.d/ccache.sh:21> [ -w /var/cache/ccache ']'
+/etc/profile.d/ccache.sh:29> export 'CCACHE_HASHDIR='
+_src_etc_profile_d:9> i=/etc/profile.d/colorgrep.sh
+_src_etc_profile_d:10> [ -r /etc/profile.d/colorgrep.sh ']'
+_src_etc_profile_d:11> . /etc/profile.d/colorgrep.sh
+/etc/profile.d/colorgrep.sh:4> [ -z '[%n@%m]%~%# ' ']'
+/etc/profile.d/colorgrep.sh:6> [ -r /etc/GREP_COLORS ']'
+/etc/profile.d/colorgrep.sh:7> grep -qi '^COLOR.*none' /etc/GREP_COLORS
+/etc/profile.d/colorgrep.sh:10> alias 'grep=grep --color=auto'
+/etc/profile.d/colorgrep.sh:11> alias 'egrep=egrep --color=auto'
+/etc/profile.d/colorgrep.sh:12> alias 'fgrep=fgrep --color=auto'
+_src_etc_profile_d:9> i=/etc/profile.d/colorls.sh
+_src_etc_profile_d:10> [ -r /etc/profile.d/colorls.sh ']'
+_src_etc_profile_d:11> . /etc/profile.d/colorls.sh
+/etc/profile.d/colorls.sh:4> [ -z '' ']'
+/etc/profile.d/colorls.sh:6> alias 'll=ls -l'
+/etc/profile.d/colorls.sh:7> alias 'l.=ls -d .*'
+/etc/profile.d/colorls.sh:11> [ -z '[%n@%m]%~%# ' ']'
+/etc/profile.d/colorls.sh:13> COLORS='' 
+/etc/profile.d/colorls.sh:15> colors=/home/tomo/.dir_colors.xterm-256color
+/etc/profile.d/colorls.sh:17> [ -e /home/tomo/.dir_colors.xterm-256color ']'
+/etc/profile.d/colorls.sh:15> colors=/home/tomo/.dircolors.xterm-256color
+/etc/profile.d/colorls.sh:17> [ -e /home/tomo/.dircolors.xterm-256color ']'
+/etc/profile.d/colorls.sh:15> colors=/home/tomo/.dir_colors
+/etc/profile.d/colorls.sh:17> [ -e /home/tomo/.dir_colors ']'
+/etc/profile.d/colorls.sh:15> colors=/home/tomo/.dircolors
+/etc/profile.d/colorls.sh:17> [ -e /home/tomo/.dircolors ']'
+/etc/profile.d/colorls.sh:20> [ -z '' ']'
+/etc/profile.d/colorls.sh:20> [ -e /etc/DIR_COLORS.256color ']'
+/etc/profile.d/colorls.sh:21> tty -s
+/etc/profile.d/colorls.sh:21> tput colors
+/etc/profile.d/colorls.sh:21> [ x256 '=' x256 ']'
+/etc/profile.d/colorls.sh:22> COLORS=/etc/DIR_COLORS.256color 
+/etc/profile.d/colorls.sh:24> [ -z /etc/DIR_COLORS.256color ']'
+/etc/profile.d/colorls.sh:31> [ -n /etc/DIR_COLORS.256color ']'
+/etc/profile.d/colorls.sh:33> dircolors --sh /etc/DIR_COLORS.256color
+/etc/profile.d/colorls.sh:33> eval 'LS_COLORS='\''rs=0:di=38;5;27:ln=38;5;51:mh=44;38;5;15:pi=40;38;5;11:so=38;5;13:do=38;5;5:bd=48;5;232;38;5;11:cd=48;5;232;38;5;3:or=48;5;232;38;5;9:mi=05;48;5;232;38;5;15:su=48;5;196;38;5;15:sg=48;5;11;38;5;16:ca=48;5;196;38;5;226:tw=48;5;10;38;5;16:ow=48;5;10;38;5;21:st=48;5;21;38;5;15:ex=38;5;34:*.tar=38;5;9:*.tgz=38;5;9:*.arj=38;5;9:*.taz=38;5;9:*.lzh=38;5;9:*.lzma=38;5;9:*.tlz=38;5;9:*.txz=38;5;9:*.zip=38;5;9:*.z=38;5;9:*.Z=38;5;9:*.dz=38;5;9:*.gz=38;5;9:*.lz=38;5;9:*.xz=38;5;9:*.bz2=38;5;9:*.tbz=38;5;9:*.tbz2=38;5;9:*.bz=38;5;9:*.tz=38;5;9:*.deb=38;5;9:*.rpm=38;5;9:*.jar=38;5;9:*.war=38;5;9:*.ear=38;5;9:*.sar=38;5;9:*.rar=38;5;9:*.ace=38;5;9:*.zoo=38;5;9:*.cpio=38;5;9:*.7z=38;5;9:*.rz=38;5;9:*.jpg=38;5;13:*.jpeg=38;5;13:*.gif=38;5;13:*.bmp=38;5;13:*.pbm=38;5;13:*.pgm=38;5;13:*.ppm=38;5;13:*.tga=38;5;13:*.xbm=38;5;13:*.xpm=38;5;13:*.tif=38;5;13:*.tiff=38;5;13:*.png=38;5;13:*.svg=38;5;13:*.svgz=38;5;13:*.mng=38;5;13:*.pcx=38;5;13:*.mov=38;5;13:*.mpg=38;5;13:*.mpeg=38;5;13:*.m2v=38;5;13:*.mkv=38;5;13:*.ogm=38;5;13:*.mp4=38;5;13:*.m4v=38;5;13:*.mp4v=38;5;13:*.vob=38;5;13:*.qt=38;5;13:*.nuv=38;5;13:*.wmv=38;5;13:*.asf=38;5;13:*.rm=38;5;13:*.rmvb=38;5;13:*.flc=38;5;13:*.avi=38;5;13:*.fli=38;5;13:*.flv=38;5;13:*.gl=38;5;13:*.dl=38;5;13:*.xcf=38;5;13:*.xwd=38;5;13:*.yuv=38;5;13:*.cgm=38;5;13:*.emf=38;5;13:*.axv=38;5;13:*.anx=38;5;13:*.ogv=38;5;13:*.ogx=38;5;13:*.aac=38;5;45:*.au=38;5;45:*.flac=38;5;45:*.mid=38;5;45:*.midi=38;5;45:*.mka=38;5;45:*.mp3=38;5;45:*.mpc=38;5;45:*.ogg=38;5;45:*.ra=38;5;45:*.wav=38;5;45:*.axa=38;5;45:*.oga=38;5;45:*.spx=38;5;45:*.xspf=38;5;45:'\'';
export LS_COLORS'
+/etc/profile.d/colorls.sh:33> LS_COLORS='rs=0:di=38;5;27:ln=38;5;51:mh=44;38;5;15:pi=40;38;5;11:so=38;5;13:do=38;5;5:bd=48;5;232;38;5;11:cd=48;5;232;38;5;3:or=48;5;232;38;5;9:mi=05;48;5;232;38;5;15:su=48;5;196;38;5;15:sg=48;5;11;38;5;16:ca=48;5;196;38;5;226:tw=48;5;10;38;5;16:ow=48;5;10;38;5;21:st=48;5;21;38;5;15:ex=38;5;34:*.tar=38;5;9:*.tgz=38;5;9:*.arj=38;5;9:*.taz=38;5;9:*.lzh=38;5;9:*.lzma=38;5;9:*.tlz=38;5;9:*.txz=38;5;9:*.zip=38;5;9:*.z=38;5;9:*.Z=38;5;9:*.dz=38;5;9:*.gz=38;5;9:*.lz=38;5;9:*.xz=38;5;9:*.bz2=38;5;9:*.tbz=38;5;9:*.tbz2=38;5;9:*.bz=38;5;9:*.tz=38;5;9:*.deb=38;5;9:*.rpm=38;5;9:*.jar=38;5;9:*.war=38;5;9:*.ear=38;5;9:*.sar=38;5;9:*.rar=38;5;9:*.ace=38;5;9:*.zoo=38;5;9:*.cpio=38;5;9:*.7z=38;5;9:*.rz=38;5;9:*.jpg=38;5;13:*.jpeg=38;5;13:*.gif=38;5;13:*.bmp=38;5;13:*.pbm=38;5;13:*.pgm=38;5;13:*.ppm=38;5;13:*.tga=38;5;13:*.xbm=38;5;13:*.xpm=38;5;13:*.tif=38;5;13:*.tiff=38;5;13:*.png=38;5;13:*.svg=38;5;13:*.svgz=38;5;13:*.mng=38;5;13:*.pcx=38;5;13:*.mov=38;5;13:*.mpg=38;5;13:*.mpeg=38;5;13:*.m2v=38;5;13:*.mkv=38;5;13:*.ogm=38;5;13:*.mp4=38;5;13:*.m4v=38;5;13:*.mp4v=38;5;13:*.vob=38;5;13:*.qt=38;5;13:*.nuv=38;5;13:*.wmv=38;5;13:*.asf=38;5;13:*.rm=38;5;13:*.rmvb=38;5;13:*.flc=38;5;13:*.avi=38;5;13:*.fli=38;5;13:*.flv=38;5;13:*.gl=38;5;13:*.dl=38;5;13:*.xcf=38;5;13:*.xwd=38;5;13:*.yuv=38;5;13:*.cgm=38;5;13:*.emf=38;5;13:*.axv=38;5;13:*.anx=38;5;13:*.ogv=38;5;13:*.ogx=38;5;13:*.aac=38;5;45:*.au=38;5;45:*.flac=38;5;45:*.mid=38;5;45:*.midi=38;5;45:*.mka=38;5;45:*.mp3=38;5;45:*.mpc=38;5;45:*.ogg=38;5;45:*.ra=38;5;45:*.wav=38;5;45:*.axa=38;5;45:*.oga=38;5;45:*.spx=38;5;45:*.xspf=38;5;45:' 
+/etc/profile.d/colorls.sh:33> export LS_COLORS
+/etc/profile.d/colorls.sh:34> [ -z 'rs=0:di=38;5;27:ln=38;5;51:mh=44;38;5;15:pi=40;38;5;11:so=38;5;13:do=38;5;5:bd=48;5;232;38;5;11:cd=48;5;232;38;5;3:or=48;5;232;38;5;9:mi=05;48;5;232;38;5;15:su=48;5;196;38;5;15:sg=48;5;11;38;5;16:ca=48;5;196;38;5;226:tw=48;5;10;38;5;16:ow=48;5;10;38;5;21:st=48;5;21;38;5;15:ex=38;5;34:*.tar=38;5;9:*.tgz=38;5;9:*.arj=38;5;9:*.taz=38;5;9:*.lzh=38;5;9:*.lzma=38;5;9:*.tlz=38;5;9:*.txz=38;5;9:*.zip=38;5;9:*.z=38;5;9:*.Z=38;5;9:*.dz=38;5;9:*.gz=38;5;9:*.lz=38;5;9:*.xz=38;5;9:*.bz2=38;5;9:*.tbz=38;5;9:*.tbz2=38;5;9:*.bz=38;5;9:*.tz=38;5;9:*.deb=38;5;9:*.rpm=38;5;9:*.jar=38;5;9:*.war=38;5;9:*.ear=38;5;9:*.sar=38;5;9:*.rar=38;5;9:*.ace=38;5;9:*.zoo=38;5;9:*.cpio=38;5;9:*.7z=38;5;9:*.rz=38;5;9:*.jpg=38;5;13:*.jpeg=38;5;13:*.gif=38;5;13:*.bmp=38;5;13:*.pbm=38;5;13:*.pgm=38;5;13:*.ppm=38;5;13:*.tga=38;5;13:*.xbm=38;5;13:*.xpm=38;5;13:*.tif=38;5;13:*.tiff=38;5;13:*.png=38;5;13:*.svg=38;5;13:*.svgz=38;5;13:*.mng=38;5;13:*.pcx=38;5;13:*.mov=38;5;13:*.mpg=38;5;13:*.mpeg=38;5;13:*.m2v=38;5;13:*.mkv=38;5;13:*.ogm=38;5;13:*.mp4=38;5;13:*.m4v=38;5;13:*.mp4v=38;5;13:*.vob=38;5;13:*.qt=38;5;13:*.nuv=38;5;13:*.wmv=38;5;13:*.asf=38;5;13:*.rm=38;5;13:*.rmvb=38;5;13:*.flc=38;5;13:*.avi=38;5;13:*.fli=38;5;13:*.flv=38;5;13:*.gl=38;5;13:*.dl=38;5;13:*.xcf=38;5;13:*.xwd=38;5;13:*.yuv=38;5;13:*.cgm=38;5;13:*.emf=38;5;13:*.axv=38;5;13:*.anx=38;5;13:*.ogv=38;5;13:*.ogx=38;5;13:*.aac=38;5;45:*.au=38;5;45:*.flac=38;5;45:*.mid=38;5;45:*.midi=38;5;45:*.mka=38;5;45:*.mp3=38;5;45:*.mpc=38;5;45:*.ogg=38;5;45:*.ra=38;5;45:*.wav=38;5;45:*.axa=38;5;45:*.oga=38;5;45:*.spx=38;5;45:*.xspf=38;5;45:' ']'
+/etc/profile.d/colorls.sh:35> grep '--color=auto' -qi '^COLOR.*none' /etc/DIR_COLORS.256color
+/etc/profile.d/colorls.sh:38> alias 'll=ls -l --color=auto'
+/etc/profile.d/colorls.sh:39> alias 'l.=ls -d .* --color=auto'
+/etc/profile.d/colorls.sh:40> alias 'ls=ls --color=auto'
+_src_etc_profile_d:9> i=/etc/profile.d/cvs.sh
+_src_etc_profile_d:10> [ -r /etc/profile.d/cvs.sh ']'
+_src_etc_profile_d:11> . /etc/profile.d/cvs.sh
+/etc/profile.d/cvs.sh:2> export 'CVS_RSH=ssh'
+_src_etc_profile_d:9> i=/etc/profile.d/gnome-ssh-askpass.sh
+_src_etc_profile_d:10> [ -r /etc/profile.d/gnome-ssh-askpass.sh ']'
+_src_etc_profile_d:11> . /etc/profile.d/gnome-ssh-askpass.sh
+/etc/profile.d/gnome-ssh-askpass.sh:1> SSH_ASKPASS=/usr/libexec/openssh/gnome-ssh-askpass 
+/etc/profile.d/gnome-ssh-askpass.sh:2> export SSH_ASKPASS
+_src_etc_profile_d:9> i=/etc/profile.d/kde.sh
+_src_etc_profile_d:10> [ -r /etc/profile.d/kde.sh ']'
+_src_etc_profile_d:11> . /etc/profile.d/kde.sh
+/etc/profile.d/kde.sh:3> [ -z /usr ']'
+/etc/profile.d/kde.sh:6> [ -z 1 ']'
+/etc/profile.d/kde.sh:12> libdir=/usr/lib64
+/etc/profile.d/kde.sh:14> [ -n /usr/lib64/kde4/plugins:/usr/lib/kde4/plugins ']'
+/etc/profile.d/kde.sh:15> echo /usr/lib64/kde4/plugins:/usr/lib/kde4/plugins
+/etc/profile.d/kde.sh:15> /bin/grep -q /usr/lib64/kde4/plugins
+/etc/profile.d/kde.sh:12> libdir=/usr/lib
+/etc/profile.d/kde.sh:14> [ -n /usr/lib64/kde4/plugins:/usr/lib/kde4/plugins ']'
+/etc/profile.d/kde.sh:15> echo /usr/lib64/kde4/plugins:/usr/lib/kde4/plugins
+/etc/profile.d/kde.sh:15> /bin/grep -q /usr/lib/kde4/plugins
+_src_etc_profile_d:9> i=/etc/profile.d/lang.sh
+_src_etc_profile_d:10> [ -r /etc/profile.d/lang.sh ']'
+_src_etc_profile_d:11> . /etc/profile.d/lang.sh
+/etc/profile.d/lang.sh:3> sourced=0 
+/etc/profile.d/lang.sh:5> [ -n ja_JP.utf8 ']'
+/etc/profile.d/lang.sh:6> saved_lang=ja_JP.utf8 
+/etc/profile.d/lang.sh:7> [ -f /home/tomo/.i18n ']'
+/etc/profile.d/lang.sh:8> LANG=ja_JP.utf8 
+/etc/profile.d/lang.sh:9> unset saved_lang
+/etc/profile.d/lang.sh:16> [ 0 '=' 1 ']'
+/etc/profile.d/lang.sh:89> unset sourced
+/etc/profile.d/lang.sh:90> unset langfile
+_src_etc_profile_d:9> i=/etc/profile.d/less.sh
+_src_etc_profile_d:10> [ -r /etc/profile.d/less.sh ']'
+_src_etc_profile_d:11> . /etc/profile.d/less.sh
+/etc/profile.d/less.sh:2> [ -x /usr/bin/lesspipe.sh ']'
+/etc/profile.d/less.sh:2> export 'LESSOPEN=||/usr/bin/lesspipe.sh %s'
+_src_etc_profile_d:9> i=/etc/profile.d/mingw32.sh
+_src_etc_profile_d:10> [ -r /etc/profile.d/mingw32.sh ']'
+_src_etc_profile_d:11> . /etc/profile.d/mingw32.sh
+/etc/profile.d/mingw32.sh:3> alias 'mingw32-env=eval `rpm --eval %{mingw32_env}`'
+_src_etc_profile_d:9> i=/etc/profile.d/qt-graphicssystem.sh
+_src_etc_profile_d:10> [ -r /etc/profile.d/qt-graphicssystem.sh ']'
+_src_etc_profile_d:11> . /etc/profile.d/qt-graphicssystem.sh
+/etc/profile.d/qt-graphicssystem.sh:2> [ -z 1 -a -z '' ']'
+_src_etc_profile_d:9> i=/etc/profile.d/qt.sh
+_src_etc_profile_d:10> [ -r /etc/profile.d/qt.sh ']'
+_src_etc_profile_d:11> . /etc/profile.d/qt.sh
+/etc/profile.d/qt.sh:9> [ -z /usr/lib64/qt-3.3 ']'
+_src_etc_profile_d:9> i=/etc/profile.d/term256.sh
+_src_etc_profile_d:10> [ -r /etc/profile.d/term256.sh ']'
+_src_etc_profile_d:11> . /etc/profile.d/term256.sh
+/etc/profile.d/term256.sh:9> local256=gnome-terminal 
+/etc/profile.d/term256.sh:11> [ -n gnome-terminal ']'
+/etc/profile.d/term256.sh:13> case xterm-256color (xterm)
+/etc/profile.d/term256.sh:13> case xterm-256color (screen)
+/etc/profile.d/term256.sh:13> case xterm-256color (Eterm)
+/etc/profile.d/term256.sh:18> export TERM
+/etc/profile.d/term256.sh:20> [ -n '' ']'
+/etc/profile.d/term256.sh:26> unset local256
+_src_etc_profile_d:9> i=/etc/profile.d/udisks-bash-completion.sh
+_src_etc_profile_d:10> [ -r /etc/profile.d/udisks-bash-completion.sh ']'
+_src_etc_profile_d:11> . /etc/profile.d/udisks-bash-completion.sh
+/etc/profile.d/udisks-bash-completion.sh:3> [ -z '' ']'
+/etc/profile.d/udisks-bash-completion.sh:3> return
+_src_etc_profile_d:9> i=/etc/profile.d/vim.sh
+_src_etc_profile_d:10> [ -r /etc/profile.d/vim.sh ']'
+_src_etc_profile_d:11> . /etc/profile.d/vim.sh
+/etc/profile.d/vim.sh:1> [ -n '' -o -n '' -o -n 5.0.0 ']'
+/etc/profile.d/vim.sh:2> [ -x //usr/bin/id ']'
+/etc/profile.d/vim.sh:3> //usr/bin/id -u
+/etc/profile.d/vim.sh:3> [ 1000 -le 200 ']'
+/etc/profile.d/vim.sh:5> alias vi
+/etc/profile.d/vim.sh:5> alias 'vi=vim'
+_src_etc_profile_d:9> i=/etc/profile.d/vte.sh
+_src_etc_profile_d:10> [ -r /etc/profile.d/vte.sh ']'
+_src_etc_profile_d:11> . /etc/profile.d/vte.sh
+_src_etc_profile_d:9> i=/etc/profile.d/which2.sh
+_src_etc_profile_d:10> [ -r /etc/profile.d/which2.sh ']'
+_src_etc_profile_d:11> . /etc/profile.d/which2.sh
+/etc/profile.d/which2.sh:4> alias 'which=alias | /usr/bin/which --tty-only --read-alias --show-dot --show-tilde'
+_src_etc_profile_d:9> i=/etc/profile.d/x11-ssh-askpass.sh
+_src_etc_profile_d:10> [ -r /etc/profile.d/x11-ssh-askpass.sh ']'
+_src_etc_profile_d:11> . /etc/profile.d/x11-ssh-askpass.sh
+/etc/profile.d/x11-ssh-askpass.sh:1> SSH_ASKPASS=/usr/libexec/openssh/x11-ssh-askpass 
+/etc/profile.d/x11-ssh-askpass.sh:2> export SSH_ASKPASS
+_src_etc_profile_d:14> unset i
+/etc/zshrc:49> unset -f pathmunge _src_etc_profile_d
+/home/tomo/.zkit/zsh/.zshrc:2> source /home/tomo/.zkit/zsh/startup.sh
+/home/tomo/.zkit/zsh/startup.sh:6> zkit_private=/home/tomo/.zkit_private 
+/home/tomo/.zkit/zsh/startup.sh:9> fpath=( /home/tomo/.zkit/zsh/functions /usr/share/zsh/site-functions /usr/share/zsh/5.0.0/functions ) 
+/home/tomo/.zkit/zsh/startup.sh:11> umask 0077
+/home/tomo/.zkit/zsh/startup.sh:13> source /home/tomo/.zkit/lib/zkit_utils.sh
+/home/tomo/.zkit/lib/zkit_utils.sh:5> [[ -n 5.0.0 ]]
+/home/tomo/.zkit/lib/zkit_utils.sh:6> [[ xterm-256color == xterm* ]]
+/home/tomo/.zkit/lib/zkit_utils.sh:7> autoload -Uz colors
+/home/tomo/.zkit/lib/zkit_utils.sh:8> colors
+colors:4> emulate -L zsh
+colors:6> typeset -Ag color colour
+colors:8> color=( 00 none 01 bold 02 faint 22 normal 03 standout 23 no-standout 04 underline 24 no-underline 05 blink 25 no-blink 07 reverse 27 no-reverse 08 conceal 28 no-conceal 30 black 40 bg-black 31 red 41 bg-red 32 green 42 bg-green 33 yellow 43 bg-yellow 34 blue 44 bg-blue 35 magenta 45 bg-magenta 36 cyan 46 bg-cyan 37 white 47 bg-white 39 default 49 bg-default ) 
+colors:76> local k
+colors:77> k=44
+colors:77> color[${color[$k]}]=44 
+colors:77> k=33
+colors:77> color[${color[$k]}]=33 
+colors:77> k=22
+colors:77> color[${color[$k]}]=22 
+colors:77> k=00
+colors:77> color[${color[$k]}]=00 
+colors:77> k=45
+colors:77> color[${color[$k]}]=45 
+colors:77> k=34
+colors:77> color[${color[$k]}]=34 
+colors:77> k=23
+colors:77> color[${color[$k]}]=23 
+colors:77> k=01
+colors:77> color[${color[$k]}]=01 
+colors:77> k=46
+colors:77> color[${color[$k]}]=46 
+colors:77> k=35
+colors:77> color[${color[$k]}]=35 
+colors:77> k=24
+colors:77> color[${color[$k]}]=24 
+colors:77> k=02
+colors:77> color[${color[$k]}]=02 
+colors:77> k=47
+colors:77> color[${color[$k]}]=47 
+colors:77> k=36
+colors:77> color[${color[$k]}]=36 
+colors:77> k=25
+colors:77> color[${color[$k]}]=25 
+colors:77> k=03
+colors:77> color[${color[$k]}]=03 
+colors:77> k=37
+colors:77> color[${color[$k]}]=37 
+colors:77> k=04
+colors:77> color[${color[$k]}]=04 
+colors:77> k=49
+colors:77> color[${color[$k]}]=49 
+colors:77> k=27
+colors:77> color[${color[$k]}]=27 
+colors:77> k=05
+colors:77> color[${color[$k]}]=05 
+colors:77> k=39
+colors:77> color[${color[$k]}]=39 
+colors:77> k=28
+colors:77> color[${color[$k]}]=28 
+colors:77> k=07
+colors:77> color[${color[$k]}]=07 
+colors:77> k=08
+colors:77> color[${color[$k]}]=08 
+colors:77> k=40
+colors:77> color[${color[$k]}]=40 
+colors:77> k=41
+colors:77> color[${color[$k]}]=41 
+colors:77> k=30
+colors:77> color[${color[$k]}]=30 
+colors:77> k=42
+colors:77> color[${color[$k]}]=42 
+colors:77> k=31
+colors:77> color[${color[$k]}]=31 
+colors:77> k=43
+colors:77> color[${color[$k]}]=43 
+colors:77> k=32
+colors:77> color[${color[$k]}]=32 
+colors:81> k=30
+colors:81> color[fg-${color[$k]}]=30 
+colors:81> k=31
+colors:81> color[fg-${color[$k]}]=31 
+colors:81> k=32
+colors:81> color[fg-${color[$k]}]=32 
+colors:81> k=33
+colors:81> color[fg-${color[$k]}]=33 
+colors:81> k=34
+colors:81> color[fg-${color[$k]}]=34 
+colors:81> k=35
+colors:81> color[fg-${color[$k]}]=35 
+colors:81> k=36
+colors:81> color[fg-${color[$k]}]=36 
+colors:81> k=37
+colors:81> color[fg-${color[$k]}]=37 
+colors:81> k=39
+colors:81> color[fg-${color[$k]}]=39 
+colors:85> color[grey]=30 
+colors:86> color[fg-grey]=30 
+colors:87> color[bg-grey]=40 
+colors:91> colour=( 00 none 22 normal 44 bg-blue fg-red 31 01 bold 23 no-standout 45 bg-magenta 02 faint 24 no-underline 46 bg-cyan 03 standout 25 no-blink 47 bg-white 04 underline yellow 33 bg-red 41 bold 01 05 blink 27 no-reverse 49 bg-default no-reverse 27 28 no-conceal 07 reverse 08 conceal fg-black 30 red 31 conceal 08 default 39 faint 02 fg-green 32 no-underline 24 bg-magenta 45 magenta 35 blink 05 blue 34 grey 30 fg-default 39 bg-white 47 30 black no-standout 23 31 red 32 green bg-yellow 43 33 yellow cyan 36 34 blue 35 magenta white 37 36 cyan standout 03 37 white bg-blue 44 fg-magenta 35 39 default bg-grey 40 no-conceal 28 reverse 07 bg-cyan 46 underline 04 fg-yellow 33 fg-white 37 bg-black 40 normal 22 fg-blue 34 bg-green 42 none 00 fg-grey 30 black 30 no-blink 25 bg-default 49 40 bg-black fg-cyan 36 green 32 41 bg-red 42 bg-green 43 bg-yellow ) 
+colors:95> local 'lc=[' 'rc=m'
+colors:97> typeset -Hg reset_color bold_color
+colors:98> reset_color='[00m' 
+colors:99> bold_color='[01m' 
+colors:103> typeset -AHg fg fg_bold fg_no_bold
+colors:104> k=fg-red
+colors:105> fg[${k#fg-}]='[31m' 
+colors:106> fg_bold[${k#fg-}]='[01;31m' 
+colors:107> fg_no_bold[${k#fg-}]='[22;31m' 
+colors:104> k=fg-black
+colors:105> fg[${k#fg-}]='[30m' 
+colors:106> fg_bold[${k#fg-}]='[01;30m' 
+colors:107> fg_no_bold[${k#fg-}]='[22;30m' 
+colors:104> k=fg-green
+colors:105> fg[${k#fg-}]='[32m' 
+colors:106> fg_bold[${k#fg-}]='[01;32m' 
+colors:107> fg_no_bold[${k#fg-}]='[22;32m' 
+colors:104> k=fg-default
+colors:105> fg[${k#fg-}]='[39m' 
+colors:106> fg_bold[${k#fg-}]='[01;39m' 
+colors:107> fg_no_bold[${k#fg-}]='[22;39m' 
+colors:104> k=fg-magenta
+colors:105> fg[${k#fg-}]='[35m' 
+colors:106> fg_bold[${k#fg-}]='[01;35m' 
+colors:107> fg_no_bold[${k#fg-}]='[22;35m' 
+colors:104> k=fg-yellow
+colors:105> fg[${k#fg-}]='[33m' 
+colors:106> fg_bold[${k#fg-}]='[01;33m' 
+colors:107> fg_no_bold[${k#fg-}]='[22;33m' 
+colors:104> k=fg-white
+colors:105> fg[${k#fg-}]='[37m' 
+colors:106> fg_bold[${k#fg-}]='[01;37m' 
+colors:107> fg_no_bold[${k#fg-}]='[22;37m' 
+colors:104> k=fg-blue
+colors:105> fg[${k#fg-}]='[34m' 
+colors:106> fg_bold[${k#fg-}]='[01;34m' 
+colors:107> fg_no_bold[${k#fg-}]='[22;34m' 
+colors:104> k=fg-grey
+colors:105> fg[${k#fg-}]='[30m' 
+colors:106> fg_bold[${k#fg-}]='[01;30m' 
+colors:107> fg_no_bold[${k#fg-}]='[22;30m' 
+colors:104> k=fg-cyan
+colors:105> fg[${k#fg-}]='[36m' 
+colors:106> fg_bold[${k#fg-}]='[01;36m' 
+colors:107> fg_no_bold[${k#fg-}]='[22;36m' 
+colors:112> typeset -AHg bg bg_bold bg_no_bold
+colors:113> k=bg-red
+colors:114> bg[${k#bg-}]='[41m' 
+colors:115> bg_bold[${k#bg-}]='[01;41m' 
+colors:116> bg_no_bold[${k#bg-}]='[22;41m' 
+colors:113> k=bg-magenta
+colors:114> bg[${k#bg-}]='[45m' 
+colors:115> bg_bold[${k#bg-}]='[01;45m' 
+colors:116> bg_no_bold[${k#bg-}]='[22;45m' 
+colors:113> k=bg-white
+colors:114> bg[${k#bg-}]='[47m' 
+colors:115> bg_bold[${k#bg-}]='[01;47m' 
+colors:116> bg_no_bold[${k#bg-}]='[22;47m' 
+colors:113> k=bg-yellow
+colors:114> bg[${k#bg-}]='[43m' 
+colors:115> bg_bold[${k#bg-}]='[01;43m' 
+colors:116> bg_no_bold[${k#bg-}]='[22;43m' 
+colors:113> k=bg-blue
+colors:114> bg[${k#bg-}]='[44m' 
+colors:115> bg_bold[${k#bg-}]='[01;44m' 
+colors:116> bg_no_bold[${k#bg-}]='[22;44m' 
+colors:113> k=bg-grey
+colors:114> bg[${k#bg-}]='[40m' 
+colors:115> bg_bold[${k#bg-}]='[01;40m' 
+colors:116> bg_no_bold[${k#bg-}]='[22;40m' 
+colors:113> k=bg-cyan
+colors:114> bg[${k#bg-}]='[46m' 
+colors:115> bg_bold[${k#bg-}]='[01;46m' 
+colors:116> bg_no_bold[${k#bg-}]='[22;46m' 
+colors:113> k=bg-black
+colors:114> bg[${k#bg-}]='[40m' 
+colors:115> bg_bold[${k#bg-}]='[01;40m' 
+colors:116> bg_no_bold[${k#bg-}]='[22;40m' 
+colors:113> k=bg-green
+colors:114> bg[${k#bg-}]='[42m' 
+colors:115> bg_bold[${k#bg-}]='[01;42m' 
+colors:116> bg_no_bold[${k#bg-}]='[22;42m' 
+colors:113> k=bg-default
+colors:114> bg[${k#bg-}]='[49m' 
+colors:115> bg_bold[${k#bg-}]='[01;49m' 
+colors:116> bg_no_bold[${k#bg-}]='[22;49m' 
+/home/tomo/.zkit/lib/zkit_utils.sh:10> autoload -Uz expand_template
+/home/tomo/.zkit/lib/zkit_utils.sh:20> zkit_debug=false 
+/home/tomo/.zkit/zsh/startup.sh:15> autoload -Uz pathmunge
+/home/tomo/.zkit/zsh/startup.sh:16> autoload -Uz envpathmunge
+/home/tomo/.zkit/zsh/startup.sh:41> __zkit_load_rc /home/tomo/.zkit/rc.d/00-common.sh /home/tomo/.zkit/rc.d/03-environment.sh /home/tomo/.zkit/rc.d/21-svn.sh /home/tomo/.zkit/rc.d/30-python.sh /home/tomo/.zkit/rc.d/32-ruby.sh /home/tomo/.zkit/rc.d/33-java.sh /home/tomo/.zkit/rc.d/60-vagrant.sh /home/tomo/.zkit/rc.d/70-gpg-agent.sh /home/tomo/.zkit/rc.d/82-common-aliases.sh /home/tomo/.zkit/rc.d/90-private.sh /home/tomo/.zkit/rc.d/01-initialize.zsh /home/tomo/.zkit/rc.d/22-git.zsh /home/tomo/.zkit/rc.d/80-interactive.zsh /home/tomo/.zkit/rc.d/81-prompt.zsh /home/tomo/.zkit/rc.d/83-aliases.zsh /home/tomo/.zkit/rc.d/84-history.zsh /home/tomo/.zkit/rc.d/85-completion.zsh
+__zkit_load_rc:1> local __i
+__zkit_load_rc:2> __zkit_sort_rc /home/tomo/.zkit/rc.d/00-common.sh /home/tomo/.zkit/rc.d/03-environment.sh /home/tomo/.zkit/rc.d/21-svn.sh /home/tomo/.zkit/rc.d/30-python.sh /home/tomo/.zkit/rc.d/32-ruby.sh /home/tomo/.zkit/rc.d/33-java.sh /home/tomo/.zkit/rc.d/60-vagrant.sh /home/tomo/.zkit/rc.d/70-gpg-agent.sh /home/tomo/.zkit/rc.d/82-common-aliases.sh /home/tomo/.zkit/rc.d/90-private.sh /home/tomo/.zkit/rc.d/01-initialize.zsh /home/tomo/.zkit/rc.d/22-git.zsh /home/tomo/.zkit/rc.d/80-interactive.zsh /home/tomo/.zkit/rc.d/81-prompt.zsh /home/tomo/.zkit/rc.d/83-aliases.zsh /home/tomo/.zkit/rc.d/84-history.zsh /home/tomo/.zkit/rc.d/85-completion.zsh
+__zkit_sort_rc:1> emulate -L zsh
+__zkit_sort_rc:2> setopt NULL_GLOB
+__zkit_sort_rc:3> rc=/home/tomo/.zkit/rc.d/00-common.sh
+__zkit_sort_rc:4> basename /home/tomo/.zkit/rc.d/00-common.sh
+__zkit_sort_rc:4> echo 00-common.sh /home/tomo/.zkit/rc.d/00-common.sh
+__zkit_sort_rc:3> rc=/home/tomo/.zkit/rc.d/03-environment.sh
+__zkit_sort_rc:4> basename /home/tomo/.zkit/rc.d/03-environment.sh
+__zkit_sort_rc:5> sort
+__zkit_sort_rc:4> echo 03-environment.sh /home/tomo/.zkit/rc.d/03-environment.sh
+__zkit_sort_rc:3> rc=/home/tomo/.zkit/rc.d/21-svn.sh
+__zkit_sort_rc:4> basename /home/tomo/.zkit/rc.d/21-svn.sh
+__zkit_sort_rc:4> echo 21-svn.sh /home/tomo/.zkit/rc.d/21-svn.sh
+__zkit_sort_rc:3> rc=/home/tomo/.zkit/rc.d/30-python.sh
+__zkit_sort_rc:4> basename /home/tomo/.zkit/rc.d/30-python.sh
+__zkit_sort_rc:4> echo 30-python.sh /home/tomo/.zkit/rc.d/30-python.sh
+__zkit_sort_rc:3> rc=/home/tomo/.zkit/rc.d/32-ruby.sh
+__zkit_sort_rc:5> cut '-d ' -f2
+__zkit_sort_rc:4> basename /home/tomo/.zkit/rc.d/32-ruby.sh
+__zkit_sort_rc:4> echo 32-ruby.sh /home/tomo/.zkit/rc.d/32-ruby.sh
+__zkit_sort_rc:3> rc=/home/tomo/.zkit/rc.d/33-java.sh
+__zkit_sort_rc:4> basename /home/tomo/.zkit/rc.d/33-java.sh
+__zkit_sort_rc:4> echo 33-java.sh /home/tomo/.zkit/rc.d/33-java.sh
+__zkit_sort_rc:3> rc=/home/tomo/.zkit/rc.d/60-vagrant.sh
+__zkit_sort_rc:4> basename /home/tomo/.zkit/rc.d/60-vagrant.sh
+__zkit_sort_rc:4> echo 60-vagrant.sh /home/tomo/.zkit/rc.d/60-vagrant.sh
+__zkit_sort_rc:3> rc=/home/tomo/.zkit/rc.d/70-gpg-agent.sh
+__zkit_sort_rc:4> basename /home/tomo/.zkit/rc.d/70-gpg-agent.sh
+__zkit_sort_rc:4> echo 70-gpg-agent.sh /home/tomo/.zkit/rc.d/70-gpg-agent.sh
+__zkit_sort_rc:3> rc=/home/tomo/.zkit/rc.d/82-common-aliases.sh
+__zkit_sort_rc:4> basename /home/tomo/.zkit/rc.d/82-common-aliases.sh
+__zkit_sort_rc:4> echo 82-common-aliases.sh /home/tomo/.zkit/rc.d/82-common-aliases.sh
+__zkit_sort_rc:3> rc=/home/tomo/.zkit/rc.d/90-private.sh
+__zkit_sort_rc:4> basename /home/tomo/.zkit/rc.d/90-private.sh
+__zkit_sort_rc:4> echo 90-private.sh /home/tomo/.zkit/rc.d/90-private.sh
+__zkit_sort_rc:3> rc=/home/tomo/.zkit/rc.d/01-initialize.zsh
+__zkit_sort_rc:4> basename /home/tomo/.zkit/rc.d/01-initialize.zsh
+__zkit_sort_rc:4> echo 01-initialize.zsh /home/tomo/.zkit/rc.d/01-initialize.zsh
+__zkit_sort_rc:3> rc=/home/tomo/.zkit/rc.d/22-git.zsh
+__zkit_sort_rc:4> basename /home/tomo/.zkit/rc.d/22-git.zsh
+__zkit_sort_rc:4> echo 22-git.zsh /home/tomo/.zkit/rc.d/22-git.zsh
+__zkit_sort_rc:3> rc=/home/tomo/.zkit/rc.d/80-interactive.zsh
+__zkit_sort_rc:4> basename /home/tomo/.zkit/rc.d/80-interactive.zsh
+__zkit_sort_rc:4> echo 80-interactive.zsh /home/tomo/.zkit/rc.d/80-interactive.zsh
+__zkit_sort_rc:3> rc=/home/tomo/.zkit/rc.d/81-prompt.zsh
+__zkit_sort_rc:4> basename /home/tomo/.zkit/rc.d/81-prompt.zsh
+__zkit_sort_rc:4> echo 81-prompt.zsh /home/tomo/.zkit/rc.d/81-prompt.zsh
+__zkit_sort_rc:3> rc=/home/tomo/.zkit/rc.d/83-aliases.zsh
+__zkit_sort_rc:4> basename /home/tomo/.zkit/rc.d/83-aliases.zsh
+__zkit_sort_rc:4> echo 83-aliases.zsh /home/tomo/.zkit/rc.d/83-aliases.zsh
+__zkit_sort_rc:3> rc=/home/tomo/.zkit/rc.d/84-history.zsh
+__zkit_sort_rc:4> basename /home/tomo/.zkit/rc.d/84-history.zsh
+__zkit_sort_rc:4> echo 84-history.zsh /home/tomo/.zkit/rc.d/84-history.zsh
+__zkit_sort_rc:3> rc=/home/tomo/.zkit/rc.d/85-completion.zsh
+__zkit_sort_rc:4> basename /home/tomo/.zkit/rc.d/85-completion.zsh
+__zkit_sort_rc:4> echo 85-completion.zsh /home/tomo/.zkit/rc.d/85-completion.zsh
+__zkit_load_rc:2> __i=/home/tomo/.zkit/rc.d/00-common.sh
+__zkit_load_rc:3> [[ -r /home/tomo/.zkit/rc.d/00-common.sh ]]
+__zkit_load_rc:5> __zkit_msg load: /home/tomo/.zkit/rc.d/00-common.sh
+__zkit_msg:1> false
+__zkit_load_rc:6> [[ -n '[%n@%m]%~%# ' ]]
+__zkit_load_rc:7> source /home/tomo/.zkit/rc.d/00-common.sh
+/home/tomo/.zkit/rc.d/00-common.sh:3> csi='[' 
+/home/tomo/.zkit/rc.d/00-common.sh:4> nl='
' 
+__zkit_load_rc:2> __i=/home/tomo/.zkit/rc.d/01-initialize.zsh
+__zkit_load_rc:3> [[ -r /home/tomo/.zkit/rc.d/01-initialize.zsh ]]
+__zkit_load_rc:5> __zkit_msg load: /home/tomo/.zkit/rc.d/01-initialize.zsh
+__zkit_msg:1> false
+__zkit_load_rc:6> [[ -n '[%n@%m]%~%# ' ]]
+__zkit_load_rc:7> source /home/tomo/.zkit/rc.d/01-initialize.zsh
+/home/tomo/.zkit/rc.d/01-initialize.zsh:7> [[ -o login ]]
+/home/tomo/.zkit/rc.d/01-initialize.zsh:10> zkit_login_shell=false 
+/home/tomo/.zkit/rc.d/01-initialize.zsh:13> zstyle ':zkit:*' rprompt off
+/home/tomo/.zkit/rc.d/01-initialize.zsh:14> zstyle ':zkit:*' compinit_secure off
+/home/tomo/.zkit/rc.d/01-initialize.zsh:15> zstyle ':zkit:*' vcs_info on
+/home/tomo/.zkit/rc.d/01-initialize.zsh:17> TMPPREFIX=/home/tomo/.zkit/var/tmp/zsh 
+/home/tomo/.zkit/rc.d/01-initialize.zsh:23> setopt extended_glob
+/home/tomo/.zkit/rc.d/01-initialize.zsh:25> setopt null_glob
+/home/tomo/.zkit/rc.d/01-initialize.zsh:28> setopt No_check_jobs
+/home/tomo/.zkit/rc.d/01-initialize.zsh:29> setopt No_hup
+/home/tomo/.zkit/rc.d/01-initialize.zsh:30> setopt notify
+/home/tomo/.zkit/rc.d/01-initialize.zsh:31> setopt ignore_eof
+/home/tomo/.zkit/rc.d/01-initialize.zsh:33> setopt short_loops
+/home/tomo/.zkit/rc.d/01-initialize.zsh:36> setopt auto_cd
+/home/tomo/.zkit/rc.d/01-initialize.zsh:41> autoload -Uz add-zsh-hook
+/home/tomo/.zkit/rc.d/01-initialize.zsh:47> [[ -f /etc/redhat-release ]]
+/home/tomo/.zkit/rc.d/01-initialize.zsh:48> cat /etc/redhat-release
+/home/tomo/.zkit/rc.d/01-initialize.zsh:48> case Fedora release 18 (Spherical Cow) (Fedora release 18 \*)
+/home/tomo/.zkit/rc.d/01-initialize.zsh:48> case Fedora release 18 (Spherical Cow) (*)
+/home/tomo/.zkit/rc.d/01-initialize.zsh:53> path=( /usr/sbin /usr/bin /sbin /bin ) 
+/home/tomo/.zkit/rc.d/01-initialize.zsh:63> __zkit_path=( /home/tomo/.zkit_private/bin /home/tomo/.zkit/bin ) 
+/home/tomo/.zkit/rc.d/01-initialize.zsh:68> path=( /home/tomo/.zkit_private/bin /home/tomo/.zkit/bin /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin ) 
+/home/tomo/.zkit/rc.d/01-initialize.zsh:75> cdpath=( /home/tomo /home/tomo/Projects ) 
+__zkit_load_rc:2> __i=/home/tomo/.zkit/rc.d/03-environment.sh
+__zkit_load_rc:3> [[ -r /home/tomo/.zkit/rc.d/03-environment.sh ]]
+__zkit_load_rc:5> __zkit_msg load: /home/tomo/.zkit/rc.d/03-environment.sh
+__zkit_msg:1> false
+__zkit_load_rc:6> [[ -n '[%n@%m]%~%# ' ]]
+__zkit_load_rc:7> source /home/tomo/.zkit/rc.d/03-environment.sh
+/home/tomo/.zkit/rc.d/03-environment.sh:6> [[ xterm-256color == xterm* ]]
+/home/tomo/.zkit/rc.d/03-environment.sh:7> export 'TERM=xterm-256color'
+/home/tomo/.zkit/rc.d/03-environment.sh:11> [[ -x /usr/libexec/openssh/gnome-ssh-askpass ]]
+/home/tomo/.zkit/rc.d/03-environment.sh:12> SSH_ASKPASS=/usr/libexec/openssh/gnome-ssh-askpass 
+/home/tomo/.zkit/rc.d/03-environment.sh:13> export SSH_ASKPASS
+/home/tomo/.zkit/rc.d/03-environment.sh:16> uname -s
+/home/tomo/.zkit/rc.d/03-environment.sh:16> case Linux (Linux)
+/home/tomo/.zkit/rc.d/03-environment.sh:18> type -p dircolors
+/home/tomo/.zkit/rc.d/03-environment.sh:19> dircolors --sh
+/home/tomo/.zkit/rc.d/03-environment.sh:19> eval 'LS_COLORS='\''rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.lz=01;31:*.xz=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.axv=01;35:*.anx=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.axa=00;36:*.oga=00;36:*.spx=00;36:*.xspf=00;36:'\'';' export LS_COLORS
+(eval):1> LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.lz=01;31:*.xz=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.axv=01;35:*.anx=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.axa=00;36:*.oga=00;36:*.spx=00;36:*.xspf=00;36:' 
+(eval):1> export LS_COLORS
+/home/tomo/.zkit/rc.d/03-environment.sh:56> export 'VISUAL=/home/tomo/.zkit/bin/zkit_emacs'
+/home/tomo/.zkit/rc.d/03-environment.sh:57> export 'EDITOR=/home/tomo/.zkit/bin/zkit_emacs'
+__zkit_load_rc:2> __i=/home/tomo/.zkit/rc.d/21-svn.sh
+__zkit_load_rc:3> [[ -r /home/tomo/.zkit/rc.d/21-svn.sh ]]
+__zkit_load_rc:5> __zkit_msg load: /home/tomo/.zkit/rc.d/21-svn.sh
+__zkit_msg:1> false
+__zkit_load_rc:6> [[ -n '[%n@%m]%~%# ' ]]
+__zkit_load_rc:7> source /home/tomo/.zkit/rc.d/21-svn.sh
+/home/tomo/.zkit/rc.d/21-svn.sh:2> _svn=+/home/tomo/.zkit/rc.d/21-svn.sh:2> __zkit_whence svn
+__zkit_whence:1> [[ -n 5.0.0 ]]
+__zkit_whence:2> whence svn
+/home/tomo/.zkit/rc.d/21-svn.sh:2> _svn=/usr/bin/svn 
+/home/tomo/.zkit/rc.d/21-svn.sh:3> _ssh=+/home/tomo/.zkit/rc.d/21-svn.sh:3> __zkit_whence ssh
+__zkit_whence:1> [[ -n 5.0.0 ]]
+__zkit_whence:2> whence ssh
+/home/tomo/.zkit/rc.d/21-svn.sh:3> _ssh=/usr/bin/ssh 
+/home/tomo/.zkit/rc.d/21-svn.sh:4> [[ -n /usr/bin/svn && -n /usr/bin/ssh ]]
+/home/tomo/.zkit/rc.d/21-svn.sh:5> export 'SVN_SSH=/usr/bin/ssh'
+/home/tomo/.zkit/rc.d/21-svn.sh:7> unset _svn _ssh
+__zkit_load_rc:2> __i=/home/tomo/.zkit/rc.d/22-git.zsh
+__zkit_load_rc:3> [[ -r /home/tomo/.zkit/rc.d/22-git.zsh ]]
+__zkit_load_rc:5> __zkit_msg load: /home/tomo/.zkit/rc.d/22-git.zsh
+__zkit_msg:1> false
+__zkit_load_rc:6> [[ -n '[%n@%m]%~%# ' ]]
+__zkit_load_rc:7> source /home/tomo/.zkit/rc.d/22-git.zsh
+/home/tomo/.zkit/rc.d/22-git.zsh:6> [[ -n '[%n@%m]%~%# ' ]]
+/home/tomo/.zkit/rc.d/22-git.zsh:9> zstyle -t :zkit: vcs_info
+/home/tomo/.zkit/rc.d/22-git.zsh:21> autoload -Uz vcs_info
+/home/tomo/.zkit/rc.d/22-git.zsh:23> zstyle ':vcs_info:*' enable git
+/home/tomo/.zkit/rc.d/22-git.zsh:24> zstyle ':vcs_info:git:*' check-for-changes true
+/home/tomo/.zkit/rc.d/22-git.zsh:25> zstyle ':vcs_info:git:*' formats %b%u%c
+/home/tomo/.zkit/rc.d/22-git.zsh:26> zstyle ':vcs_info:git:*' actionformats '%b%u%c<%a>'
+/home/tomo/.zkit/rc.d/22-git.zsh:27> zstyle ':vcs_info:git:*' stagedstr +
+/home/tomo/.zkit/rc.d/22-git.zsh:28> zstyle ':vcs_info:git:*' unstagedstr '*'
+/home/tomo/.zkit/rc.d/22-git.zsh:59> GIT_PROMPT='%{[48;5;224m%}$(__vcs_info "(%s)")%{[m%}' 
+__zkit_load_rc:2> __i=/home/tomo/.zkit/rc.d/30-python.sh
+__zkit_load_rc:3> [[ -r /home/tomo/.zkit/rc.d/30-python.sh ]]
+__zkit_load_rc:5> __zkit_msg load: /home/tomo/.zkit/rc.d/30-python.sh
+__zkit_msg:1> false
+__zkit_load_rc:6> [[ -n '[%n@%m]%~%# ' ]]
+__zkit_load_rc:7> source /home/tomo/.zkit/rc.d/30-python.sh
+/home/tomo/.zkit/rc.d/30-python.sh:5> python=+/home/tomo/.zkit/rc.d/30-python.sh:5> __zkit_whence python
+__zkit_whence:1> [[ -n 5.0.0 ]]
+__zkit_whence:2> whence python
+/home/tomo/.zkit/rc.d/30-python.sh:5> python=/usr/bin/python 
+/home/tomo/.zkit/rc.d/30-python.sh:6> [[ -n /usr/bin/python ]]
+/home/tomo/.zkit/rc.d/30-python.sh:10> _pver=+/home/tomo/.zkit/rc.d/30-python.sh:10> python -c 'from sys import version_info as v; print '\''%d.%d'\'' % (v.major, v.minor)'
+/home/tomo/.zkit/rc.d/30-python.sh:10> _pver=2.7 
+/home/tomo/.zkit/rc.d/30-python.sh:13> _pbin=/home/tomo/.local/lib/python2.7/bin 
+/home/tomo/.zkit/rc.d/30-python.sh:15> [[ -d /home/tomo/.local/lib/python2.7/bin ]]
+/home/tomo/.zkit/rc.d/30-python.sh:27> VIRTUAL_ENV_DISABLE_PROMPT=yes 
+/home/tomo/.zkit/rc.d/30-python.sh:29> _vw=+/home/tomo/.zkit/rc.d/30-python.sh:29> __zkit_whence virtualenvwrapper.sh
+__zkit_whence:1> [[ -n 5.0.0 ]]
+__zkit_whence:2> whence virtualenvwrapper.sh
+/home/tomo/.zkit/rc.d/30-python.sh:29> _vw='' 
+/home/tomo/.zkit/rc.d/30-python.sh:30> [[ -n '' ]]
+/home/tomo/.zkit/rc.d/30-python.sh:44> unset python _pver _pbin _vw
+__zkit_load_rc:2> __i=/home/tomo/.zkit/rc.d/32-ruby.sh
+__zkit_load_rc:3> [[ -r /home/tomo/.zkit/rc.d/32-ruby.sh ]]
+__zkit_load_rc:5> __zkit_msg load: /home/tomo/.zkit/rc.d/32-ruby.sh
+__zkit_msg:1> false
+__zkit_load_rc:6> [[ -n '[%n@%m]%~%# ' ]]
+__zkit_load_rc:7> source /home/tomo/.zkit/rc.d/32-ruby.sh
+/home/tomo/.zkit/rc.d/32-ruby.sh:15> [[ -r /home/tomo/.rvm/scripts/rvm ]]
+/home/tomo/.zkit/rc.d/32-ruby.sh:16> export 'rvm_path=/home/tomo/.rvm'
+/home/tomo/.zkit/rc.d/32-ruby.sh:17> _bash_env='' 
+/home/tomo/.zkit/rc.d/32-ruby.sh:18> unset BASH_ENV
+/home/tomo/.zkit/rc.d/32-ruby.sh:19> source /home/tomo/.rvm/scripts/rvm
+/home/tomo/.rvm/scripts/rvm:21> __rvm_has_opt posix
+__rvm_has_opt:3> [[ -n 5.0.0 ]]
+__rvm_has_opt:3> setopt
+__rvm_has_opt:3> grep '--color=auto' '^posix$'
+__rvm_has_opt:6> [[ -n '' ]]
+__rvm_has_opt:8> return 1
+/home/tomo/.rvm/scripts/rvm:26> export HOME rvm_prefix rvm_user_install_flag rvm_path
+/home/tomo/.rvm/scripts/rvm:27> HOME=/home/tomo 
+/home/tomo/.rvm/scripts/rvm:29> [[ -n '' ]]
+/home/tomo/.rvm/scripts/rvm:29> umask
+/home/tomo/.rvm/scripts/rvm:29> export 'rvm_stored_umask=077'
+/home/tomo/.rvm/scripts/rvm:30> ((  0 == 0  ))
+/home/tomo/.rvm/scripts/rvm:32> rvm_rvmrc_files=( /etc/rvmrc /home/tomo/.rvmrc ) 
+/home/tomo/.rvm/scripts/rvm:33> [[ -n /home/tomo ]]
+/home/tomo/.rvm/scripts/rvm:33> [[ /home/tomo/.rvmrc -ef /home/tomo/.rvmrc ]]
+/home/tomo/.rvm/scripts/rvm:37> rvmrc=/etc/rvmrc
+/home/tomo/.rvm/scripts/rvm:39> [[ -f /etc/rvmrc ]]
+/home/tomo/.rvm/scripts/rvm:41> GREP_OPTIONS='' grep '^\s*rvm .*$' /etc/rvmrc
+/home/tomo/.rvm/scripts/rvm:50> source /etc/rvmrc
+/etc/rvmrc:1> umask 'u=rwx,g=rwx,o=rx'
+/home/tomo/.rvm/scripts/rvm:37> rvmrc=/home/tomo/.rvmrc
+/home/tomo/.rvm/scripts/rvm:39> [[ -f /home/tomo/.rvmrc ]]
+/home/tomo/.rvm/scripts/rvm:41> GREP_OPTIONS='' grep '^\s*rvm .*$' /home/tomo/.rvmrc
+/home/tomo/.rvm/scripts/rvm:50> source /home/tomo/.rvmrc
+/home/tomo/.rvmrc:2> rvm_ignore_dotfiles_flag=1 
+/home/tomo/.rvmrc:3> rvm_auto_reload_flag=1 
+/home/tomo/.rvm/scripts/rvm:54> unset rvm_rvmrc_files
+/home/tomo/.rvm/scripts/rvm:58> [[ -z /home/tomo/.rvm ]]
+/home/tomo/.rvm/scripts/rvm:86> rvm_path=/home/tomo/.rvm 
+/home/tomo/.rvm/scripts/rvm:90> [[ -z /home/tomo ]]
+/home/tomo/.rvm/scripts/rvm:96> [[ -z '' ]]
+/home/tomo/.rvm/scripts/rvm:98> [[ /home/tomo == /home/tomo ]]
+/home/tomo/.rvm/scripts/rvm:100> rvm_user_install_flag=1 
+/home/tomo/.rvm/scripts/rvm:106> export rvm_loaded_flag
+/home/tomo/.rvm/scripts/rvm:107> [[ -n '' || -n 5.0.0 ]]
+/home/tomo/.rvm/scripts/rvm:108> typeset -f rvm
+/home/tomo/.rvm/scripts/rvm:112> rvm_loaded_flag=0 
+/home/tomo/.rvm/scripts/rvm:115> ((  0 == 0  ))
+/home/tomo/.rvm/scripts/rvm:117> [[ -n /home/tomo/.rvm && -d /home/tomo/.rvm ]]
+/home/tomo/.rvm/scripts/rvm:119> true /home/tomo/.rvm/scripts
+/home/tomo/.rvm/scripts/rvm:121> [[ -f /home/tomo/.rvm/scripts/base ]]
+/home/tomo/.rvm/scripts/rvm:123> source /home/tomo/.rvm/scripts/base
+/home/tomo/.rvm/scripts/base:17> __rvm_has_opt errexit
+__rvm_has_opt:3> [[ -n 5.0.0 ]]
+__rvm_has_opt:3> setopt
+__rvm_has_opt:3> grep '--color=auto' '^errexit$'
+__rvm_has_opt:6> [[ -n '' ]]
+__rvm_has_opt:8> return 1
+/home/tomo/.rvm/scripts/base:21> set +e
+/home/tomo/.rvm/scripts/base:23> : rvm_trace_flag:0
+/home/tomo/.rvm/scripts/base:24> ((  rvm_trace_flag > 0  ))
+/home/tomo/.rvm/scripts/base:38> export __array_start rvm_path
+/home/tomo/.rvm/scripts/base:43> [[ -n 5.0.0 ]]
+/home/tomo/.rvm/scripts/base:45> __array_start=1 
+/home/tomo/.rvm/scripts/base:50> ((  0 == 0  ))
+/home/tomo/.rvm/scripts/base:52> [[ -n 077 ]]
+/home/tomo/.rvm/scripts/base:53> rvm_rvmrc_files=( /etc/rvmrc /home/tomo/.rvmrc ) 
+/home/tomo/.rvm/scripts/base:54> [[ -n /home/tomo ]]
+/home/tomo/.rvm/scripts/base:54> [[ /home/tomo/.rvmrc -ef /home/tomo/.rvmrc ]]
+/home/tomo/.rvm/scripts/base:58> rvmrc=/etc/rvmrc
+/home/tomo/.rvm/scripts/base:60> [[ -f /etc/rvmrc ]]
+/home/tomo/.rvm/scripts/base:62> GREP_OPTIONS='' grep '^\s*rvm .*$' /etc/rvmrc
+/home/tomo/.rvm/scripts/base:71> source /etc/rvmrc
+/etc/rvmrc:1> umask 'u=rwx,g=rwx,o=rx'
+/home/tomo/.rvm/scripts/base:58> rvmrc=/home/tomo/.rvmrc
+/home/tomo/.rvm/scripts/base:60> [[ -f /home/tomo/.rvmrc ]]
+/home/tomo/.rvm/scripts/base:62> GREP_OPTIONS='' grep '^\s*rvm .*$' /home/tomo/.rvmrc
+/home/tomo/.rvm/scripts/base:71> source /home/tomo/.rvmrc
+/home/tomo/.rvmrc:2> rvm_ignore_dotfiles_flag=1 
+/home/tomo/.rvmrc:3> rvm_auto_reload_flag=1 
+/home/tomo/.rvm/scripts/base:75> unset rvm_rvmrc_files
+/home/tomo/.rvm/scripts/base:78> export rvm_path
+/home/tomo/.rvm/scripts/base:79> [[ -z /home/tomo/.rvm ]]
+/home/tomo/.rvm/scripts/base:91> true /home/tomo/.rvm/scripts
+/home/tomo/.rvm/scripts/base:94> source /home/tomo/.rvm/scripts/initialize
+/home/tomo/.rvm/scripts/initialize:3> : rvm_trace_flag:0
+/home/tomo/.rvm/scripts/initialize:4> ((  rvm_trace_flag > 0  ))
+/home/tomo/.rvm/scripts/initialize:20> [[ -n '' ]]
+/home/tomo/.rvm/scripts/initialize:23> [[ -n 5.0.0 ]]
+/home/tomo/.rvm/scripts/initialize:25> setopt extendedglob
+/home/tomo/.rvm/scripts/initialize:26> setopt kshglob
+/home/tomo/.rvm/scripts/initialize:27> setopt no_glob_subst
+/home/tomo/.rvm/scripts/initialize:32> export __rvm_env_loaded
+/home/tomo/.rvm/scripts/initialize:34> : __rvm_env_loaded:0:
+/home/tomo/.rvm/scripts/initialize:36> : __rvm_env_loaded:1:
+/home/tomo/.rvm/scripts/initialize:39> [[ -z '' ]]
+/home/tomo/.rvm/scripts/initialize:42> typeset -f __rvm_cleanse_variables
+/home/tomo/.rvm/scripts/initialize:48> ((  0 == 0  ))
+/home/tomo/.rvm/scripts/initialize:50> [[ -n 077 ]]
+/home/tomo/.rvm/scripts/initialize:52> rvm_rvmrc_files=( /etc/rvmrc /home/tomo/.rvmrc ) 
+/home/tomo/.rvm/scripts/initialize:53> [[ -n /home/tomo ]]
+/home/tomo/.rvm/scripts/initialize:53> [[ /home/tomo/.rvmrc -ef /home/tomo/.rvmrc ]]
+/home/tomo/.rvm/scripts/initialize:56> rvmrc=/etc/rvmrc
+/home/tomo/.rvm/scripts/initialize:58> [[ -f /etc/rvmrc ]]
+/home/tomo/.rvm/scripts/initialize:60> GREP_OPTIONS='' grep '^\s*rvm .*$' /etc/rvmrc
+/home/tomo/.rvm/scripts/initialize:69> source /etc/rvmrc
+/etc/rvmrc:1> umask 'u=rwx,g=rwx,o=rx'
+/home/tomo/.rvm/scripts/initialize:56> rvmrc=/home/tomo/.rvmrc
+/home/tomo/.rvm/scripts/initialize:58> [[ -f /home/tomo/.rvmrc ]]
+/home/tomo/.rvm/scripts/initialize:60> GREP_OPTIONS='' grep '^\s*rvm .*$' /home/tomo/.rvmrc
+/home/tomo/.rvm/scripts/initialize:69> source /home/tomo/.rvmrc
+/home/tomo/.rvmrc:2> rvm_ignore_dotfiles_flag=1 
+/home/tomo/.rvmrc:3> rvm_auto_reload_flag=1 
+/home/tomo/.rvm/scripts/initialize:73> unset rvm_rvmrc_files
+/home/tomo/.rvm/scripts/initialize:76> export rvm_path
+/home/tomo/.rvm/scripts/initialize:77> [[ -z /home/tomo/.rvm ]]
+/home/tomo/.rvm/scripts/initialize:92> [[ -z '' ]]
+/home/tomo/.rvm/scripts/initialize:94> gemrc=/etc/gemrc
+/home/tomo/.rvm/scripts/initialize:96> [[ -r /etc/gemrc ]]
+/home/tomo/.rvm/scripts/initialize:94> gemrc=/home/tomo/.gemrc
+/home/tomo/.rvm/scripts/initialize:96> [[ -r /home/tomo/.gemrc ]]
+/home/tomo/.rvm/scripts/initialize:118> true /home/tomo/.rvm/scripts
+/home/tomo/.rvm/scripts/initialize:125> ((  1 == 0  ))
+/home/tomo/.rvm/scripts/initialize:139> : rvm_bin_path:/home/tomo/.rvm/bin rvm_man_path:/home/tomo/.rvm/man rvm_archives_path:/home/tomo/.rvm/archives rvm_docs_path:/home/tomo/.rvm/docs rvm_environments_path:/home/tomo/.rvm/environments rvm_examples_path:/home/tomo/.rvm/examples rvm_gems_path:/home/tomo/.rvm/gems rvm_gemsets_path:/home/tomo/.rvm/gemsets rvm_help_path:/home/tomo/.rvm/help rvm_hooks_path:/home/tomo/.rvm/hooks rvm_lib_path:/home/tomo/.rvm/lib rvm_log_path:/home/tomo/.rvm/log rvm_patches_path:/home/tomo/.rvm/patches rvm_repos_path:/home/tomo/.rvm/repos rvm_rubies_path:/home/tomo/.rvm/rubies rvm_externals_path:/home/tomo/.rvm/externals rvm_rubygems_path:/home/tomo/.rvm/rubygems rvm_src_path:/home/tomo/.rvm/src rvm_tmp_path:/home/tomo/.rvm/tmp rvm_user_path:/home/tomo/.rvm/user rvm_usr_path:/home/tomo/.rvm/usr rvm_wrappers_path:/home/tomo/.rvm/wrappers rvm_verbose_flag:0 rvm_debug_flag:0 rvm_gems_cache_path:/home/tomo/.rvm/gems/cache
+/home/tomo/.rvm/scripts/initialize:166> export -a rvm_configure_flags rvm_patch_names rvm_ree_options rvm_make_flags
+/home/tomo/.rvm/scripts/initialize:167> export rvm_action rvm_alias_expanded rvm_archive_extension rvm_archives_path rvm_bin_flag rvm_bin_path rvm_debug_flag rvm_default_flag rvm_delete_flag rvm_docs_path rvm_docs_type rvm_dump_environment_flag rvm_environments_path rvm_error_message rvm_examples_path rvm_expanding_aliases rvm_file_name rvm_gemdir_flag rvm_gems_cache_path rvm_gems_path rvm_gemset_name rvm_gemset_separator rvm_gemsets_path rvm_gemstone_package_file rvm_gemstone_url rvm_head_flag rvm_help_path rvm_hook rvm_hooks_path rvm_install_on_use_flag rvm_lib_path rvm_llvm_flag rvm_loaded_flag rvm_log_path rvm_niceness rvm_nightly_flag rvm_only_path_flag rvm_parse_break rvm_patch_original_pwd rvm_patches_path rvm_path rvm_pretty_print_flag rvm_proxy rvm_quiet_flag rvm_reload_flag rvm_remove_flag rvm_repos_path rvm_rubies_path rvm_ruby_alias rvm_ruby_args rvm_ruby_binary rvm_ruby_bits rvm_ruby_configure rvm_ruby_file rvm_ruby_gem_home rvm_ruby_gem_path rvm_ruby_global_gems_path rvm_ruby_home rvm_ruby_interpreter rvm_ruby_irbrc rvm_ruby_major_version rvm_ruby_make rvm_ruby_make_install rvm_ruby_minor_version rvm_ruby_mode rvm_ruby_name rvm_ruby_package_file rvm_ruby_package_name rvm_ruby_patch rvm_ruby_patch_level rvm_ruby_release_version rvm_ruby_repo_url rvm_ruby_revision rvm_ruby_selected_flag rvm_ruby_sha rvm_ruby_string rvm_ruby_strings rvm_ruby_tag rvm_ruby_url rvm_ruby_user_tag rvm_ruby_version rvm_script_name rvm_scripts_path rvm_sdk rvm_user_install_flag rvm_silent_flag rvm_src_path rvm_sticky_flag rvm_system_flag rvm_tmp_path rvm_token rvm_trace_flag rvm_use_flag rvm_user_flag rvm_user_path rvm_usr_path rvm_verbose_flag rvm_wrapper_name rvm_wrappers_path rvm_ruby_repo_branch rvm_man_path rvm_architectures rvm_remote_flag
+/home/tomo/.rvm/scripts/base:98> case    (*[[:space:]]selector[[:space:]]*)
+/home/tomo/.rvm/scripts/base:98> case    (*)
+/home/tomo/.rvm/scripts/base:103> source /home/tomo/.rvm/scripts/selector
+/home/tomo/.rvm/scripts/base:104> source /home/tomo/.rvm/scripts/selector_gemsets
+/home/tomo/.rvm/scripts/base:108> typeset -a scripts
+/home/tomo/.rvm/scripts/base:109> scripts=( logging support utility init cleanup env rvmrc install environment gemset db bundler checksum ) 
+/home/tomo/.rvm/scripts/base:112> entry=logging
+/home/tomo/.rvm/scripts/base:113> source /home/tomo/.rvm/scripts/functions/logging
+/home/tomo/.rvm/scripts/functions/logging:40> case xterm-256color (dumb|unknown)
+/home/tomo/.rvm/scripts/functions/logging:40> case xterm-256color (*)
+/home/tomo/.rvm/scripts/functions/logging:49> rvm_error_clr=+/home/tomo/.rvm/scripts/functions/logging:49> /home/tomo/.rvm/scripts/color red
+/home/tomo/.rvm/scripts/functions/logging:49> rvm_error_clr='[31m' 
+/home/tomo/.rvm/scripts/functions/logging:50> rvm_warn_clr=+/home/tomo/.rvm/scripts/functions/logging:50> /home/tomo/.rvm/scripts/color yellow
+/home/tomo/.rvm/scripts/functions/logging:50> rvm_warn_clr='[33m' 
+/home/tomo/.rvm/scripts/functions/logging:51> rvm_debug_clr=+/home/tomo/.rvm/scripts/functions/logging:51> /home/tomo/.rvm/scripts/color magenta
+/home/tomo/.rvm/scripts/functions/logging:51> rvm_debug_clr='[35m' 
+/home/tomo/.rvm/scripts/functions/logging:52> rvm_notify_clr=+/home/tomo/.rvm/scripts/functions/logging:52> /home/tomo/.rvm/scripts/color green
+/home/tomo/.rvm/scripts/functions/logging:52> rvm_notify_clr='[32m' 
+/home/tomo/.rvm/scripts/functions/logging:53> rvm_reset_clr=+/home/tomo/.rvm/scripts/functions/logging:53> /home/tomo/.rvm/scripts/color reset
+/home/tomo/.rvm/scripts/functions/logging:53> rvm_reset_clr='(B[m' 
+/home/tomo/.rvm/scripts/base:112> entry=support
+/home/tomo/.rvm/scripts/base:113> source /home/tomo/.rvm/scripts/functions/support
+/home/tomo/.rvm/scripts/functions/support:3> [[ -z '' ]]
+/home/tomo/.rvm/scripts/functions/support:6> command -v gtar
+/home/tomo/.rvm/scripts/functions/support:7> rvm_tar_command=gtar 
+/home/tomo/.rvm/scripts/functions/support:12> [[ ! " ${rvm_tar_options:-} " -regex-match " --no-same-owner " ]]
+/home/tomo/.rvm/scripts/functions/support:13> gtar --help
+/home/tomo/.rvm/scripts/functions/support:13> GREP_OPTIONS='' grep -- --no-same-owner
+/home/tomo/.rvm/scripts/functions/support:15> rvm_tar_options=' --no-same-owner' 
+/home/tomo/.rvm/scripts/functions/support:16> rvm_tar_options=--no-same-owner 
+/home/tomo/.rvm/scripts/functions/support:22> [[ -n 5.0.0 ]]
+/home/tomo/.rvm/scripts/base:112> entry=utility
+/home/tomo/.rvm/scripts/base:113> source /home/tomo/.rvm/scripts/functions/utility
+/home/tomo/.rvm/scripts/base:112> entry=init
+/home/tomo/.rvm/scripts/base:113> source /home/tomo/.rvm/scripts/functions/init
+/home/tomo/.rvm/scripts/base:112> entry=cleanup
+/home/tomo/.rvm/scripts/base:113> source /home/tomo/.rvm/scripts/functions/cleanup
+/home/tomo/.rvm/scripts/base:112> entry=env
+/home/tomo/.rvm/scripts/base:113> source /home/tomo/.rvm/scripts/functions/env
+/home/tomo/.rvm/scripts/base:112> entry=rvmrc
+/home/tomo/.rvm/scripts/base:113> source /home/tomo/.rvm/scripts/functions/rvmrc
+/home/tomo/.rvm/scripts/functions/rvmrc:3> export escape_flag _first _second
+/home/tomo/.rvm/scripts/functions/rvmrc:4> escape_flag=1 
+/home/tomo/.rvm/scripts/functions/rvmrc:5> _first=1 
+/home/tomo/.rvm/scripts/functions/rvmrc:6> _second=2 
+/home/tomo/.rvm/scripts/base:112> entry=install
+/home/tomo/.rvm/scripts/base:113> source /home/tomo/.rvm/scripts/functions/install
+/home/tomo/.rvm/scripts/base:112> entry=environment
+/home/tomo/.rvm/scripts/base:113> source /home/tomo/.rvm/scripts/functions/environment
+/home/tomo/.rvm/scripts/base:112> entry=gemset
+/home/tomo/.rvm/scripts/base:113> source /home/tomo/.rvm/scripts/functions/gemset
+/home/tomo/.rvm/scripts/base:112> entry=db
+/home/tomo/.rvm/scripts/base:113> source /home/tomo/.rvm/scripts/functions/db
+/home/tomo/.rvm/scripts/base:112> entry=bundler
+/home/tomo/.rvm/scripts/base:113> source /home/tomo/.rvm/scripts/functions/bundler
+/home/tomo/.rvm/scripts/base:112> entry=checksum
+/home/tomo/.rvm/scripts/base:113> source /home/tomo/.rvm/scripts/functions/checksum
+/home/tomo/.rvm/scripts/base:115> unset scripts entry rvm_base_except
+/home/tomo/.rvm/scripts/rvm:130> __rvm_ensure_is_a_function
+__rvm_ensure_is_a_function:2> [[ 0 == 1 ]]
+__rvm_ensure_is_a_function:2> is_a_function rvm
+is_a_function:2> typeset -f rvm
+is_a_function:2> return 1
+__rvm_ensure_is_a_function:4> script=version
+__rvm_ensure_is_a_function:6> [[ -f /home/tomo/.rvm/scripts/version ]]
+__rvm_ensure_is_a_function:8> source /home/tomo/.rvm/scripts/version
+__rvm_ensure_is_a_function:4> script=selector
+__rvm_ensure_is_a_function:6> [[ -f /home/tomo/.rvm/scripts/selector ]]
+__rvm_ensure_is_a_function:8> source /home/tomo/.rvm/scripts/selector
+__rvm_ensure_is_a_function:4> script=selector_gemsets
+__rvm_ensure_is_a_function:6> [[ -f /home/tomo/.rvm/scripts/selector_gemsets ]]
+__rvm_ensure_is_a_function:8> source /home/tomo/.rvm/scripts/selector_gemsets
+__rvm_ensure_is_a_function:4> script=cd
+__rvm_ensure_is_a_function:6> [[ -f /home/tomo/.rvm/scripts/cd ]]
+__rvm_ensure_is_a_function:8> source /home/tomo/.rvm/scripts/cd
+/home/tomo/.rvm/scripts/cd:5> case 1 (1|cd)
+/home/tomo/.rvm/scripts/cd:64> __rvm_setup_cd
+__rvm_setup_cd:3> typeset __cd_prefix __command
+__rvm_setup_cd:4> typeset -f smartcd
+__rvm_setup_cd:6> __cd_prefix=builtin 
+__rvm_setup_cd:39> [[ -n 5.0.0 ]]
+__rvm_setup_cd:41> autoload is-at-least
+__rvm_setup_cd:42> is-at-least 4.3.4
+__rvm_setup_cd:44> export -a chpwd_functions
+__rvm_setup_cd:45> chpwd_functions=( __rvm_do_with_env_before __rvm_project_rvmrc __rvm_after_cd __rvm_do_with_env_after ) 
+/home/tomo/.rvm/scripts/cd:68> ((  0 == 1  ))
+__rvm_ensure_is_a_function:4> script=cli
+__rvm_ensure_is_a_function:6> [[ -f /home/tomo/.rvm/scripts/cli ]]
+__rvm_ensure_is_a_function:8> source /home/tomo/.rvm/scripts/cli
+__rvm_ensure_is_a_function:4> script=override_gem
+__rvm_ensure_is_a_function:6> [[ -f /home/tomo/.rvm/scripts/override_gem ]]
+__rvm_ensure_is_a_function:8> source /home/tomo/.rvm/scripts/override_gem
+/home/tomo/.rvm/scripts/override_gem:3> [[ 0 -eq 0 ]]
+/home/tomo/.rvm/scripts/rvm:131> __rvm_setup
+__rvm_setup:2> __variables_definition export
+__variables_definition:2> typeset -a __variables_list __array_list
+__variables_definition:3> typeset __method
+__variables_definition:5> __method=export 
+__variables_definition:9> __variables_list=( rvm_head_flag rvm_ruby_selected_flag rvm_user_install_flag rvm_path_flag rvm_cron_flag rvm_static_flag rvm_default_flag rvm_loaded_flag rvm_llvm_flag rvm_skip_autoreconf_flag rvm_18_flag rvm_19_flag rvm_force_autoconf_flag rvm_dump_environment_flag rvm_verbose_flag rvm_debug_flag rvm_trace_flag rvm_pretty_print_flag rvm_create_flag rvm_remove_flag rvm_gemdir_flag rvm_reload_flag rvm_auto_reload_flag rvm_disable_binary_flag rvm_ignore_gemsets_flag rvm_skip_gemsets_flag rvm_install_on_use_flag rvm_remote_flag rvm_verify_downloads_flag rvm_skip_openssl_flag rvm_gems_cache_path rvm_gems_path rvm_man_path rvm_ruby_gem_path rvm_ruby_log_path rvm_gems_cache_path rvm_archives_path rvm_docs_path rvm_environments_path rvm_examples_path rvm_gems_path rvm_gemsets_path rvm_help_path rvm_hooks_path rvm_lib_path rvm_log_path rvm_patches_path rvm_repos_path rvm_rubies_path rvm_scripts_path rvm_src_path rvm_tmp_path rvm_user_path rvm_usr_path rvm_wrappers_path rvm_externals_path rvm_stored_errexit rvm_ruby_strings rvm_ruby_binary rvm_ruby_gem_home rvm_ruby_home rvm_ruby_interpreter rvm_ruby_irbrc rvm_ruby_major_version rvm_ruby_minor_version rvm_ruby_package_name rvm_ruby_patch_level rvm_ruby_release_version rvm_ruby_repo_url rvm_ruby_repo_branch rvm_ruby_revision rvm_ruby_tag rvm_ruby_sha rvm_ruby_version rvm_ruby_package_file rvm_ruby_name rvm_ruby_name rvm_ruby_args rvm_ruby_user_tag rvm_ruby_patch detected_rvm_ruby_name __rvm_env_loaded next_token rvm_error_message rvm_gemset_name rvm_parse_break rvm_token rvm_action rvm_export_args rvm_gemset_separator rvm_expanding_aliases rvm_architectures rvm_tar_command rvm_tar_options rvm_patch_original_pwd rvm_project_rvmrc rvm_archive_extension rvm_autoinstall_bundler_flag rvm_codesign_identity rvm_expected_gemset_name rvm_with_gems rvm_without_gems rvm_force_clang_ok rvm_ignore_dotfiles_flag ) 
+__variables_definition:34> __array_list=( rvm_patch_names rvm_ree_options rvm_autoconf_flags ) 
+__variables_definition:38> case export (export)
+__variables_definition:39> export -a rvm_patch_names rvm_ree_options rvm_autoconf_flags
+__variables_definition:47> export rvm_head_flag rvm_ruby_selected_flag rvm_user_install_flag rvm_path_flag rvm_cron_flag rvm_static_flag rvm_default_flag rvm_loaded_flag rvm_llvm_flag rvm_skip_autoreconf_flag rvm_18_flag rvm_19_flag rvm_force_autoconf_flag rvm_dump_environment_flag rvm_verbose_flag rvm_debug_flag rvm_trace_flag rvm_pretty_print_flag rvm_create_flag rvm_remove_flag rvm_gemdir_flag rvm_reload_flag rvm_auto_reload_flag rvm_disable_binary_flag rvm_ignore_gemsets_flag rvm_skip_gemsets_flag rvm_install_on_use_flag rvm_remote_flag rvm_verify_downloads_flag rvm_skip_openssl_flag rvm_gems_cache_path rvm_gems_path rvm_man_path rvm_ruby_gem_path rvm_ruby_log_path rvm_gems_cache_path rvm_archives_path rvm_docs_path rvm_environments_path rvm_examples_path rvm_gems_path rvm_gemsets_path rvm_help_path rvm_hooks_path rvm_lib_path rvm_log_path rvm_patches_path rvm_repos_path rvm_rubies_path rvm_scripts_path rvm_src_path rvm_tmp_path rvm_user_path rvm_usr_path rvm_wrappers_path rvm_externals_path rvm_stored_errexit rvm_ruby_strings rvm_ruby_binary rvm_ruby_gem_home rvm_ruby_home rvm_ruby_interpreter rvm_ruby_irbrc rvm_ruby_major_version rvm_ruby_minor_version rvm_ruby_package_name rvm_ruby_patch_level rvm_ruby_release_version rvm_ruby_repo_url rvm_ruby_repo_branch rvm_ruby_revision rvm_ruby_tag rvm_ruby_sha rvm_ruby_version rvm_ruby_package_file rvm_ruby_name rvm_ruby_name rvm_ruby_args rvm_ruby_user_tag rvm_ruby_patch detected_rvm_ruby_name __rvm_env_loaded next_token rvm_error_message rvm_gemset_name rvm_parse_break rvm_token rvm_action rvm_export_args rvm_gemset_separator rvm_expanding_aliases rvm_architectures rvm_tar_command rvm_tar_options rvm_patch_original_pwd rvm_project_rvmrc rvm_archive_extension rvm_autoinstall_bundler_flag rvm_codesign_identity rvm_expected_gemset_name rvm_with_gems rvm_without_gems rvm_force_clang_ok rvm_ignore_dotfiles_flag
+__rvm_setup:5> ((  __rvm_env_loaded != 1  ))
+__rvm_setup:9> [[ -n '' ]]
+__rvm_setup:14> [[ -n 5.0.0 ]]
+__rvm_setup:16> export rvm_zsh_clobber rvm_zsh_nomatch
+__rvm_setup:18> setopt
+__rvm_setup:18> GREP_OPTIONS='' grep -s '^noclobber$'
+__rvm_setup:20> rvm_zsh_clobber=1 
+__rvm_setup:22> setopt clobber
+__rvm_setup:24> setopt
+__rvm_setup:24> GREP_OPTIONS='' grep -s '^nonomatch$'
+__rvm_setup:26> rvm_zsh_nomatch=1 
+__rvm_setup:28> setopt no_nomatch
+/home/tomo/.rvm/scripts/rvm:133> export rvm_version
+/home/tomo/.rvm/scripts/rvm:134> rvm_version=+/home/tomo/.rvm/scripts/rvm:134> cat /home/tomo/.rvm/VERSION
+/home/tomo/.rvm/scripts/rvm:134> rvm_version=+/home/tomo/.rvm/scripts/rvm:134> cat /home/tomo/.rvm/RELEASE
+/home/tomo/.rvm/scripts/rvm:134> rvm_version='1.17.5 (master)' 
+/home/tomo/.rvm/scripts/rvm:136> alias 'rvm-restart=rvm_reload_flag=1 source '\''/home/tomo/.rvm/scripts/rvm'\'
+/home/tomo/.rvm/scripts/rvm:138> command -v ruby
+/home/tomo/.rvm/scripts/rvm:139> command -v ruby
+/home/tomo/.rvm/scripts/rvm:139> GREP_OPTIONS='' grep -v /home/tomo/.rvm
+/home/tomo/.rvm/scripts/rvm:142> [[ -s /home/tomo/.rvm/environments/default && '' != switch ]]
+/home/tomo/.rvm/scripts/rvm:144> source /home/tomo/.rvm/environments/default
+/home/tomo/.rvm/environments/default:1> export PATH
+/home/tomo/.rvm/environments/default:1> PATH=/home/tomo/.rvm/gems/ruby-1.9.3-p327/bin:/home/tomo/.rvm/gems/ruby-1.9.3-p327@global/bin:/home/tomo/.rvm/rubies/ruby-1.9.3-p327/bin:/home/tomo/.rvm/bin:/home/tomo/.zkit_private/bin:/home/tomo/.zkit/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin 
+/home/tomo/.rvm/environments/default:2> export rvm_env_string
+/home/tomo/.rvm/environments/default:2> rvm_env_string=ruby-1.9.3-p327 
+/home/tomo/.rvm/environments/default:3> export rvm_path
+/home/tomo/.rvm/environments/default:3> rvm_path=/home/tomo/.rvm 
+/home/tomo/.rvm/environments/default:4> export rvm_ruby_string
+/home/tomo/.rvm/environments/default:4> rvm_ruby_string=ruby-1.9.3-p327 
+/home/tomo/.rvm/environments/default:5> unset rvm_gemset_name
+/home/tomo/.rvm/environments/default:6> export RUBY_VERSION
+/home/tomo/.rvm/environments/default:6> RUBY_VERSION=ruby-1.9.3-p327 
+/home/tomo/.rvm/environments/default:7> export GEM_HOME
+/home/tomo/.rvm/environments/default:7> GEM_HOME=/home/tomo/.rvm/gems/ruby-1.9.3-p327 
+/home/tomo/.rvm/environments/default:8> export GEM_PATH
+/home/tomo/.rvm/environments/default:8> GEM_PATH=/home/tomo/.rvm/gems/ruby-1.9.3-p327:/home/tomo/.rvm/gems/ruby-1.9.3-p327@global 
+/home/tomo/.rvm/environments/default:9> export MY_RUBY_HOME
+/home/tomo/.rvm/environments/default:9> MY_RUBY_HOME=/home/tomo/.rvm/rubies/ruby-1.9.3-p327 
+/home/tomo/.rvm/environments/default:10> export IRBRC
+/home/tomo/.rvm/environments/default:10> IRBRC=/home/tomo/.rvm/rubies/ruby-1.9.3-p327/.irbrc 
+/home/tomo/.rvm/environments/default:11> unset MAGLEV_HOME
+/home/tomo/.rvm/environments/default:12> unset RBXOPT
+/home/tomo/.rvm/scripts/rvm:152> __rvm_conditionally_add_bin_path
+__rvm_conditionally_add_bin_path:2> [[ ":${PATH}:" -regex-match ":${rvm_bin_path}:" ]]
+/home/tomo/.rvm/scripts/rvm:154> ((  0 == 1  ))
+/home/tomo/.rvm/scripts/rvm:162> rvm_loaded_flag=1 
+/home/tomo/.rvm/scripts/rvm:166> unset rvm_prefix_needs_trailing_slash rvm_gems_cache_path rvm_gems_path rvm_project_rvmrc_default rvm_gemset_separator rvm_reload_flag
+/home/tomo/.rvm/scripts/rvm:173> [[ -t 0 && 1 -gt 0 ]]
+/home/tomo/.rvm/scripts/rvm:174> rvm_is_a_shell_function no_warning
+rvm_is_a_shell_function:2> typeset _message
+rvm_is_a_shell_function:4> ((  0  ))
+rvm_is_a_shell_function:20> return 0
+/home/tomo/.rvm/scripts/rvm:175> __function_on_stack __rvm_project_rvmrc
+__function_on_stack:2> typeset fun
+__function_on_stack:3> fun=__rvm_project_rvmrc
+__function_on_stack:5> [[ " ${FUNCNAME[*]} " -regex-match " $fun " ]]
+__function_on_stack:9> return 1
+/home/tomo/.rvm/scripts/rvm:176> typeset -f __rvm_project_rvmrc
+/home/tomo/.rvm/scripts/rvm:180> rvm_promptless=1 +/home/tomo/.rvm/scripts/rvm:180> __rvm_project_rvmrc
+__rvm_project_rvmrc:2> export __rvm_project_rvmrc_lock
+__rvm_project_rvmrc:3> : __rvm_project_rvmrc_lock:0
+__rvm_project_rvmrc:4> : __rvm_project_rvmrc_lock:1
+__rvm_project_rvmrc:5> ((  __rvm_project_rvmrc_lock > 1  ))
+__rvm_project_rvmrc:9> typeset working_dir found_file rvm_trustworthiness_result
+__rvm_project_rvmrc:12> working_dir=/home/tomo/.zkit 
+__rvm_project_rvmrc:14> :
+__rvm_project_rvmrc:17> [[ -z /home/tomo/.zkit || /home/tomo == /home/tomo/.zkit || /home/tomo == /home/tomo/.zkit || / == /home/tomo/.zkit ]]
+__rvm_project_rvmrc:38> __rvm_project_dir_check /home/tomo/.zkit found_file
+__rvm_project_dir_check:2> typeset _found_file path_to_check variable variable_default
+__rvm_project_dir_check:3> typeset -a _valid_files
+__rvm_project_dir_check:4> path_to_check=/home/tomo/.zkit 
+__rvm_project_dir_check:5> variable=found_file 
+__rvm_project_dir_check:6> variable_default='' 
+__rvm_project_dir_check:7> _valid_files=( /home/tomo/.zkit /home/tomo/.zkit/.rvmrc /home/tomo/.zkit/.versions.conf /home/tomo/.zkit/.ruby-version /home/tomo/.zkit/.rbfu-version /home/tomo/.zkit/.rbenv-version /home/tomo/.zkit/Gemfile ) 
+__rvm_project_dir_check:13> __rvm_find_first_file _found_file /home/tomo/.zkit /home/tomo/.zkit/.rvmrc /home/tomo/.zkit/.versions.conf /home/tomo/.zkit/.ruby-version /home/tomo/.zkit/.rbfu-version /home/tomo/.zkit/.rbenv-version /home/tomo/.zkit/Gemfile
+__rvm_find_first_file:2> typeset _first_file _variable_first_file __file_enum
+__rvm_find_first_file:3> _first_file='' 
+__rvm_find_first_file:4> _variable_first_file=_found_file 
+__rvm_find_first_file:5> shift
+__rvm_find_first_file:7> __file_enum=/home/tomo/.zkit
+__rvm_find_first_file:10> [[ -f /home/tomo/.zkit ]]
+__rvm_find_first_file:7> __file_enum=/home/tomo/.zkit/.rvmrc
+__rvm_find_first_file:10> [[ -f /home/tomo/.zkit/.rvmrc ]]
+__rvm_find_first_file:7> __file_enum=/home/tomo/.zkit/.versions.conf
+__rvm_find_first_file:10> [[ -f /home/tomo/.zkit/.versions.conf ]]
+__rvm_find_first_file:7> __file_enum=/home/tomo/.zkit/.ruby-version
+__rvm_find_first_file:10> [[ -f /home/tomo/.zkit/.ruby-version ]]
+__rvm_find_first_file:7> __file_enum=/home/tomo/.zkit/.rbfu-version
+__rvm_find_first_file:10> [[ -f /home/tomo/.zkit/.rbfu-version ]]
+__rvm_find_first_file:7> __file_enum=/home/tomo/.zkit/.rbenv-version
+__rvm_find_first_file:10> [[ -f /home/tomo/.zkit/.rbenv-version ]]
+__rvm_find_first_file:7> __file_enum=/home/tomo/.zkit/Gemfile
+__rvm_find_first_file:10> [[ -f /home/tomo/.zkit/Gemfile ]]
+__rvm_find_first_file:16> eval '_found_file=""'
+(eval):1> _found_file='' 
+__rvm_find_first_file:17> return 1
+__rvm_project_dir_check:13> true
+__rvm_project_dir_check:15> [[ '' == Gemfile ]]
+__rvm_project_dir_check:24> [[ -n found_file ]]
+__rvm_project_dir_check:25> eval 'found_file="${_found_file:-}"'
+(eval):1> found_file='' 
+__rvm_project_dir_check:28> [[ -n '' ]]
+__rvm_project_dir_check:28> return 1
+__rvm_project_rvmrc:52> working_dir=+__rvm_project_rvmrc:52> dirname /home/tomo/.zkit
+__rvm_project_rvmrc:52> working_dir=/home/tomo 
+__rvm_project_rvmrc:14> :
+__rvm_project_rvmrc:17> [[ -z /home/tomo || /home/tomo == /home/tomo ]]
+__rvm_project_rvmrc:20> [[ -n '' ]]
+__rvm_project_rvmrc:35> break
+__rvm_project_rvmrc:57> unset __rvm_project_rvmrc_lock
+__rvm_project_rvmrc:58> return 0
+/home/tomo/.rvm/scripts/rvm:181> rvm_hook=after_cd 
+/home/tomo/.rvm/scripts/rvm:182> source /home/tomo/.rvm/scripts/hook
+/home/tomo/.rvm/scripts/hook:4> typeset old_rvm_verbose_flag old_rvm_debug_flag
+/home/tomo/.rvm/scripts/hook:5> old_rvm_verbose_flag=0 
+/home/tomo/.rvm/scripts/hook:6> old_rvm_debug_flag=0 
+/home/tomo/.rvm/scripts/hook:9> typeset rvm_verbose_flag rvm_debug_flag hooks
+/home/tomo/.rvm/scripts/hook:11> true rvm_verbose_flag:0 rvm_debug_flag:0 rvm_hook:after_cd
+/home/tomo/.rvm/scripts/hook:15> [[ -n after_cd ]]
+/home/tomo/.rvm/scripts/hook:17> hooks=( /home/tomo/.rvm/hooks ) 
+/home/tomo/.rvm/scripts/hook:18> [[ /home/tomo/.zkit/.rvm/hooks == /home/tomo/.rvm/hooks ]]
+/home/tomo/.rvm/scripts/hook:19> hooks+=( /home/tomo/.zkit/.rvm/hooks ) 
+/home/tomo/.rvm/scripts/hook:21> _hooks_list=+/home/tomo/.rvm/scripts/hook:22> find -L /home/tomo/.rvm/hooks /home/tomo/.zkit/.rvm/hooks -iname 'after_cd*' -type f
+/home/tomo/.rvm/scripts/hook:21> _hooks_list=( /home/tomo/.rvm/hooks/after_cd_bundler ) 
+/home/tomo/.rvm/scripts/hook:25> hook=/home/tomo/.rvm/hooks/after_cd_bundler
+/home/tomo/.rvm/scripts/hook:27> [[ -x /home/tomo/.rvm/hooks/after_cd_bundler || after_cd_bundler == after_cd ]]
+/home/tomo/.rvm/scripts/hook:35> unset rvm_hook hooks _hooks_list hook
+/home/tomo/.rvm/scripts/rvm:185> __rvm_teardown
+__rvm_teardown:2> command -v __rvm_cleanup_tmp
+__rvm_teardown:4> __rvm_cleanup_tmp
+__rvm_cleanup_tmp:2> [[ -d /home/tomo/.rvm/tmp/ ]]
+__rvm_cleanup_tmp:4> case /home/tomo/.rvm/tmp (*tmp)
+__rvm_cleanup_tmp:6> __rvm_rm_rf '/home/tomo/.rvm/tmp/30453*'
+__rvm_rm_rf:2> __rvm_rm_rf_verbose '/home/tomo/.rvm/tmp/30453*'
+__rvm_rm_rf_verbose:2> typeset result target
+__rvm_rm_rf_verbose:3> result=1 
+__rvm_rm_rf_verbose:4> target='/home/tomo/.rvm/tmp/30453*' 
+__rvm_rm_rf_verbose:7> [[ -n 5.0.0 ]]
+__rvm_rm_rf_verbose:9> setopt extendedglob
+__rvm_rm_rf_verbose:18> case /home/tomo/.rvm/tmp/30453* (*(/|.)@(|/Applications|/Developer|/Guides|/Information|/Library|/Network|/System|/User|/Users|/Volumes|/backups|/bdsm|/bin|/boot|/cores|/data|/dev|/etc|/home|/lib|/lib64|/mach_kernel|/media|/misc|/mnt|/net|/opt|/private|/proc|/root|/sbin|/selinux|/srv|/sys|/tmp|/usr|/var))
+__rvm_rm_rf_verbose:18> case /home/tomo/.rvm/tmp/30453* (*)
+__rvm_rm_rf_verbose:23> [[ -n '/home/tomo/.rvm/tmp/30453*' ]]
+__rvm_rm_rf_verbose:25> [[ -d '/home/tomo/.rvm/tmp/30453*' ]]
+__rvm_rm_rf_verbose:29> [[ -f '/home/tomo/.rvm/tmp/30453*' || -L '/home/tomo/.rvm/tmp/30453*' ]]
+__rvm_rm_rf_verbose:34> result=0 
+__rvm_rm_rf_verbose:39> return 0
+__rvm_cleanup_tmp:10> return 0
+__rvm_teardown:7> export __rvm_env_loaded
+__rvm_teardown:9> : __rvm_env_loaded:1:
+__rvm_teardown:11> : __rvm_env_loaded:1:
+__rvm_teardown:13> : __rvm_env_loaded:0:
+__rvm_teardown:15> [[ -z /home/tomo/.rvm/tmp ]]
+__rvm_teardown:15> ((  __rvm_env_loaded > 0  ))
+__rvm_teardown:20> [[ -n '' ]]
+__rvm_teardown:25> [[ -n 5.0.0 ]]
+__rvm_teardown:28> ((  rvm_zsh_clobber == 0  ))
+__rvm_teardown:30> ((  rvm_zsh_nomatch == 0  ))
+__rvm_teardown:30> setopt nomatch
+__rvm_teardown:32> unset rvm_zsh_clobber rvm_zsh_nomatch
+__rvm_teardown:35> [[ -n 077 ]]
+__rvm_teardown:37> umask 077
+__rvm_teardown:38> unset rvm_stored_umask
+__rvm_teardown:41> [[ '' == 1 ]]
+__rvm_teardown:45> __variables_definition unset
+__variables_definition:2> typeset -a __variables_list __array_list
+__variables_definition:3> typeset __method
+__variables_definition:5> __method=unset 
+__variables_definition:9> __variables_list=( rvm_head_flag rvm_ruby_selected_flag rvm_user_install_flag rvm_path_flag rvm_cron_flag rvm_static_flag rvm_default_flag rvm_loaded_flag rvm_llvm_flag rvm_skip_autoreconf_flag rvm_18_flag rvm_19_flag rvm_force_autoconf_flag rvm_dump_environment_flag rvm_verbose_flag rvm_debug_flag rvm_trace_flag rvm_pretty_print_flag rvm_create_flag rvm_remove_flag rvm_gemdir_flag rvm_reload_flag rvm_auto_reload_flag rvm_disable_binary_flag rvm_ignore_gemsets_flag rvm_skip_gemsets_flag rvm_install_on_use_flag rvm_remote_flag rvm_verify_downloads_flag rvm_skip_openssl_flag rvm_gems_cache_path rvm_gems_path rvm_man_path rvm_ruby_gem_path rvm_ruby_log_path rvm_gems_cache_path rvm_archives_path rvm_docs_path rvm_environments_path rvm_examples_path rvm_gems_path rvm_gemsets_path rvm_help_path rvm_hooks_path rvm_lib_path rvm_log_path rvm_patches_path rvm_repos_path rvm_rubies_path rvm_scripts_path rvm_src_path rvm_tmp_path rvm_user_path rvm_usr_path rvm_wrappers_path rvm_externals_path rvm_stored_errexit rvm_ruby_strings rvm_ruby_binary rvm_ruby_gem_home rvm_ruby_home rvm_ruby_interpreter rvm_ruby_irbrc rvm_ruby_major_version rvm_ruby_minor_version rvm_ruby_package_name rvm_ruby_patch_level rvm_ruby_release_version rvm_ruby_repo_url rvm_ruby_repo_branch rvm_ruby_revision rvm_ruby_tag rvm_ruby_sha rvm_ruby_version rvm_ruby_package_file rvm_ruby_name rvm_ruby_name rvm_ruby_args rvm_ruby_user_tag rvm_ruby_patch detected_rvm_ruby_name __rvm_env_loaded next_token rvm_error_message rvm_gemset_name rvm_parse_break rvm_token rvm_action rvm_export_args rvm_gemset_separator rvm_expanding_aliases rvm_architectures rvm_tar_command rvm_tar_options rvm_patch_original_pwd rvm_project_rvmrc rvm_archive_extension rvm_autoinstall_bundler_flag rvm_codesign_identity rvm_expected_gemset_name rvm_with_gems rvm_without_gems rvm_force_clang_ok rvm_ignore_dotfiles_flag ) 
+__variables_definition:34> __array_list=( rvm_patch_names rvm_ree_options rvm_autoconf_flags ) 
+__variables_definition:38> case unset (export)
+__variables_definition:38> case unset (unset)
+__variables_definition:40> unset rvm_patch_names rvm_ree_options rvm_autoconf_flags
+__variables_definition:47> unset rvm_head_flag rvm_ruby_selected_flag rvm_user_install_flag rvm_path_flag rvm_cron_flag rvm_static_flag rvm_default_flag rvm_loaded_flag rvm_llvm_flag rvm_skip_autoreconf_flag rvm_18_flag rvm_19_flag rvm_force_autoconf_flag rvm_dump_environment_flag rvm_verbose_flag rvm_debug_flag rvm_trace_flag rvm_pretty_print_flag rvm_create_flag rvm_remove_flag rvm_gemdir_flag rvm_reload_flag rvm_auto_reload_flag rvm_disable_binary_flag rvm_ignore_gemsets_flag rvm_skip_gemsets_flag rvm_install_on_use_flag rvm_remote_flag rvm_verify_downloads_flag rvm_skip_openssl_flag rvm_gems_cache_path rvm_gems_path rvm_man_path rvm_ruby_gem_path rvm_ruby_log_path rvm_gems_cache_path rvm_archives_path rvm_docs_path rvm_environments_path rvm_examples_path rvm_gems_path rvm_gemsets_path rvm_help_path rvm_hooks_path rvm_lib_path rvm_log_path rvm_patches_path rvm_repos_path rvm_rubies_path rvm_scripts_path rvm_src_path rvm_tmp_path rvm_user_path rvm_usr_path rvm_wrappers_path rvm_externals_path rvm_stored_errexit rvm_ruby_strings rvm_ruby_binary rvm_ruby_gem_home rvm_ruby_home rvm_ruby_interpreter rvm_ruby_irbrc rvm_ruby_major_version rvm_ruby_minor_version rvm_ruby_package_name rvm_ruby_patch_level rvm_ruby_release_version rvm_ruby_repo_url rvm_ruby_repo_branch rvm_ruby_revision rvm_ruby_tag rvm_ruby_sha rvm_ruby_version rvm_ruby_package_file rvm_ruby_name rvm_ruby_name rvm_ruby_args rvm_ruby_user_tag rvm_ruby_patch detected_rvm_ruby_name __rvm_env_loaded next_token rvm_error_message rvm_gemset_name rvm_parse_break rvm_token rvm_action rvm_export_args rvm_gemset_separator rvm_expanding_aliases rvm_architectures rvm_tar_command rvm_tar_options rvm_patch_original_pwd rvm_project_rvmrc rvm_archive_extension rvm_autoinstall_bundler_flag rvm_codesign_identity rvm_expected_gemset_name rvm_with_gems rvm_without_gems rvm_force_clang_ok rvm_ignore_dotfiles_flag
+__rvm_teardown:47> command -v __rvm_cleanup_download
+__rvm_teardown:52> return 0
+/home/tomo/.zkit/rc.d/32-ruby.sh:20> BASH_ENV='' 
+/home/tomo/.zkit/rc.d/32-ruby.sh:21> pathmunge /home/tomo/.rvm/bin
+pathmunge:6> emulate -L zsh
+pathmunge:8> after=false 
+pathmunge:9> [[ /home/tomo/.rvm/bin == -a ]]
+pathmunge:14> i=/home/tomo/.rvm/bin
+pathmunge:15> j = 1
+pathmunge:15> j <= 12
+pathmunge:16> [[ /home/tomo/.rvm/gems/ruby-1.9.3-p327/bin == /home/tomo/.rvm/bin ]]
+pathmunge:15> j++ 
+pathmunge:15> j <= 12
+pathmunge:16> [[ /home/tomo/.rvm/gems/ruby-1.9.3-p327@global/bin == /home/tomo/.rvm/bin ]]
+pathmunge:15> j++ 
+pathmunge:15> j <= 12
+pathmunge:16> [[ /home/tomo/.rvm/rubies/ruby-1.9.3-p327/bin == /home/tomo/.rvm/bin ]]
+pathmunge:15> j++ 
+pathmunge:15> j <= 12
+pathmunge:16> [[ /home/tomo/.rvm/bin == /home/tomo/.rvm/bin ]]
+pathmunge:16> path[j]=( ) 
+pathmunge:15> j++ 
+pathmunge:15> j <= 11
+pathmunge:16> [[ /home/tomo/.zkit/bin == /home/tomo/.rvm/bin ]]
+pathmunge:15> j++ 
+pathmunge:15> j <= 11
+pathmunge:16> [[ /usr/local/sbin == /home/tomo/.rvm/bin ]]
+pathmunge:15> j++ 
+pathmunge:15> j <= 11
+pathmunge:16> [[ /usr/local/bin == /home/tomo/.rvm/bin ]]
+pathmunge:15> j++ 
+pathmunge:15> j <= 11
+pathmunge:16> [[ /usr/sbin == /home/tomo/.rvm/bin ]]
+pathmunge:15> j++ 
+pathmunge:15> j <= 11
+pathmunge:16> [[ /usr/bin == /home/tomo/.rvm/bin ]]
+pathmunge:15> j++ 
+pathmunge:15> j <= 11
+pathmunge:16> [[ /sbin == /home/tomo/.rvm/bin ]]
+pathmunge:15> j++ 
+pathmunge:15> j <= 11
+pathmunge:16> [[ /bin == /home/tomo/.rvm/bin ]]
+pathmunge:15> j++ 
+pathmunge:15> j <= 11
+pathmunge:18> false
+pathmunge:21> path=( /home/tomo/.rvm/bin /home/tomo/.rvm/gems/ruby-1.9.3-p327/bin /home/tomo/.rvm/gems/ruby-1.9.3-p327@global/bin /home/tomo/.rvm/rubies/ruby-1.9.3-p327/bin /home/tomo/.zkit_private/bin /home/tomo/.zkit/bin /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin ) 
+/home/tomo/.zkit/rc.d/32-ruby.sh:23> [[ -n ruby-1.9.3-p327 ]]
+/home/tomo/.zkit/rc.d/32-ruby.sh:24> rvm use
+rvm:2> typeset result current_result
+rvm:3> export -a rvm_ruby_args
+rvm:4> rvm_ruby_args=( ) 
+rvm:7> ((  0 == 0  ))
+rvm:9> [[ -n '' ]]
+rvm:9> umask
+rvm:9> export 'rvm_stored_umask=077'
+rvm:10> rvm_rvmrc_files=( /etc/rvmrc /home/tomo/.rvmrc ) 
+rvm:12> [[ -n /home/tomo ]]
+rvm:13> [[ ! /home/tomo/.rvmrc -ef /home/tomo/.rvmrc ]]
+rvm:17> rvmrc=/etc/rvmrc
+rvm:20> [[ -f /etc/rvmrc ]]
+rvm:23> GREP_OPTIONS='' grep '^\s*rvm .*$' /etc/rvmrc
+rvm:32> source /etc/rvmrc
+/etc/rvmrc:1> umask 'u=rwx,g=rwx,o=rx'
+rvm:17> rvmrc=/home/tomo/.rvmrc
+rvm:20> [[ -f /home/tomo/.rvmrc ]]
+rvm:23> GREP_OPTIONS='' grep '^\s*rvm .*$' /home/tomo/.rvmrc
+rvm:32> source /home/tomo/.rvmrc
+/home/tomo/.rvmrc:2> rvm_ignore_dotfiles_flag=1 
+/home/tomo/.rvmrc:3> rvm_auto_reload_flag=1 
+rvm:36> unset rvm_rvmrc_files
+rvm:39> disk_version=+rvm:39> cat /home/tomo/.rvm/VERSION
+rvm:39> disk_version=+rvm:39> cat /home/tomo/.rvm/RELEASE
+rvm:39> disk_version='1.17.5 (master)' 
+rvm:41> [[ -s /home/tomo/.rvm/VERSION && '1.17.5 (master)' != 1.17.5 \(master\) ]]
+rvm:66> __rvm_initialize
+__rvm_initialize:2> true /home/tomo/.rvm/scripts
+__rvm_initialize:3> source /home/tomo/.rvm/scripts/base
+/home/tomo/.rvm/scripts/base:17> __rvm_has_opt errexit
+__rvm_has_opt:3> [[ -n 5.0.0 ]]
+__rvm_has_opt:3> setopt
+__rvm_has_opt:3> grep '--color=auto' '^errexit$'
+__rvm_has_opt:6> [[ -n '' ]]
+__rvm_has_opt:8> return 1
+/home/tomo/.rvm/scripts/base:21> set +e
+/home/tomo/.rvm/scripts/base:23> : rvm_trace_flag:0
+/home/tomo/.rvm/scripts/base:24> ((  rvm_trace_flag > 0  ))
+/home/tomo/.rvm/scripts/base:38> export __array_start rvm_path
+/home/tomo/.rvm/scripts/base:43> [[ -n 5.0.0 ]]
+/home/tomo/.rvm/scripts/base:45> __array_start=1 
+/home/tomo/.rvm/scripts/base:50> ((  0 == 0  ))
+/home/tomo/.rvm/scripts/base:52> [[ -n 077 ]]
+/home/tomo/.rvm/scripts/base:53> rvm_rvmrc_files=( /etc/rvmrc /home/tomo/.rvmrc ) 
+/home/tomo/.rvm/scripts/base:54> [[ -n /home/tomo ]]
+/home/tomo/.rvm/scripts/base:54> [[ /home/tomo/.rvmrc -ef /home/tomo/.rvmrc ]]
+/home/tomo/.rvm/scripts/base:58> rvmrc=/etc/rvmrc
+/home/tomo/.rvm/scripts/base:60> [[ -f /etc/rvmrc ]]
+/home/tomo/.rvm/scripts/base:62> GREP_OPTIONS='' grep '^\s*rvm .*$' /etc/rvmrc
+/home/tomo/.rvm/scripts/base:71> source /etc/rvmrc
+/etc/rvmrc:1> umask 'u=rwx,g=rwx,o=rx'
+/home/tomo/.rvm/scripts/base:58> rvmrc=/home/tomo/.rvmrc
+/home/tomo/.rvm/scripts/base:60> [[ -f /home/tomo/.rvmrc ]]
+/home/tomo/.rvm/scripts/base:62> GREP_OPTIONS='' grep '^\s*rvm .*$' /home/tomo/.rvmrc
+/home/tomo/.rvm/scripts/base:71> source /home/tomo/.rvmrc
+/home/tomo/.rvmrc:2> rvm_ignore_dotfiles_flag=1 
+/home/tomo/.rvmrc:3> rvm_auto_reload_flag=1 
+/home/tomo/.rvm/scripts/base:75> unset rvm_rvmrc_files
+/home/tomo/.rvm/scripts/base:78> export rvm_path
+/home/tomo/.rvm/scripts/base:79> [[ -z /home/tomo/.rvm ]]
+/home/tomo/.rvm/scripts/base:91> true /home/tomo/.rvm/scripts
+/home/tomo/.rvm/scripts/base:94> source /home/tomo/.rvm/scripts/initialize
+/home/tomo/.rvm/scripts/initialize:3> : rvm_trace_flag:0
+/home/tomo/.rvm/scripts/initialize:4> ((  rvm_trace_flag > 0  ))
+/home/tomo/.rvm/scripts/initialize:20> [[ -n '' ]]
+/home/tomo/.rvm/scripts/initialize:23> [[ -n 5.0.0 ]]
+/home/tomo/.rvm/scripts/initialize:25> setopt extendedglob
+/home/tomo/.rvm/scripts/initialize:26> setopt kshglob
+/home/tomo/.rvm/scripts/initialize:27> setopt no_glob_subst
+/home/tomo/.rvm/scripts/initialize:32> export __rvm_env_loaded
+/home/tomo/.rvm/scripts/initialize:34> : __rvm_env_loaded:0:
+/home/tomo/.rvm/scripts/initialize:36> : __rvm_env_loaded:1:
+/home/tomo/.rvm/scripts/initialize:39> [[ -z '' ]]
+/home/tomo/.rvm/scripts/initialize:42> typeset -f __rvm_cleanse_variables
+/home/tomo/.rvm/scripts/initialize:44> __rvm_cleanse_variables
+__rvm_cleanse_variables:2> __rvm_unset_ruby_variables
+__rvm_unset_ruby_variables:3> unset rvm_env_string rvm_ruby_string rvm_ruby_strings rvm_ruby_binary rvm_ruby_gem_home rvm_ruby_gem_path rvm_ruby_home rvm_ruby_interpreter rvm_ruby_irbrc rvm_ruby_log_path rvm_ruby_major_version rvm_ruby_minor_version rvm_ruby_package_name rvm_ruby_patch_level rvm_ruby_release_version rvm_ruby_repo_url rvm_ruby_repo_branch rvm_ruby_revision rvm_ruby_selected_flag rvm_ruby_tag rvm_ruby_version rvm_head_flag rvm_ruby_package_file rvm_ruby_configure rvm_ruby_name rvm_ruby_url rvm_ruby_global_gems_path rvm_ruby_args rvm_ruby_name rvm_llvm_flag
+__rvm_unset_ruby_variables:4> __rvm_load_rvmrc
+__rvm_load_rvmrc:2> typeset _file
+__rvm_load_rvmrc:3> typeset -a rvm_rvmrc_files
+__rvm_load_rvmrc:4> ((  0 == 1  ))
+__rvm_load_rvmrc:9> [[ -n 077 ]]
+__rvm_load_rvmrc:11> rvm_rvmrc_files=( /etc/rvmrc /home/tomo/.rvmrc ) 
+__rvm_load_rvmrc:12> [[ -n /home/tomo ]]
+__rvm_load_rvmrc:12> [[ /home/tomo/.rvmrc -ef /home/tomo/.rvmrc ]]
+__rvm_load_rvmrc:15> _file=/etc/rvmrc
+__rvm_load_rvmrc:17> [[ -s /etc/rvmrc ]]
+__rvm_load_rvmrc:19> GREP_OPTIONS='' grep '^\s*rvm .*$' /etc/rvmrc
+__rvm_load_rvmrc:28> source /etc/rvmrc
+/etc/rvmrc:1> umask 'u=rwx,g=rwx,o=rx'
+__rvm_load_rvmrc:15> _file=/home/tomo/.rvmrc
+__rvm_load_rvmrc:17> [[ -s /home/tomo/.rvmrc ]]
+__rvm_load_rvmrc:19> GREP_OPTIONS='' grep '^\s*rvm .*$' /home/tomo/.rvmrc
+__rvm_load_rvmrc:28> source /home/tomo/.rvmrc
+/home/tomo/.rvmrc:2> rvm_ignore_dotfiles_flag=1 
+/home/tomo/.rvmrc:3> rvm_auto_reload_flag=1 
+__rvm_load_rvmrc:32> return 0
+__rvm_cleanse_variables:3> [[ 0 -eq 1 ]]
+__rvm_cleanse_variables:5> unset rvm_gemset_name
+__rvm_cleanse_variables:9> unset rvm_configure_flags rvm_patch_names rvm_make_flags
+__rvm_cleanse_variables:11> unset rvm_env_string rvm_ruby_string rvm_action rvm_irbrc_file rvm_command rvm_error_message rvm_force_flag rvm_all_flag rvm_reconfigure_flag rvm_bin_flag rvm_import_flag rvm_export_flag rvm_self_flag rvm_gem_flag rvm_rubygems_flag rvm_debug_flag rvm_delete_flag rvm_summary_flag rvm_test_flag _rvm_spec_flag rvm_json_flag rvm_yaml_flag rvm_shebang_flag rvm_env_flag rvm_tail_flag rvm_use_flag rvm_dir_flag rvm_list_flag rvm_empty_flag rvm_file_name rvm_benchmark_flag rvm_clear_flag rvm_name_flag rvm_verbose_flag rvm_user_flag rvm_system_flag rvm_uninstall_flag rvm_install_flag rvm_llvm_flag rvm_ruby_bits rvm_sticky_flag rvm_rvmrc_flag rvm_gems_flag rvm_only_path_flag rvm_docs_flag rvm_dump_environment_flag rvm_ruby_alias rvm_static_flag rvm_archive_extension rvm_hook rvm_ruby_name rvm_remote_flag
+__rvm_cleanse_variables:13> __rvm_load_rvmrc
+__rvm_load_rvmrc:2> typeset _file
+__rvm_load_rvmrc:3> typeset -a rvm_rvmrc_files
+__rvm_load_rvmrc:4> ((  0 == 1  ))
+__rvm_load_rvmrc:9> [[ -n 077 ]]
+__rvm_load_rvmrc:11> rvm_rvmrc_files=( /etc/rvmrc /home/tomo/.rvmrc ) 
+__rvm_load_rvmrc:12> [[ -n /home/tomo ]]
+__rvm_load_rvmrc:12> [[ /home/tomo/.rvmrc -ef /home/tomo/.rvmrc ]]
+__rvm_load_rvmrc:15> _file=/etc/rvmrc
+__rvm_load_rvmrc:17> [[ -s /etc/rvmrc ]]
+__rvm_load_rvmrc:19> GREP_OPTIONS='' grep '^\s*rvm .*$' /etc/rvmrc
+__rvm_load_rvmrc:28> source /etc/rvmrc
+/etc/rvmrc:1> umask 'u=rwx,g=rwx,o=rx'
+__rvm_load_rvmrc:15> _file=/home/tomo/.rvmrc
+__rvm_load_rvmrc:17> [[ -s /home/tomo/.rvmrc ]]
+__rvm_load_rvmrc:19> GREP_OPTIONS='' grep '^\s*rvm .*$' /home/tomo/.rvmrc
+__rvm_load_rvmrc:28> source /home/tomo/.rvmrc
+/home/tomo/.rvmrc:2> rvm_ignore_dotfiles_flag=1 
+/home/tomo/.rvmrc:3> rvm_auto_reload_flag=1 
+__rvm_load_rvmrc:32> return 0
+/home/tomo/.rvm/scripts/initialize:48> ((  0 == 0  ))
+/home/tomo/.rvm/scripts/initialize:50> [[ -n 077 ]]
+/home/tomo/.rvm/scripts/initialize:52> rvm_rvmrc_files=( /etc/rvmrc /home/tomo/.rvmrc ) 
+/home/tomo/.rvm/scripts/initialize:53> [[ -n /home/tomo ]]
+/home/tomo/.rvm/scripts/initialize:53> [[ /home/tomo/.rvmrc -ef /home/tomo/.rvmrc ]]
+/home/tomo/.rvm/scripts/initialize:56> rvmrc=/etc/rvmrc
+/home/tomo/.rvm/scripts/initialize:58> [[ -f /etc/rvmrc ]]
+/home/tomo/.rvm/scripts/initialize:60> GREP_OPTIONS='' grep '^\s*rvm .*$' /etc/rvmrc
+/home/tomo/.rvm/scripts/initialize:69> source /etc/rvmrc
+/etc/rvmrc:1> umask 'u=rwx,g=rwx,o=rx'
+/home/tomo/.rvm/scripts/initialize:56> rvmrc=/home/tomo/.rvmrc
+/home/tomo/.rvm/scripts/initialize:58> [[ -f /home/tomo/.rvmrc ]]
+/home/tomo/.rvm/scripts/initialize:60> GREP_OPTIONS='' grep '^\s*rvm .*$' /home/tomo/.rvmrc
+/home/tomo/.rvm/scripts/initialize:69> source /home/tomo/.rvmrc
+/home/tomo/.rvmrc:2> rvm_ignore_dotfiles_flag=1 
+/home/tomo/.rvmrc:3> rvm_auto_reload_flag=1 
+/home/tomo/.rvm/scripts/initialize:73> unset rvm_rvmrc_files
+/home/tomo/.rvm/scripts/initialize:76> export rvm_path
+/home/tomo/.rvm/scripts/initialize:77> [[ -z /home/tomo/.rvm ]]
+/home/tomo/.rvm/scripts/initialize:92> [[ -z '' ]]
+/home/tomo/.rvm/scripts/initialize:94> gemrc=/etc/gemrc
+/home/tomo/.rvm/scripts/initialize:96> [[ -r /etc/gemrc ]]
+/home/tomo/.rvm/scripts/initialize:94> gemrc=/home/tomo/.gemrc
+/home/tomo/.rvm/scripts/initialize:96> [[ -r /home/tomo/.gemrc ]]
+/home/tomo/.rvm/scripts/initialize:118> true /home/tomo/.rvm/scripts
+/home/tomo/.rvm/scripts/initialize:125> ((  0 == 0  ))
+/home/tomo/.rvm/scripts/initialize:127> export rvm_user_install_flag rvm_man_path
+/home/tomo/.rvm/scripts/initialize:129> ((  UID == 0  ))
+/home/tomo/.rvm/scripts/initialize:130> [[ -n /home/tomo && /home/tomo != /home/tomo ]]
+/home/tomo/.rvm/scripts/initialize:135> rvm_user_install_flag=1 
+/home/tomo/.rvm/scripts/initialize:139> : rvm_bin_path:/home/tomo/.rvm/bin rvm_man_path:/home/tomo/.rvm/man rvm_archives_path:/home/tomo/.rvm/archives rvm_docs_path:/home/tomo/.rvm/docs rvm_environments_path:/home/tomo/.rvm/environments rvm_examples_path:/home/tomo/.rvm/examples rvm_gems_path:/home/tomo/.rvm/gems rvm_gemsets_path:/home/tomo/.rvm/gemsets rvm_help_path:/home/tomo/.rvm/help rvm_hooks_path:/home/tomo/.rvm/hooks rvm_lib_path:/home/tomo/.rvm/lib rvm_log_path:/home/tomo/.rvm/log rvm_patches_path:/home/tomo/.rvm/patches rvm_repos_path:/home/tomo/.rvm/repos rvm_rubies_path:/home/tomo/.rvm/rubies rvm_externals_path:/home/tomo/.rvm/externals rvm_rubygems_path:/home/tomo/.rvm/rubygems rvm_src_path:/home/tomo/.rvm/src rvm_tmp_path:/home/tomo/.rvm/tmp rvm_user_path:/home/tomo/.rvm/user rvm_usr_path:/home/tomo/.rvm/usr rvm_wrappers_path:/home/tomo/.rvm/wrappers rvm_verbose_flag:0 rvm_debug_flag:0 rvm_gems_cache_path:/home/tomo/.rvm/gems/cache
+/home/tomo/.rvm/scripts/initialize:166> export -a rvm_configure_flags rvm_patch_names rvm_ree_options rvm_make_flags
+/home/tomo/.rvm/scripts/initialize:167> export rvm_action rvm_alias_expanded rvm_archive_extension rvm_archives_path rvm_bin_flag rvm_bin_path rvm_debug_flag rvm_default_flag rvm_delete_flag rvm_docs_path rvm_docs_type rvm_dump_environment_flag rvm_environments_path rvm_error_message rvm_examples_path rvm_expanding_aliases rvm_file_name rvm_gemdir_flag rvm_gems_cache_path rvm_gems_path rvm_gemset_name rvm_gemset_separator rvm_gemsets_path rvm_gemstone_package_file rvm_gemstone_url rvm_head_flag rvm_help_path rvm_hook rvm_hooks_path rvm_install_on_use_flag rvm_lib_path rvm_llvm_flag rvm_loaded_flag rvm_log_path rvm_niceness rvm_nightly_flag rvm_only_path_flag rvm_parse_break rvm_patch_original_pwd rvm_patches_path rvm_path rvm_pretty_print_flag rvm_proxy rvm_quiet_flag rvm_reload_flag rvm_remove_flag rvm_repos_path rvm_rubies_path rvm_ruby_alias rvm_ruby_args rvm_ruby_binary rvm_ruby_bits rvm_ruby_configure rvm_ruby_file rvm_ruby_gem_home rvm_ruby_gem_path rvm_ruby_global_gems_path rvm_ruby_home rvm_ruby_interpreter rvm_ruby_irbrc rvm_ruby_major_version rvm_ruby_make rvm_ruby_make_install rvm_ruby_minor_version rvm_ruby_mode rvm_ruby_name rvm_ruby_package_file rvm_ruby_package_name rvm_ruby_patch rvm_ruby_patch_level rvm_ruby_release_version rvm_ruby_repo_url rvm_ruby_revision rvm_ruby_selected_flag rvm_ruby_sha rvm_ruby_string rvm_ruby_strings rvm_ruby_tag rvm_ruby_url rvm_ruby_user_tag rvm_ruby_version rvm_script_name rvm_scripts_path rvm_sdk rvm_user_install_flag rvm_silent_flag rvm_src_path rvm_sticky_flag rvm_system_flag rvm_tmp_path rvm_token rvm_trace_flag rvm_use_flag rvm_user_flag rvm_user_path rvm_usr_path rvm_verbose_flag rvm_wrapper_name rvm_wrappers_path rvm_ruby_repo_branch rvm_man_path rvm_architectures rvm_remote_flag
+/home/tomo/.rvm/scripts/base:98> case    (*[[:space:]]selector[[:space:]]*)
+/home/tomo/.rvm/scripts/base:98> case    (*)
+/home/tomo/.rvm/scripts/base:103> source /home/tomo/.rvm/scripts/selector
+/home/tomo/.rvm/scripts/base:104> source /home/tomo/.rvm/scripts/selector_gemsets
+/home/tomo/.rvm/scripts/base:108> typeset -a scripts
+/home/tomo/.rvm/scripts/base:109> scripts=( logging support utility init cleanup env rvmrc install environment gemset db bundler checksum ) 
+/home/tomo/.rvm/scripts/base:112> entry=logging
+/home/tomo/.rvm/scripts/base:113> source /home/tomo/.rvm/scripts/functions/logging
+/home/tomo/.rvm/scripts/functions/logging:40> case xterm-256color (dumb|unknown)
+/home/tomo/.rvm/scripts/functions/logging:40> case xterm-256color (*)
+/home/tomo/.rvm/scripts/functions/logging:49> rvm_error_clr=+/home/tomo/.rvm/scripts/functions/logging:49> /home/tomo/.rvm/scripts/color red
+/home/tomo/.rvm/scripts/functions/logging:49> rvm_error_clr='[31m' 
+/home/tomo/.rvm/scripts/functions/logging:50> rvm_warn_clr=+/home/tomo/.rvm/scripts/functions/logging:50> /home/tomo/.rvm/scripts/color yellow
+/home/tomo/.rvm/scripts/functions/logging:50> rvm_warn_clr='[33m' 
+/home/tomo/.rvm/scripts/functions/logging:51> rvm_debug_clr=+/home/tomo/.rvm/scripts/functions/logging:51> /home/tomo/.rvm/scripts/color magenta
+/home/tomo/.rvm/scripts/functions/logging:51> rvm_debug_clr='[35m' 
+/home/tomo/.rvm/scripts/functions/logging:52> rvm_notify_clr=+/home/tomo/.rvm/scripts/functions/logging:52> /home/tomo/.rvm/scripts/color green
+/home/tomo/.rvm/scripts/functions/logging:52> rvm_notify_clr='[32m' 
+/home/tomo/.rvm/scripts/functions/logging:53> rvm_reset_clr=+/home/tomo/.rvm/scripts/functions/logging:53> /home/tomo/.rvm/scripts/color reset
+/home/tomo/.rvm/scripts/functions/logging:53> rvm_reset_clr='(B[m' 
+/home/tomo/.rvm/scripts/base:112> entry=support
+/home/tomo/.rvm/scripts/base:113> source /home/tomo/.rvm/scripts/functions/support
+/home/tomo/.rvm/scripts/functions/support:3> [[ -z '' ]]
+/home/tomo/.rvm/scripts/functions/support:6> command -v gtar
+/home/tomo/.rvm/scripts/functions/support:7> rvm_tar_command=gtar 
+/home/tomo/.rvm/scripts/functions/support:12> [[ ! " ${rvm_tar_options:-} " -regex-match " --no-same-owner " ]]
+/home/tomo/.rvm/scripts/functions/support:13> gtar --help
+/home/tomo/.rvm/scripts/functions/support:13> GREP_OPTIONS='' grep -- --no-same-owner
+/home/tomo/.rvm/scripts/functions/support:15> rvm_tar_options=' --no-same-owner' 
+/home/tomo/.rvm/scripts/functions/support:16> rvm_tar_options=--no-same-owner 
+/home/tomo/.rvm/scripts/functions/support:22> [[ -n 5.0.0 ]]
+/home/tomo/.rvm/scripts/base:112> entry=utility
+/home/tomo/.rvm/scripts/base:113> source /home/tomo/.rvm/scripts/functions/utility
+/home/tomo/.rvm/scripts/base:112> entry=init
+/home/tomo/.rvm/scripts/base:113> source /home/tomo/.rvm/scripts/functions/init
+/home/tomo/.rvm/scripts/base:112> entry=cleanup
+/home/tomo/.rvm/scripts/base:113> source /home/tomo/.rvm/scripts/functions/cleanup
+/home/tomo/.rvm/scripts/base:112> entry=env
+/home/tomo/.rvm/scripts/base:113> source /home/tomo/.rvm/scripts/functions/env
+/home/tomo/.rvm/scripts/base:112> entry=rvmrc
+/home/tomo/.rvm/scripts/base:113> source /home/tomo/.rvm/scripts/functions/rvmrc
+/home/tomo/.rvm/scripts/functions/rvmrc:3> export escape_flag _first _second
+/home/tomo/.rvm/scripts/functions/rvmrc:4> escape_flag=1 
+/home/tomo/.rvm/scripts/functions/rvmrc:5> _first=1 
+/home/tomo/.rvm/scripts/functions/rvmrc:6> _second=2 
+/home/tomo/.rvm/scripts/base:112> entry=install
+/home/tomo/.rvm/scripts/base:113> source /home/tomo/.rvm/scripts/functions/install
+/home/tomo/.rvm/scripts/base:112> entry=environment
+/home/tomo/.rvm/scripts/base:113> source /home/tomo/.rvm/scripts/functions/environment
+/home/tomo/.rvm/scripts/base:112> entry=gemset
+/home/tomo/.rvm/scripts/base:113> source /home/tomo/.rvm/scripts/functions/gemset
+/home/tomo/.rvm/scripts/base:112> entry=db
+/home/tomo/.rvm/scripts/base:113> source /home/tomo/.rvm/scripts/functions/db
+/home/tomo/.rvm/scripts/base:112> entry=bundler
+/home/tomo/.rvm/scripts/base:113> source /home/tomo/.rvm/scripts/functions/bundler
+/home/tomo/.rvm/scripts/base:112> entry=checksum
+/home/tomo/.rvm/scripts/base:113> source /home/tomo/.rvm/scripts/functions/checksum
+/home/tomo/.rvm/scripts/base:115> unset scripts entry rvm_base_except
+__rvm_initialize:5> __rvm_clean_path
+__rvm_clean_path:2> export PATH
+__rvm_clean_path:3> typeset IFS _iterator_path
+__rvm_clean_path:4> typeset -a _old_path _new_path
+__rvm_clean_path:5> IFS=: 
+__rvm_clean_path:6> _old_path=( ) 
+__rvm_clean_path:7> __rvm_custom_separated_array _old_path : /home/tomo/.rvm/bin:/home/tomo/.rvm/gems/ruby-1.9.3-p327/bin:/home/tomo/.rvm/gems/ruby-1.9.3-p327@global/bin:/home/tomo/.rvm/rubies/ruby-1.9.3-p327/bin:/home/tomo/.zkit_private/bin:/home/tomo/.zkit/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
+__rvm_custom_separated_array:2> typeset IFS
+__rvm_custom_separated_array:3> IFS=: 
+__rvm_custom_separated_array:4> [[ -n 5.0.0 ]]
+__rvm_custom_separated_array:5> eval '_old_path+=( ${=3} )'
+(eval):1> _old_path+=( /home/tomo/.rvm/bin /home/tomo/.rvm/gems/ruby-1.9.3-p327/bin /home/tomo/.rvm/gems/ruby-1.9.3-p327@global/bin /home/tomo/.rvm/rubies/ruby-1.9.3-p327/bin /home/tomo/.zkit_private/bin /home/tomo/.zkit/bin /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin ) 
+__rvm_clean_path:9> _iterator_path=/home/tomo/.rvm/bin
+__rvm_clean_path:11> [[ ":${_new_path[*]}:" -regex-match :${_iterator_path}: ]]
+__rvm_clean_path:11> _new_path+=( /home/tomo/.rvm/bin ) 
+__rvm_clean_path:9> _iterator_path=/home/tomo/.rvm/gems/ruby-1.9.3-p327/bin
+__rvm_clean_path:11> [[ ":${_new_path[*]}:" -regex-match :${_iterator_path}: ]]
+__rvm_clean_path:11> _new_path+=( /home/tomo/.rvm/gems/ruby-1.9.3-p327/bin ) 
+__rvm_clean_path:9> _iterator_path=/home/tomo/.rvm/gems/ruby-1.9.3-p327@global/bin
+__rvm_clean_path:11> [[ ":${_new_path[*]}:" -regex-match :${_iterator_path}: ]]
+__rvm_clean_path:11> _new_path+=( /home/tomo/.rvm/gems/ruby-1.9.3-p327@global/bin ) 
+__rvm_clean_path:9> _iterator_path=/home/tomo/.rvm/rubies/ruby-1.9.3-p327/bin
+__rvm_clean_path:11> [[ ":${_new_path[*]}:" -regex-match :${_iterator_path}: ]]
+__rvm_clean_path:11> _new_path+=( /home/tomo/.rvm/rubies/ruby-1.9.3-p327/bin ) 
+__rvm_clean_path:9> _iterator_path=/home/tomo/.zkit_private/bin
+__rvm_clean_path:11> [[ ":${_new_path[*]}:" -regex-match :${_iterator_path}: ]]
+__rvm_clean_path:11> _new_path+=( /home/tomo/.zkit_private/bin ) 
+__rvm_clean_path:9> _iterator_path=/home/tomo/.zkit/bin
+__rvm_clean_path:11> [[ ":${_new_path[*]}:" -regex-match :${_iterator_path}: ]]
+__rvm_clean_path:11> _new_path+=( /home/tomo/.zkit/bin ) 
+__rvm_clean_path:9> _iterator_path=/usr/local/sbin
+__rvm_clean_path:11> [[ ":${_new_path[*]}:" -regex-match :${_iterator_path}: ]]
+__rvm_clean_path:11> _new_path+=( /usr/local/sbin ) 
+__rvm_clean_path:9> _iterator_path=/usr/local/bin
+__rvm_clean_path:11> [[ ":${_new_path[*]}:" -regex-match :${_iterator_path}: ]]
+__rvm_clean_path:11> _new_path+=( /usr/local/bin ) 
+__rvm_clean_path:9> _iterator_path=/usr/sbin
+__rvm_clean_path:11> [[ ":${_new_path[*]}:" -regex-match :${_iterator_path}: ]]
+__rvm_clean_path:11> _new_path+=( /usr/sbin ) 
+__rvm_clean_path:9> _iterator_path=/usr/bin
+__rvm_clean_path:11> [[ ":${_new_path[*]}:" -regex-match :${_iterator_path}: ]]
+__rvm_clean_path:11> _new_path+=( /usr/bin ) 
+__rvm_clean_path:9> _iterator_path=/sbin
+__rvm_clean_path:11> [[ ":${_new_path[*]}:" -regex-match :${_iterator_path}: ]]
+__rvm_clean_path:11> _new_path+=( /sbin ) 
+__rvm_clean_path:9> _iterator_path=/bin
+__rvm_clean_path:11> [[ ":${_new_path[*]}:" -regex-match :${_iterator_path}: ]]
+__rvm_clean_path:11> _new_path+=( /bin ) 
+__rvm_clean_path:13> PATH=/home/tomo/.rvm/bin:/home/tomo/.rvm/gems/ruby-1.9.3-p327/bin:/home/tomo/.rvm/gems/ruby-1.9.3-p327@global/bin:/home/tomo/.rvm/rubies/ruby-1.9.3-p327/bin:/home/tomo/.zkit_private/bin:/home/tomo/.zkit/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin 
+__rvm_clean_path:14> hash -r
+__rvm_initialize:6> __rvm_conditionally_add_bin_path
+__rvm_conditionally_add_bin_path:2> [[ ":${PATH}:" -regex-match ":${rvm_bin_path}:" ]]
+__rvm_initialize:7> export PATH
+__rvm_initialize:9> [[ ! -d /home/tomo/.rvm/tmp ]]
+__rvm_initialize:14> return 0
+rvm:67> __rvm_setup
+__rvm_setup:2> __variables_definition export
+__variables_definition:2> typeset -a __variables_list __array_list
+__variables_definition:3> typeset __method
+__variables_definition:5> __method=export 
+__variables_definition:9> __variables_list=( rvm_head_flag rvm_ruby_selected_flag rvm_user_install_flag rvm_path_flag rvm_cron_flag rvm_static_flag rvm_default_flag rvm_loaded_flag rvm_llvm_flag rvm_skip_autoreconf_flag rvm_18_flag rvm_19_flag rvm_force_autoconf_flag rvm_dump_environment_flag rvm_verbose_flag rvm_debug_flag rvm_trace_flag rvm_pretty_print_flag rvm_create_flag rvm_remove_flag rvm_gemdir_flag rvm_reload_flag rvm_auto_reload_flag rvm_disable_binary_flag rvm_ignore_gemsets_flag rvm_skip_gemsets_flag rvm_install_on_use_flag rvm_remote_flag rvm_verify_downloads_flag rvm_skip_openssl_flag rvm_gems_cache_path rvm_gems_path rvm_man_path rvm_ruby_gem_path rvm_ruby_log_path rvm_gems_cache_path rvm_archives_path rvm_docs_path rvm_environments_path rvm_examples_path rvm_gems_path rvm_gemsets_path rvm_help_path rvm_hooks_path rvm_lib_path rvm_log_path rvm_patches_path rvm_repos_path rvm_rubies_path rvm_scripts_path rvm_src_path rvm_tmp_path rvm_user_path rvm_usr_path rvm_wrappers_path rvm_externals_path rvm_stored_errexit rvm_ruby_strings rvm_ruby_binary rvm_ruby_gem_home rvm_ruby_home rvm_ruby_interpreter rvm_ruby_irbrc rvm_ruby_major_version rvm_ruby_minor_version rvm_ruby_package_name rvm_ruby_patch_level rvm_ruby_release_version rvm_ruby_repo_url rvm_ruby_repo_branch rvm_ruby_revision rvm_ruby_tag rvm_ruby_sha rvm_ruby_version rvm_ruby_package_file rvm_ruby_name rvm_ruby_name rvm_ruby_args rvm_ruby_user_tag rvm_ruby_patch detected_rvm_ruby_name __rvm_env_loaded next_token rvm_error_message rvm_gemset_name rvm_parse_break rvm_token rvm_action rvm_export_args rvm_gemset_separator rvm_expanding_aliases rvm_architectures rvm_tar_command rvm_tar_options rvm_patch_original_pwd rvm_project_rvmrc rvm_archive_extension rvm_autoinstall_bundler_flag rvm_codesign_identity rvm_expected_gemset_name rvm_with_gems rvm_without_gems rvm_force_clang_ok rvm_ignore_dotfiles_flag ) 
+__variables_definition:34> __array_list=( rvm_patch_names rvm_ree_options rvm_autoconf_flags ) 
+__variables_definition:38> case export (export)
+__variables_definition:39> export -a rvm_patch_names rvm_ree_options rvm_autoconf_flags
+__variables_definition:47> export rvm_head_flag rvm_ruby_selected_flag rvm_user_install_flag rvm_path_flag rvm_cron_flag rvm_static_flag rvm_default_flag rvm_loaded_flag rvm_llvm_flag rvm_skip_autoreconf_flag rvm_18_flag rvm_19_flag rvm_force_autoconf_flag rvm_dump_environment_flag rvm_verbose_flag rvm_debug_flag rvm_trace_flag rvm_pretty_print_flag rvm_create_flag rvm_remove_flag rvm_gemdir_flag rvm_reload_flag rvm_auto_reload_flag rvm_disable_binary_flag rvm_ignore_gemsets_flag rvm_skip_gemsets_flag rvm_install_on_use_flag rvm_remote_flag rvm_verify_downloads_flag rvm_skip_openssl_flag rvm_gems_cache_path rvm_gems_path rvm_man_path rvm_ruby_gem_path rvm_ruby_log_path rvm_gems_cache_path rvm_archives_path rvm_docs_path rvm_environments_path rvm_examples_path rvm_gems_path rvm_gemsets_path rvm_help_path rvm_hooks_path rvm_lib_path rvm_log_path rvm_patches_path rvm_repos_path rvm_rubies_path rvm_scripts_path rvm_src_path rvm_tmp_path rvm_user_path rvm_usr_path rvm_wrappers_path rvm_externals_path rvm_stored_errexit rvm_ruby_strings rvm_ruby_binary rvm_ruby_gem_home rvm_ruby_home rvm_ruby_interpreter rvm_ruby_irbrc rvm_ruby_major_version rvm_ruby_minor_version rvm_ruby_package_name rvm_ruby_patch_level rvm_ruby_release_version rvm_ruby_repo_url rvm_ruby_repo_branch rvm_ruby_revision rvm_ruby_tag rvm_ruby_sha rvm_ruby_version rvm_ruby_package_file rvm_ruby_name rvm_ruby_name rvm_ruby_args rvm_ruby_user_tag rvm_ruby_patch detected_rvm_ruby_name __rvm_env_loaded next_token rvm_error_message rvm_gemset_name rvm_parse_break rvm_token rvm_action rvm_export_args rvm_gemset_separator rvm_expanding_aliases rvm_architectures rvm_tar_command rvm_tar_options rvm_patch_original_pwd rvm_project_rvmrc rvm_archive_extension rvm_autoinstall_bundler_flag rvm_codesign_identity rvm_expected_gemset_name rvm_with_gems rvm_without_gems rvm_force_clang_ok rvm_ignore_dotfiles_flag
+__rvm_setup:5> ((  __rvm_env_loaded != 1  ))
+__rvm_setup:9> [[ -n '' ]]
+__rvm_setup:14> [[ -n 5.0.0 ]]
+__rvm_setup:16> export rvm_zsh_clobber rvm_zsh_nomatch
+__rvm_setup:18> setopt
+__rvm_setup:18> GREP_OPTIONS='' grep -s '^noclobber$'
+__rvm_setup:20> rvm_zsh_clobber=1 
+__rvm_setup:22> setopt clobber
+__rvm_setup:24> setopt
+__rvm_setup:24> GREP_OPTIONS='' grep -s '^nonomatch$'
+__rvm_setup:26> rvm_zsh_nomatch=1 
+__rvm_setup:28> setopt no_nomatch
+rvm:69> next_token=use 
+rvm:70> ((  1 == 0  ))
+rvm:70> shift
+rvm:71> __rvm_parse_args
+__rvm_parse_args:2> typeset _string
+__rvm_parse_args:3> export rvm_ruby_string
+__rvm_parse_args:5> rvm_action='' 
+__rvm_parse_args:6> rvm_parse_break=0 
+__rvm_parse_args:9> [[ " $* " -regex-match " --trace " ]]
+__rvm_parse_args:16> [[ -n use ]]
+__rvm_parse_args:18> rvm_token=use 
+__rvm_parse_args:20> ((  0 > 0  ))
+__rvm_parse_args:25> next_token='' 
+__rvm_parse_args:28> case use ([[:alnum:]]*|@*)
+__rvm_parse_args:31> case use (use)
+__rvm_parse_args:33> rvm_action=use 
+__rvm_parse_args:34> rvm_verbose_flag=1 
+__rvm_parse_args:36> [[ ruby ==  ]]
+__rvm_parse_args:695> [[ -z use ]]
+__rvm_parse_args:698> [[ error == use || 0 -eq 1 || -n '' ]]
+__rvm_parse_args:16> [[ -n '' ]]
+__rvm_parse_args:703> : rvm_ruby_args:0::
+__rvm_parse_args:705> [[ -n '' ]]
+rvm:72> ((  rvm_trace_flag == 0  ))
+rvm:81> result=0 
+rvm:82> : rvm_ruby_args:0::
+rvm:84> ((  result  ))
+rvm:85> case use (use)
+rvm:87> rvm_is_a_shell_function
+rvm_is_a_shell_function:2> typeset _message
+rvm_is_a_shell_function:4> ((  0  ))
+rvm_is_a_shell_function:20> return 0
+rvm:88> __rvm_use
+__rvm_use:2> typeset new_path binary full_binary_path rvm_ruby_gem_home
+__rvm_use:4> __rvm_select
+__rvm_select:2> true
+__rvm_select:3> typeset _original_env_string
+__rvm_select:4> _original_env_string='' 
+__rvm_select:7> export -a rvm_configure_flags rvm_patch_names rvm_ree_options rvm_make_flags
+__rvm_select:8> export GEM_HOME GEM_PATH MY_RUBY_HOME RUBY_VERSION IRBRC
+__rvm_select:9> export rvm_env_string rvm_action rvm_alias_expanded rvm_archive_extension rvm_bin_flag rvm_bin_path rvm_debug_flag rvm_default_flag rvm_delete_flag rvm_docs_type rvm_dump_environment_flag rvm_error_message rvm_expanding_aliases rvm_file_name rvm_gemdir_flag rvm_gemset_name rvm_gemstone_package_file rvm_gemstone_url rvm_head_flag rvm_hook rvm_install_on_use_flag rvm_llvm_flag rvm_loaded_flag rvm_niceness rvm_nightly_flag rvm_only_path_flag rvm_parse_break rvm_patch_original_pwd rvm_pretty_print_flag rvm_proxy rvm_quiet_flag rvm_reload_flag rvm_remove_flag rvm_ruby_alias rvm_ruby_args rvm_ruby_binary rvm_ruby_bits rvm_ruby_configure rvm_ruby_file rvm_ruby_gem_home rvm_ruby_gem_path rvm_ruby_global_gems_path rvm_ruby_home rvm_ruby_interpreter rvm_ruby_irbrc rvm_ruby_major_version rvm_ruby_make rvm_ruby_make_install rvm_ruby_minor_version rvm_ruby_mode rvm_ruby_name rvm_ruby_package_file rvm_ruby_package_name rvm_ruby_patch rvm_ruby_patch_level rvm_ruby_release_version rvm_ruby_repo_url rvm_ruby_revision rvm_ruby_selected_flag rvm_ruby_sha rvm_ruby_string rvm_ruby_strings rvm_ruby_tag rvm_ruby_url rvm_ruby_user_tag rvm_ruby_version rvm_script_name rvm_sdk rvm_silent_flag rvm_sticky_flag rvm_system_flag rvm_token rvm_trace_flag rvm_use_flag rvm_user_flag rvm_verbose_flag rvm_wrapper_name rvm_architectures
+__rvm_select:11> [[ -z '' ]]
+__rvm_select:13> [[ -n '' ]]
+__rvm_select:17> [[ -n '' ]]
+__rvm_select:21> [[ -n '' ]]
+__rvm_select:25> [[ -n '' ]]
+__rvm_select:29> [[ -n '' ]]
+__rvm_select:35> __rvm_ruby_string
+__rvm_ruby_string:10> typeset ruby_string gemset_name expanded_alias_name repo_url branch_name ruby_name
+__rvm_ruby_string:12> __rvm_default_flags
+__rvm_default_flags:2> true 0 0
+__rvm_ruby_string:14> rvm_expanding_aliases='' 
+__rvm_ruby_string:16> true '' '' '' '' '' '' '' @ '' 0 0
+__rvm_ruby_string:22> echo ''
+__rvm_ruby_string:22> GREP_OPTIONS='' grep @
+__rvm_ruby_string:29> ((  rvm_expanding_aliases == 0  ))
+__rvm_ruby_string:30> [[ -n '' ]]
+__rvm_ruby_string:43> echo ''
+__rvm_ruby_string:43> GREP_OPTIONS='' grep @
+__rvm_ruby_string:49> ruby_string='' 
+__rvm_ruby_string:50> gemset_name='' 
+__rvm_ruby_string:51> repo_url='' 
+__rvm_ruby_string:52> branch_name='' 
+__rvm_ruby_string:53> ruby_name='' 
+__rvm_ruby_string:55> __rvm_unset_ruby_variables
+__rvm_unset_ruby_variables:3> unset rvm_env_string rvm_ruby_string rvm_ruby_strings rvm_ruby_binary rvm_ruby_gem_home rvm_ruby_gem_path rvm_ruby_home rvm_ruby_interpreter rvm_ruby_irbrc rvm_ruby_log_path rvm_ruby_major_version rvm_ruby_minor_version rvm_ruby_package_name rvm_ruby_patch_level rvm_ruby_release_version rvm_ruby_repo_url rvm_ruby_repo_branch rvm_ruby_revision rvm_ruby_selected_flag rvm_ruby_tag rvm_ruby_version rvm_head_flag rvm_ruby_package_file rvm_ruby_configure rvm_ruby_name rvm_ruby_url rvm_ruby_global_gems_path rvm_ruby_args rvm_ruby_name rvm_llvm_flag
+__rvm_unset_ruby_variables:4> __rvm_load_rvmrc
+__rvm_load_rvmrc:2> typeset _file
+__rvm_load_rvmrc:3> typeset -a rvm_rvmrc_files
+__rvm_load_rvmrc:4> ((  0 == 1  ))
+__rvm_load_rvmrc:9> [[ -n 077 ]]
+__rvm_load_rvmrc:11> rvm_rvmrc_files=( /etc/rvmrc /home/tomo/.rvmrc ) 
+__rvm_load_rvmrc:12> [[ -n /home/tomo ]]
+__rvm_load_rvmrc:12> [[ /home/tomo/.rvmrc -ef /home/tomo/.rvmrc ]]
+__rvm_load_rvmrc:15> _file=/etc/rvmrc
+__rvm_load_rvmrc:17> [[ -s /etc/rvmrc ]]
+__rvm_load_rvmrc:19> GREP_OPTIONS='' grep '^\s*rvm .*$' /etc/rvmrc
+__rvm_load_rvmrc:28> source /etc/rvmrc
+/etc/rvmrc:1> umask 'u=rwx,g=rwx,o=rx'
+__rvm_load_rvmrc:15> _file=/home/tomo/.rvmrc
+__rvm_load_rvmrc:17> [[ -s /home/tomo/.rvmrc ]]
+__rvm_load_rvmrc:19> GREP_OPTIONS='' grep '^\s*rvm .*$' /home/tomo/.rvmrc
+__rvm_load_rvmrc:28> source /home/tomo/.rvmrc
+/home/tomo/.rvmrc:2> rvm_ignore_dotfiles_flag=1 
+/home/tomo/.rvmrc:3> rvm_auto_reload_flag=1 
+__rvm_load_rvmrc:32> return 0
+__rvm_ruby_string:57> rvm_ruby_repo_url='' 
+__rvm_ruby_string:58> rvm_ruby_repo_branch='' 
+__rvm_ruby_string:59> rvm_ruby_name='' 
+__rvm_ruby_string:61> [[ -n '' ]]
+__rvm_ruby_string:67> strings=( ) 
+__rvm_ruby_string:68> __rvm_custom_separated_array strings - ''
+__rvm_custom_separated_array:2> typeset IFS
+__rvm_custom_separated_array:3> IFS=- 
+__rvm_custom_separated_array:4> [[ -n 5.0.0 ]]
+__rvm_custom_separated_array:5> eval 'strings+=( ${=3} )'
+(eval):1> strings+=( ) 
+__rvm_ruby_string:70> ((  0 == 0  ))
+__rvm_ruby_string:72> echo /home/tomo/.rvm/gems/ruby-1.9.3-p327
+__rvm_ruby_string:72> GREP_OPTIONS='' grep /home/tomo/.rvm/gems
+__rvm_ruby_string:75> strings=ruby-1.9.3-p327 
+__rvm_ruby_string:76> strings=ruby-1.9.3-p327 
+__rvm_ruby_string:77> rvm_ruby_string=ruby-1.9.3-p327 
+__rvm_ruby_string:78> strings=+__rvm_ruby_string:78> echo 'ruby 1.9.3 p327'
+__rvm_ruby_string:78> strings=( ruby 1.9.3 p327 ) 
+__rvm_ruby_string:85> string=ruby
+__rvm_ruby_string:87> case ruby (head)
+__rvm_ruby_string:87> case ruby (system)
+__rvm_ruby_string:87> case ruby (ext|external)
+__rvm_ruby_string:87> case ruby (nightly)
+__rvm_ruby_string:87> case ruby (nightly*|weekly*)
+__rvm_ruby_string:87> case ruby (preview*)
+__rvm_ruby_string:87> case ruby (rc[[:digit:]]*)
+__rvm_ruby_string:87> case ruby ([[:digit:]].[[:digit:]]*)
+__rvm_ruby_string:87> case ruby (p[[:digit:]]*)
+__rvm_ruby_string:87> case ruby ([[:digit:]][[:digit:]]*)
+__rvm_ruby_string:87> case ruby (r[[:digit:]]*)
+__rvm_ruby_string:87> case ruby (s[[:alnum:]]*)
+__rvm_ruby_string:87> case ruby (tv[[:digit:]]*|t[[:digit:]]*)
+__rvm_ruby_string:87> case ruby (m[[:digit:]]*)
+__rvm_ruby_string:87> case ruby (u[[:alnum:]]*)
+__rvm_ruby_string:87> case ruby (a[[:digit:]][[:digit:]]*)
+__rvm_ruby_string:87> case ruby (b[[:digit:]]*)
+__rvm_ruby_string:87> case ruby (opal|ruby|rbx|jruby|macruby|ree|kiji|rubinius|maglev|ironruby|goruby|mruby|tcs|jamesgolick)
+__rvm_ruby_string:247> rvm_ruby_interpreter=ruby 
+__rvm_ruby_string:85> string=1.9.3
+__rvm_ruby_string:87> case 1.9.3 (head)
+__rvm_ruby_string:87> case 1.9.3 (system)
+__rvm_ruby_string:87> case 1.9.3 (ext|external)
+__rvm_ruby_string:87> case 1.9.3 (nightly)
+__rvm_ruby_string:87> case 1.9.3 (nightly*|weekly*)
+__rvm_ruby_string:87> case 1.9.3 (preview*)
+__rvm_ruby_string:87> case 1.9.3 (rc[[:digit:]]*)
+__rvm_ruby_string:87> case 1.9.3 ([[:digit:]].[[:digit:]]*)
+__rvm_ruby_string:140> [[ ruby == rbx ]]
+__rvm_ruby_string:153> case 1.9.3 (0.+([[:digit:]])|0.+([[:digit:]]).+([[:digit:]])|1.+([[:digit:]]).+([[:digit:]])|2.+([[:digit:]]).+([[:digit:]])|1.+([[:digit:]]).+([[:digit:]]).+([[:digit:]])|1.+([[:digit:]]))
+__rvm_ruby_string:155> rvm_ruby_version=1.9.3 
+__rvm_ruby_string:156> rvm_ruby_revision='' 
+__rvm_ruby_string:157> rvm_ruby_tag='' 
+__rvm_ruby_string:85> string=p327
+__rvm_ruby_string:87> case p327 (head)
+__rvm_ruby_string:87> case p327 (system)
+__rvm_ruby_string:87> case p327 (ext|external)
+__rvm_ruby_string:87> case p327 (nightly)
+__rvm_ruby_string:87> case p327 (nightly*|weekly*)
+__rvm_ruby_string:87> case p327 (preview*)
+__rvm_ruby_string:87> case p327 (rc[[:digit:]]*)
+__rvm_ruby_string:87> case p327 ([[:digit:]].[[:digit:]]*)
+__rvm_ruby_string:87> case p327 (p[[:digit:]]*)
+__rvm_ruby_string:181> rvm_ruby_patch_level=p327 
+__rvm_ruby_string:261> [[ -z ruby ]]
+__rvm_ruby_string:278> rvm_ruby_version=1.9.3 
+__rvm_ruby_string:279> [[ -z 1.9.3 ]]
+__rvm_ruby_string:286> [[ -z 1.9.3 ]]
+__rvm_ruby_string:290> rvm_ruby_string=ruby-1.9.3 
+__rvm_ruby_string:293> [[ ruby == ext ]]
+__rvm_ruby_string:297> ((  0 == 1  ))
+__rvm_ruby_string:301> [[ -n '' ]]
+__rvm_ruby_string:305> [[ -n '' ]]
+__rvm_ruby_string:309> [[ -n '' ]]
+__rvm_ruby_string:313> [[ -n p327 ]]
+__rvm_ruby_string:315> rvm_ruby_string=ruby-1.9.3-p327 
+__rvm_ruby_string:360> [[ -n '' ]]
+__rvm_ruby_string:369> detected_rvm_ruby_name='' 
+__rvm_select:37> rvm_archive_extension=tar.gz 
+__rvm_select:39> [[ -z ruby ]]
+__rvm_select:44> case ruby (missing)
+__rvm_select:44> case ruby (opal)
+__rvm_select:44> case ruby (macruby)
+__rvm_select:44> case ruby (rbx|rubinius)
+__rvm_select:44> case ruby (jruby)
+__rvm_select:44> case ruby (maglev)
+__rvm_select:44> case ruby (ironruby)
+__rvm_select:44> case ruby (ree)
+__rvm_select:44> case ruby (kiji)
+__rvm_select:44> case ruby (goruby)
+__rvm_select:44> case ruby (mruby)
+__rvm_select:44> case ruby (tcs)
+__rvm_select:44> case ruby (jamesgolick)
+__rvm_select:44> case ruby (ruby)
+__rvm_select:310> [[ -n p327 ]]
+__rvm_select:312> rvm_ruby_package_file=ruby-1.9.3-p327 
+__rvm_select:313> rvm_ruby_package_name=ruby-1.9.3-p327 
+__rvm_select:319> [[ -z 1.9.3 ]]
+__rvm_select:323> rvm_ruby_repo_url=+__rvm_select:323> __rvm_db ruby_repo_url
+__rvm_db:2> typeset value key variable
+__rvm_db:4> key=ruby_repo_url 
+__rvm_db:5> key=ruby_repo_url 
+__rvm_db:6> variable='' 
+__rvm_db:8> [[ -f /home/tomo/.rvm/user/db ]]
+__rvm_db:9> value=+__rvm_db:9> /home/tomo/.rvm/scripts/db /home/tomo/.rvm/user/db ruby_repo_url
+__rvm_db:9> value='' 
+__rvm_db:12> [[ -z '' ]]
+__rvm_db:13> value=+__rvm_db:13> /home/tomo/.rvm/scripts/db /home/tomo/.rvm/config/db ruby_repo_url
+__rvm_db:13> value=git://github.com/ruby/ruby.git 
+__rvm_db:16> [[ -n git://github.com/ruby/ruby.git ]]
+__rvm_db:17> [[ -z '' ]]
+__rvm_db:18> echo git://github.com/ruby/ruby.git
+__rvm_db:24> return 0
+__rvm_select:323> rvm_ruby_repo_url=git://github.com/ruby/ruby.git 
+__rvm_select:324> ((  0 == 0  ))
+__rvm_select:326> __rvm_version_compare 1.9.3 -lt 1.8.5
+__rvm_version_compare:2> typeset first
+__rvm_version_compare:3> first=+__rvm_version_compare:3> printf %b '1.9.3\n1.8.5\n'
+__rvm_version_compare:3> first=+__rvm_version_compare:3> first=+__rvm_version_compare:3> head -n1
+__rvm_version_compare:3> first=1.8.5 
+__rvm_version_compare:4> case -lt (-eq|==|=)
+__rvm_version_compare:4> case -lt (-gt|\>)
+__rvm_version_compare:4> case -lt (-ge|\>=)
+__rvm_version_compare:4> case -lt (-lt|\<)
+__rvm_version_compare:15> [[ 1.9.3 != 1.8.5 && 1.8.5 == -lt ]]
+__rvm_version_compare:15> return 1
+__rvm_select:330> rvm_archive_extension=tar.bz2 
+__rvm_select:374> [[ -n 1.9.3 ]]
+__rvm_select:376> case 1.9.3 (+([[:digit:]]).+([[:digit:]]).+([[:digit:]]))
+__rvm_select:378> rvm_ruby_release_version=1 
+__rvm_select:379> rvm_ruby_major_version=1.9 
+__rvm_select:379> rvm_ruby_major_version=9 
+__rvm_select:380> rvm_ruby_minor_version=3 
+__rvm_select:390> [[ ruby == ext ]]
+__rvm_select:396> rvm_ruby_package_name=ruby-1.9.3-p327 
+__rvm_select:397> rvm_ruby_home=/home/tomo/.rvm/rubies/ruby-1.9.3-p327 
+__rvm_select:398> rvm_ruby_irbrc=/home/tomo/.rvm/rubies/ruby-1.9.3-p327/.irbrc 
+__rvm_select:399> rvm_ruby_binary=/home/tomo/.rvm/rubies/ruby-1.9.3-p327/bin/ruby 
+__rvm_select:403> [[ maglev == ruby ]]
+__rvm_select:409> [[ system != ruby ]]
+__rvm_select:411> __rvm_gemset_select
+__rvm_gemset_select:2> __rvm_gemset_select_only
+__rvm_gemset_select_only:2> rvm_ruby_gem_home=/home/tomo/.rvm/gems/ruby-1.9.3-p327 
+__rvm_gemset_select_only:4> : rvm_ignore_gemsets_flag:0:
+__rvm_gemset_select_only:5> ((  rvm_ignore_gemsets_flag  ))
+__rvm_gemset_select_only:11> rvm_ruby_global_gems_path=/home/tomo/.rvm/gems/ruby-1.9.3-p327@global 
+__rvm_gemset_select_only:13> __rvm_gemset_handle_default
+__rvm_gemset_handle_default:2> rvm_gemset_name=@@ 
+__rvm_gemset_handle_default:3> rvm_gemset_name=@@ 
+__rvm_gemset_handle_default:4> rvm_gemset_name=@ 
+__rvm_gemset_handle_default:5> rvm_gemset_name='' 
+__rvm_gemset_select_only:14> [[ -z '' ]]
+__rvm_gemset_select_only:17> [[ '' == global ]]
+__rvm_gemset_select_only:21> rvm_ruby_gem_path=/home/tomo/.rvm/gems/ruby-1.9.3-p327:/home/tomo/.rvm/gems/ruby-1.9.3-p327@global 
+__rvm_gemset_select_only:25> [[ -n '' ]]
+__rvm_gemset_select_only:29> rvm_env_string=ruby-1.9.3-p327 
+__rvm_gemset_select:3> __rvm_gemset_select_validation
+__rvm_gemset_select_validation:3> [[ ! -d /home/tomo/.rvm/gems/ruby-1.9.3-p327 ]]
+__rvm_gemset_select_validation:12> ((  0 == 1  ))
+__rvm_gemset_select:4> __rvm_gemset_select_ensure
+__rvm_gemset_select_ensure:2> mkdir -p /home/tomo/.rvm/gems/ruby-1.9.3-p327
+__rvm_gemset_select_ensure:4> __rvm_using_gemset_globalcache
+__rvm_using_gemset_globalcache:2> /home/tomo/.rvm/scripts/db /home/tomo/.rvm/user/db use_gemset_globalcache
+__rvm_using_gemset_globalcache:3> GREP_OPTIONS='' grep '^true$'
+__rvm_using_gemset_globalcache:4> return 1
+__rvm_select:412> case 0 (1|3|4)
+__rvm_select:419> rvm_ruby_selected_flag=1 
+__rvm_select:421> [[ -d /home/tomo/.rvm/log/ruby-1.9.3-p327 ]]
+__rvm_select:423> mkdir -p /home/tomo/.rvm/log/ruby-1.9.3-p327
+__rvm_select:426> rvm_ruby_interpreter=ruby 
+__rvm_use:6> [[ system == ruby ]]
+__rvm_use:10> [[ ! -d /home/tomo/.rvm/rubies/ruby-1.9.3-p327 ]]
+__rvm_use:24> [[ ! -d /home/tomo/.rvm/gems/ruby-1.9.3-p327 || -n '' ]]
+__rvm_use:36> export GEM_HOME GEM_PATH MY_RUBY_HOME RUBY_VERSION IRBRC
+__rvm_use:37> GEM_HOME=/home/tomo/.rvm/gems/ruby-1.9.3-p327 
+__rvm_use:38> GEM_PATH=/home/tomo/.rvm/gems/ruby-1.9.3-p327:/home/tomo/.rvm/gems/ruby-1.9.3-p327@global 
+__rvm_use:39> MY_RUBY_HOME=/home/tomo/.rvm/rubies/ruby-1.9.3-p327 
+__rvm_use:40> RUBY_VERSION=ruby-1.9.3-p327 
+__rvm_use:41> IRBRC=/home/tomo/.rvm/rubies/ruby-1.9.3-p327/.irbrc 
+__rvm_use:42> unset BUNDLE_PATH
+__rvm_use:45> [[ maglev == ruby ]]
+__rvm_use:50> [[ -n /home/tomo/.rvm/rubies/ruby-1.9.3-p327/.irbrc ]]
+__rvm_use:53> __rvm_ensure_has_environment_files
+__rvm_ensure_has_environment_files:2> typeset environment_id file_name directory identifier variable value variables
+__rvm_ensure_has_environment_files:4> environment_id=+__rvm_ensure_has_environment_files:4> __rvm_env_string
+__rvm_env_string:2> typeset _path _string
+__rvm_env_string:4> _path=/home/tomo/.rvm/gems/ruby-1.9.3-p327 
+__rvm_env_string:6> _string=ruby-1.9.3-p327 
+__rvm_env_string:7> _string=ruby-1.9.3-p327 
+__rvm_env_string:9> printf %b ruby-1.9.3-p327
+__rvm_ensure_has_environment_files:4> environment_id=ruby-1.9.3-p327 
+__rvm_ensure_has_environment_files:6> file_name=/home/tomo/.rvm/environments/ruby-1.9.3-p327 
+__rvm_ensure_has_environment_files:8> [[ ! -d /home/tomo/.rvm/environments ]]
+__rvm_ensure_has_environment_files:13> [[ ! -s /home/tomo/.rvm/environments/ruby-1.9.3-p327 ]]
+__rvm_ensure_has_environment_files:13> GREP_OPTIONS='' grep 'rvm_env_string=' /home/tomo/.rvm/environments/ruby-1.9.3-p327
+__rvm_ensure_has_environment_files:35> ((  0 == 1  ))
+__rvm_ensure_has_environment_files:36> [[ ! -f /home/tomo/.rvm/wrappers/ruby-1.9.3-p327/ruby ]]
+__rvm_ensure_has_environment_files:54> return 0
+__rvm_use:55> ((  1 == 1  ))
+__rvm_use:57> rvm_log 'Using /home/tomo/.rvm/gems/ruby-1.9.3-p327'
+rvm_log:2> rvm_pretty_print stdout
+rvm_pretty_print:2> case auto (0|no)
+rvm_pretty_print:2> case auto (1|auto)
+rvm_pretty_print:7> case xterm-256color (dumb|unknown)
+rvm_pretty_print:10> case stdout (stdout)
+rvm_pretty_print:11> [[ -t 1 ]]
+rvm_pretty_print:11> return 1
+rvm_log:4> printf %b 'Using /home/tomo/.rvm/gems/ruby-1.9.3-p327\n'
+__rvm_use:60> [[ /home/tomo/.rvm/gems/ruby-1.9.3-p327 != /home/tomo/.rvm/gems/ruby-1.9.3-p327@global ]]
+__rvm_use:62> new_path=+__rvm_use:62> __rvm_remove_rvm_from_path
+__rvm_remove_rvm_from_path:2> typeset local_rvm_path
+__rvm_remove_rvm_from_path:3> __rvm_remove_from_path '/home/tomo/.rvm/*'
+__rvm_remove_from_path:2> export PATH
+__rvm_remove_from_path:3> typeset _value
+__rvm_remove_from_path:6> PATH=/home/tomo/.rvm/bin:/home/tomo/.rvm/gems/ruby-1.9.3-p327/bin:/home/tomo/.rvm/gems/ruby-1.9.3-p327@global/bin:/home/tomo/.rvm/rubies/ruby-1.9.3-p327/bin:/home/tomo/.zkit_private/bin:/home/tomo/.zkit/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin 
+__rvm_remove_from_path:7> _value='/home/tomo/.rvm/*' 
+__rvm_remove_from_path:9> typeset -a _path
+__rvm_remove_from_path:10> _path=( ) 
+__rvm_remove_from_path:11> __rvm_custom_separated_array _path : /home/tomo/.rvm/bin:/home/tomo/.rvm/gems/ruby-1.9.3-p327/bin:/home/tomo/.rvm/gems/ruby-1.9.3-p327@global/bin:/home/tomo/.rvm/rubies/ruby-1.9.3-p327/bin:/home/tomo/.zkit_private/bin:/home/tomo/.zkit/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
+__rvm_custom_separated_array:2> typeset IFS
+__rvm_custom_separated_array:3> IFS=: 
+__rvm_custom_separated_array:4> [[ -n 5.0.0 ]]
+__rvm_custom_separated_array:5> eval '_path+=( ${=3} )'
+(eval):1> _path+=( /home/tomo/.rvm/bin /home/tomo/.rvm/gems/ruby-1.9.3-p327/bin /home/tomo/.rvm/gems/ruby-1.9.3-p327@global/bin /home/tomo/.rvm/rubies/ruby-1.9.3-p327/bin /home/tomo/.zkit_private/bin /home/tomo/.zkit/bin /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin ) 
+__rvm_remove_from_path:12> __rvm_remove_from_array _path '/home/tomo/.rvm/*' /home/tomo/.rvm/bin /home/tomo/.rvm/gems/ruby-1.9.3-p327/bin /home/tomo/.rvm/gems/ruby-1.9.3-p327@global/bin /home/tomo/.rvm/rubies/ruby-1.9.3-p327/bin /home/tomo/.zkit_private/bin /home/tomo/.zkit/bin /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin
+__rvm_remove_from_array:2> typeset _array_name _search _iterator
+__rvm_remove_from_array:3> typeset -a _temp_array
+__rvm_remove_from_array:4> _array_name=_path 
+__rvm_remove_from_array:5> _search='/home/tomo/.rvm/*' 
+__rvm_remove_from_array:6> shift 2
+__rvm_remove_from_array:7> _temp_array=( ) 
+__rvm_remove_from_array:8> _iterator=/home/tomo/.rvm/bin
+__rvm_remove_from_array:10> __rvm_string_match /home/tomo/.rvm/bin '/home/tomo/.rvm/*'
+__rvm_string_match:2> typeset _string
+__rvm_string_match:3> _string=/home/tomo/.rvm/bin 
+__rvm_string_match:4> shift
+__rvm_string_match:5> ((  1  ))
+__rvm_string_match:7> eval '      case "${_string}" in        (/home/tomo/.rvm/*) return 0 ;;      esac      '
+(eval):1> case /home/tomo/.rvm/bin (/home/tomo/.rvm/*)
+(eval):1> return 0
+__rvm_remove_from_array:8> _iterator=/home/tomo/.rvm/gems/ruby-1.9.3-p327/bin
+__rvm_remove_from_array:10> __rvm_string_match /home/tomo/.rvm/gems/ruby-1.9.3-p327/bin '/home/tomo/.rvm/*'
+__rvm_string_match:2> typeset _string
+__rvm_string_match:3> _string=/home/tomo/.rvm/gems/ruby-1.9.3-p327/bin 
+__rvm_string_match:4> shift
+__rvm_string_match:5> ((  1  ))
+__rvm_string_match:7> eval '      case "${_string}" in        (/home/tomo/.rvm/*) return 0 ;;      esac      '
+(eval):1> case /home/tomo/.rvm/gems/ruby-1.9.3-p327/bin (/home/tomo/.rvm/*)
+(eval):1> return 0
+__rvm_remove_from_array:8> _iterator=/home/tomo/.rvm/gems/ruby-1.9.3-p327@global/bin
+__rvm_remove_from_array:10> __rvm_string_match /home/tomo/.rvm/gems/ruby-1.9.3-p327@global/bin '/home/tomo/.rvm/*'
+__rvm_string_match:2> typeset _string
+__rvm_string_match:3> _string=/home/tomo/.rvm/gems/ruby-1.9.3-p327@global/bin 
+__rvm_string_match:4> shift
+__rvm_string_match:5> ((  1  ))
+__rvm_string_match:7> eval '      case "${_string}" in        (/home/tomo/.rvm/*) return 0 ;;      esac      '
+(eval):1> case /home/tomo/.rvm/gems/ruby-1.9.3-p327@global/bin (/home/tomo/.rvm/*)
+(eval):1> return 0
+__rvm_remove_from_array:8> _iterator=/home/tomo/.rvm/rubies/ruby-1.9.3-p327/bin
+__rvm_remove_from_array:10> __rvm_string_match /home/tomo/.rvm/rubies/ruby-1.9.3-p327/bin '/home/tomo/.rvm/*'
+__rvm_string_match:2> typeset _string
+__rvm_string_match:3> _string=/home/tomo/.rvm/rubies/ruby-1.9.3-p327/bin 
+__rvm_string_match:4> shift
+__rvm_string_match:5> ((  1  ))
+__rvm_string_match:7> eval '      case "${_string}" in        (/home/tomo/.rvm/*) return 0 ;;      esac      '
+(eval):1> case /home/tomo/.rvm/rubies/ruby-1.9.3-p327/bin (/home/tomo/.rvm/*)
+(eval):1> return 0
+__rvm_remove_from_array:8> _iterator=/home/tomo/.zkit_private/bin
+__rvm_remove_from_array:10> __rvm_string_match /home/tomo/.zkit_private/bin '/home/tomo/.rvm/*'
+__rvm_string_match:2> typeset _string
+__rvm_string_match:3> _string=/home/tomo/.zkit_private/bin 
+__rvm_string_match:4> shift
+__rvm_string_match:5> ((  1  ))
+__rvm_string_match:7> eval '      case "${_string}" in        (/home/tomo/.rvm/*) return 0 ;;      esac      '
+(eval):1> case /home/tomo/.zkit_private/bin (/home/tomo/.rvm/*)
+__rvm_string_match:12> shift
+__rvm_string_match:5> ((  0  ))
+__rvm_string_match:14> return 1
+__rvm_remove_from_array:10> _temp_array+=( /home/tomo/.zkit_private/bin ) 
+__rvm_remove_from_array:8> _iterator=/home/tomo/.zkit/bin
+__rvm_remove_from_array:10> __rvm_string_match /home/tomo/.zkit/bin '/home/tomo/.rvm/*'
+__rvm_string_match:2> typeset _string
+__rvm_string_match:3> _string=/home/tomo/.zkit/bin 
+__rvm_string_match:4> shift
+__rvm_string_match:5> ((  1  ))
+__rvm_string_match:7> eval '      case "${_string}" in        (/home/tomo/.rvm/*) return 0 ;;      esac      '
+(eval):1> case /home/tomo/.zkit/bin (/home/tomo/.rvm/*)
+__rvm_string_match:12> shift
+__rvm_string_match:5> ((  0  ))
+__rvm_string_match:14> return 1
+__rvm_remove_from_array:10> _temp_array+=( /home/tomo/.zkit/bin ) 
+__rvm_remove_from_array:8> _iterator=/usr/local/sbin
+__rvm_remove_from_array:10> __rvm_string_match /usr/local/sbin '/home/tomo/.rvm/*'
+__rvm_string_match:2> typeset _string
+__rvm_string_match:3> _string=/usr/local/sbin 
+__rvm_string_match:4> shift
+__rvm_string_match:5> ((  1  ))
+__rvm_string_match:7> eval '      case "${_string}" in        (/home/tomo/.rvm/*) return 0 ;;      esac      '
+(eval):1> case /usr/local/sbin (/home/tomo/.rvm/*)
+__rvm_string_match:12> shift
+__rvm_string_match:5> ((  0  ))
+__rvm_string_match:14> return 1
+__rvm_remove_from_array:10> _temp_array+=( /usr/local/sbin ) 
+__rvm_remove_from_array:8> _iterator=/usr/local/bin
+__rvm_remove_from_array:10> __rvm_string_match /usr/local/bin '/home/tomo/.rvm/*'
+__rvm_string_match:2> typeset _string
+__rvm_string_match:3> _string=/usr/local/bin 
+__rvm_string_match:4> shift
+__rvm_string_match:5> ((  1  ))
+__rvm_string_match:7> eval '      case "${_string}" in        (/home/tomo/.rvm/*) return 0 ;;      esac      '
+(eval):1> case /usr/local/bin (/home/tomo/.rvm/*)
+__rvm_string_match:12> shift
+__rvm_string_match:5> ((  0  ))
+__rvm_string_match:14> return 1
+__rvm_remove_from_array:10> _temp_array+=( /usr/local/bin ) 
+__rvm_remove_from_array:8> _iterator=/usr/sbin
+__rvm_remove_from_array:10> __rvm_string_match /usr/sbin '/home/tomo/.rvm/*'
+__rvm_string_match:2> typeset _string
+__rvm_string_match:3> _string=/usr/sbin 
+__rvm_string_match:4> shift
+__rvm_string_match:5> ((  1  ))
+__rvm_string_match:7> eval '      case "${_string}" in        (/home/tomo/.rvm/*) return 0 ;;      esac      '
+(eval):1> case /usr/sbin (/home/tomo/.rvm/*)
+__rvm_string_match:12> shift
+__rvm_string_match:5> ((  0  ))
+__rvm_string_match:14> return 1
+__rvm_remove_from_array:10> _temp_array+=( /usr/sbin ) 
+__rvm_remove_from_array:8> _iterator=/usr/bin
+__rvm_remove_from_array:10> __rvm_string_match /usr/bin '/home/tomo/.rvm/*'
+__rvm_string_match:2> typeset _string
+__rvm_string_match:3> _string=/usr/bin 
+__rvm_string_match:4> shift
+__rvm_string_match:5> ((  1  ))
+__rvm_string_match:7> eval '      case "${_string}" in        (/home/tomo/.rvm/*) return 0 ;;      esac      '
+(eval):1> case /usr/bin (/home/tomo/.rvm/*)
+__rvm_string_match:12> shift
+__rvm_string_match:5> ((  0  ))
+__rvm_string_match:14> return 1
+__rvm_remove_from_array:10> _temp_array+=( /usr/bin ) 
+__rvm_remove_from_array:8> _iterator=/sbin
+__rvm_remove_from_array:10> __rvm_string_match /sbin '/home/tomo/.rvm/*'
+__rvm_string_match:2> typeset _string
+__rvm_string_match:3> _string=/sbin 
+__rvm_string_match:4> shift
+__rvm_string_match:5> ((  1  ))
+__rvm_string_match:7> eval '      case "${_string}" in        (/home/tomo/.rvm/*) return 0 ;;      esac      '
+(eval):1> case /sbin (/home/tomo/.rvm/*)
+__rvm_string_match:12> shift
+__rvm_string_match:5> ((  0  ))
+__rvm_string_match:14> return 1
+__rvm_remove_from_array:10> _temp_array+=( /sbin ) 
+__rvm_remove_from_array:8> _iterator=/bin
+__rvm_remove_from_array:10> __rvm_string_match /bin '/home/tomo/.rvm/*'
+__rvm_string_match:2> typeset _string
+__rvm_string_match:3> _string=/bin 
+__rvm_string_match:4> shift
+__rvm_string_match:5> ((  1  ))
+__rvm_string_match:7> eval '      case "${_string}" in        (/home/tomo/.rvm/*) return 0 ;;      esac      '
+(eval):1> case /bin (/home/tomo/.rvm/*)
+__rvm_string_match:12> shift
+__rvm_string_match:5> ((  0  ))
+__rvm_string_match:14> return 1
+__rvm_remove_from_array:10> _temp_array+=( /bin ) 
+__rvm_remove_from_array:12> eval '_path=( "${_temp_array[@]}" )'
+(eval):1> _path=( /home/tomo/.zkit_private/bin /home/tomo/.zkit/bin /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin ) 
+__rvm_remove_from_path:13> __rvm_join_array PATH : _path
+__rvm_join_array:2> typeset IFS
+__rvm_join_array:3> IFS=: 
+__rvm_join_array:4> eval 'PATH="${_path[*]}"'
+(eval):1> PATH=/home/tomo/.zkit_private/bin:/home/tomo/.zkit/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin 
+__rvm_remove_rvm_from_path:4> __rvm_remove_from_path /home/tomo/.rvm/bin
+__rvm_remove_from_path:2> export PATH
+__rvm_remove_from_path:3> typeset _value
+__rvm_remove_from_path:6> PATH=/home/tomo/.zkit_private/bin:/home/tomo/.zkit/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin 
+__rvm_remove_from_path:7> _value=/home/tomo/.rvm/bin 
+__rvm_remove_from_path:9> typeset -a _path
+__rvm_remove_from_path:10> _path=( ) 
+__rvm_remove_from_path:11> __rvm_custom_separated_array _path : /home/tomo/.zkit_private/bin:/home/tomo/.zkit/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
+__rvm_custom_separated_array:2> typeset IFS
+__rvm_custom_separated_array:3> IFS=: 
+__rvm_custom_separated_array:4> [[ -n 5.0.0 ]]
+__rvm_custom_separated_array:5> eval '_path+=( ${=3} )'
+(eval):1> _path+=( /home/tomo/.zkit_private/bin /home/tomo/.zkit/bin /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin ) 
+__rvm_remove_from_path:12> __rvm_remove_from_array _path /home/tomo/.rvm/bin /home/tomo/.zkit_private/bin /home/tomo/.zkit/bin /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin
+__rvm_remove_from_array:2> typeset _array_name _search _iterator
+__rvm_remove_from_array:3> typeset -a _temp_array
+__rvm_remove_from_array:4> _array_name=_path 
+__rvm_remove_from_array:5> _search=/home/tomo/.rvm/bin 
+__rvm_remove_from_array:6> shift 2
+__rvm_remove_from_array:7> _temp_array=( ) 
+__rvm_remove_from_array:8> _iterator=/home/tomo/.zkit_private/bin
+__rvm_remove_from_array:10> __rvm_string_match /home/tomo/.zkit_private/bin /home/tomo/.rvm/bin
+__rvm_string_match:2> typeset _string
+__rvm_string_match:3> _string=/home/tomo/.zkit_private/bin 
+__rvm_string_match:4> shift
+__rvm_string_match:5> ((  1  ))
+__rvm_string_match:7> eval '      case "${_string}" in        (/home/tomo/.rvm/bin) return 0 ;;      esac      '
+(eval):1> case /home/tomo/.zkit_private/bin (/home/tomo/.rvm/bin)
+__rvm_string_match:12> shift
+__rvm_string_match:5> ((  0  ))
+__rvm_string_match:14> return 1
+__rvm_remove_from_array:10> _temp_array+=( /home/tomo/.zkit_private/bin ) 
+__rvm_remove_from_array:8> _iterator=/home/tomo/.zkit/bin
+__rvm_remove_from_array:10> __rvm_string_match /home/tomo/.zkit/bin /home/tomo/.rvm/bin
+__rvm_string_match:2> typeset _string
+__rvm_string_match:3> _string=/home/tomo/.zkit/bin 
+__rvm_string_match:4> shift
+__rvm_string_match:5> ((  1  ))
+__rvm_string_match:7> eval '      case "${_string}" in        (/home/tomo/.rvm/bin) return 0 ;;      esac      '
+(eval):1> case /home/tomo/.zkit/bin (/home/tomo/.rvm/bin)
+__rvm_string_match:12> shift
+__rvm_string_match:5> ((  0  ))
+__rvm_string_match:14> return 1
+__rvm_remove_from_array:10> _temp_array+=( /home/tomo/.zkit/bin ) 
+__rvm_remove_from_array:8> _iterator=/usr/local/sbin
+__rvm_remove_from_array:10> __rvm_string_match /usr/local/sbin /home/tomo/.rvm/bin
+__rvm_string_match:2> typeset _string
+__rvm_string_match:3> _string=/usr/local/sbin 
+__rvm_string_match:4> shift
+__rvm_string_match:5> ((  1  ))
+__rvm_string_match:7> eval '      case "${_string}" in        (/home/tomo/.rvm/bin) return 0 ;;      esac      '
+(eval):1> case /usr/local/sbin (/home/tomo/.rvm/bin)
+__rvm_string_match:12> shift
+__rvm_string_match:5> ((  0  ))
+__rvm_string_match:14> return 1
+__rvm_remove_from_array:10> _temp_array+=( /usr/local/sbin ) 
+__rvm_remove_from_array:8> _iterator=/usr/local/bin
+__rvm_remove_from_array:10> __rvm_string_match /usr/local/bin /home/tomo/.rvm/bin
+__rvm_string_match:2> typeset _string
+__rvm_string_match:3> _string=/usr/local/bin 
+__rvm_string_match:4> shift
+__rvm_string_match:5> ((  1  ))
+__rvm_string_match:7> eval '      case "${_string}" in        (/home/tomo/.rvm/bin) return 0 ;;      esac      '
+(eval):1> case /usr/local/bin (/home/tomo/.rvm/bin)
+__rvm_string_match:12> shift
+__rvm_string_match:5> ((  0  ))
+__rvm_string_match:14> return 1
+__rvm_remove_from_array:10> _temp_array+=( /usr/local/bin ) 
+__rvm_remove_from_array:8> _iterator=/usr/sbin
+__rvm_remove_from_array:10> __rvm_string_match /usr/sbin /home/tomo/.rvm/bin
+__rvm_string_match:2> typeset _string
+__rvm_string_match:3> _string=/usr/sbin 
+__rvm_string_match:4> shift
+__rvm_string_match:5> ((  1  ))
+__rvm_string_match:7> eval '      case "${_string}" in        (/home/tomo/.rvm/bin) return 0 ;;      esac      '
+(eval):1> case /usr/sbin (/home/tomo/.rvm/bin)
+__rvm_string_match:12> shift
+__rvm_string_match:5> ((  0  ))
+__rvm_string_match:14> return 1
+__rvm_remove_from_array:10> _temp_array+=( /usr/sbin ) 
+__rvm_remove_from_array:8> _iterator=/usr/bin
+__rvm_remove_from_array:10> __rvm_string_match /usr/bin /home/tomo/.rvm/bin
+__rvm_string_match:2> typeset _string
+__rvm_string_match:3> _string=/usr/bin 
+__rvm_string_match:4> shift
+__rvm_string_match:5> ((  1  ))
+__rvm_string_match:7> eval '      case "${_string}" in        (/home/tomo/.rvm/bin) return 0 ;;      esac      '
+(eval):1> case /usr/bin (/home/tomo/.rvm/bin)
+__rvm_string_match:12> shift
+__rvm_string_match:5> ((  0  ))
+__rvm_string_match:14> return 1
+__rvm_remove_from_array:10> _temp_array+=( /usr/bin ) 
+__rvm_remove_from_array:8> _iterator=/sbin
+__rvm_remove_from_array:10> __rvm_string_match /sbin /home/tomo/.rvm/bin
+__rvm_string_match:2> typeset _string
+__rvm_string_match:3> _string=/sbin 
+__rvm_string_match:4> shift
+__rvm_string_match:5> ((  1  ))
+__rvm_string_match:7> eval '      case "${_string}" in        (/home/tomo/.rvm/bin) return 0 ;;      esac      '
+(eval):1> case /sbin (/home/tomo/.rvm/bin)
+__rvm_string_match:12> shift
+__rvm_string_match:5> ((  0  ))
+__rvm_string_match:14> return 1
+__rvm_remove_from_array:10> _temp_array+=( /sbin ) 
+__rvm_remove_from_array:8> _iterator=/bin
+__rvm_remove_from_array:10> __rvm_string_match /bin /home/tomo/.rvm/bin
+__rvm_string_match:2> typeset _string
+__rvm_string_match:3> _string=/bin 
+__rvm_string_match:4> shift
+__rvm_string_match:5> ((  1  ))
+__rvm_string_match:7> eval '      case "${_string}" in        (/home/tomo/.rvm/bin) return 0 ;;      esac      '
+(eval):1> case /bin (/home/tomo/.rvm/bin)
+__rvm_string_match:12> shift
+__rvm_string_match:5> ((  0  ))
+__rvm_string_match:14> return 1
+__rvm_remove_from_array:10> _temp_array+=( /bin ) 
+__rvm_remove_from_array:12> eval '_path=( "${_temp_array[@]}" )'
+(eval):1> _path=( /home/tomo/.zkit_private/bin /home/tomo/.zkit/bin /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin ) 
+__rvm_remove_from_path:13> __rvm_join_array PATH : _path
+__rvm_join_array:2> typeset IFS
+__rvm_join_array:3> IFS=: 
+__rvm_join_array:4> eval 'PATH="${_path[*]}"'
+(eval):1> PATH=/home/tomo/.zkit_private/bin:/home/tomo/.zkit/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin 
+__rvm_remove_rvm_from_path:6> local_rvm_path=+__rvm_remove_rvm_from_path:6> __rvm_which rvm
+__rvm_remove_rvm_from_path:6> local_rvm_path='' 
+__rvm_remove_rvm_from_path:9> hash -r
+__rvm_use:62> printf %b /home/tomo/.zkit_private/bin:/home/tomo/.zkit/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
+__rvm_use:62> new_path=/home/tomo/.rvm/gems/ruby-1.9.3-p327/bin:/home/tomo/.rvm/gems/ruby-1.9.3-p327@global/bin:/home/tomo/.rvm/rubies/ruby-1.9.3-p327/bin:/home/tomo/.rvm/bin:/home/tomo/.zkit_private/bin:/home/tomo/.zkit/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin 
+__rvm_use:68> [[ -z ruby-1.9.3-p327 ]]
+__rvm_use:68> export rvm_ruby_string
+__rvm_use:69> [[ -z '' ]]
+__rvm_use:71> [[ -n /home/tomo/.rvm/gems/ruby-1.9.3-p327/bin:/home/tomo/.rvm/gems/ruby-1.9.3-p327@global/bin:/home/tomo/.rvm/rubies/ruby-1.9.3-p327/bin:/home/tomo/.rvm/bin:/home/tomo/.zkit_private/bin:/home/tomo/.zkit/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin ]]
+__rvm_use:73> export 'PATH=/home/tomo/.rvm/gems/ruby-1.9.3-p327/bin:/home/tomo/.rvm/gems/ruby-1.9.3-p327@global/bin:/home/tomo/.rvm/rubies/ruby-1.9.3-p327/bin:/home/tomo/.rvm/bin:/home/tomo/.zkit_private/bin:/home/tomo/.zkit/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin'
+__rvm_use:74> unset new_path
+__rvm_use:75> hash -r
+__rvm_use:78> [[ ruby-1.9.3-p327 != system ]]
+__rvm_use:80> case 0 (rvmrc|versions_conf|ruby_version)
+__rvm_use:86> typeset environment_id
+__rvm_use:87> environment_id=+__rvm_use:87> __rvm_env_string
+__rvm_env_string:2> typeset _path _string
+__rvm_env_string:4> _path=/home/tomo/.rvm/gems/ruby-1.9.3-p327 
+__rvm_env_string:6> _string=ruby-1.9.3-p327 
+__rvm_env_string:7> _string=ruby-1.9.3-p327 
+__rvm_env_string:9> printf %b ruby-1.9.3-p327
+__rvm_use:87> environment_id=ruby-1.9.3-p327 
+__rvm_use:89> ((  0 == 1  ))
+__rvm_use:98> rvm_default_flag=0 
+__rvm_use:100> [[ -n '' ]]
+__rvm_use:106> [[ -n '' ]]
+__rvm_use:123> rvm_hook=after_use 
+__rvm_use:124> source /home/tomo/.rvm/scripts/hook
+/home/tomo/.rvm/scripts/hook:4> typeset old_rvm_verbose_flag old_rvm_debug_flag
+/home/tomo/.rvm/scripts/hook:5> old_rvm_verbose_flag=1 
+/home/tomo/.rvm/scripts/hook:6> old_rvm_debug_flag=0 
+/home/tomo/.rvm/scripts/hook:9> typeset rvm_verbose_flag rvm_debug_flag hooks
+/home/tomo/.rvm/scripts/hook:11> true rvm_verbose_flag:1 rvm_debug_flag:0 rvm_hook:after_use
+/home/tomo/.rvm/scripts/hook:15> [[ -n after_use ]]
+/home/tomo/.rvm/scripts/hook:17> hooks=( /home/tomo/.rvm/hooks ) 
+/home/tomo/.rvm/scripts/hook:18> [[ /home/tomo/.zkit/.rvm/hooks == /home/tomo/.rvm/hooks ]]
+/home/tomo/.rvm/scripts/hook:19> hooks+=( /home/tomo/.zkit/.rvm/hooks ) 
+/home/tomo/.rvm/scripts/hook:21> _hooks_list=+/home/tomo/.rvm/scripts/hook:22> find -L /home/tomo/.rvm/hooks /home/tomo/.zkit/.rvm/hooks -iname 'after_use*' -type f
+/home/tomo/.rvm/scripts/hook:21> _hooks_list=( /home/tomo/.rvm/hooks/after_use_rbx_opts /home/tomo/.rvm/hooks/after_use_jruby_opts /home/tomo/.rvm/hooks/after_use_maglev /home/tomo/.rvm/hooks/after_use_jruby ) 
+/home/tomo/.rvm/scripts/hook:25> hook=/home/tomo/.rvm/hooks/after_use_rbx_opts
+/home/tomo/.rvm/scripts/hook:27> [[ -x /home/tomo/.rvm/hooks/after_use_rbx_opts || after_use_rbx_opts == after_use ]]
+/home/tomo/.rvm/scripts/hook:25> hook=/home/tomo/.rvm/hooks/after_use_jruby_opts
+/home/tomo/.rvm/scripts/hook:27> [[ -x /home/tomo/.rvm/hooks/after_use_jruby_opts || after_use_jruby_opts == after_use ]]
+/home/tomo/.rvm/scripts/hook:25> hook=/home/tomo/.rvm/hooks/after_use_maglev
+/home/tomo/.rvm/scripts/hook:27> [[ -x /home/tomo/.rvm/hooks/after_use_maglev ]]
+/home/tomo/.rvm/scripts/hook:29> rvm_debug 'Running /home/tomo/.rvm/hooks/after_use_maglev'
+rvm_debug:2> ((  0  ))
+rvm_debug:2> return 0
+/home/tomo/.rvm/scripts/hook:30> __rvm_conditionally_do_with_env . /home/tomo/.rvm/hooks/after_use_maglev
+__rvm_conditionally_do_with_env:2> ((  __rvm_env_loaded > 0  ))
+__rvm_conditionally_do_with_env:4> . /home/tomo/.rvm/hooks/after_use_maglev
+/home/tomo/.rvm/hooks/after_use_maglev:3> . /home/tomo/.rvm/scripts/functions/hooks/maglev
+/home/tomo/.rvm/hooks/after_use_maglev:6> [[ "${rvm_ruby_string}" -regex-match "maglev" ]]
+/home/tomo/.rvm/scripts/hook:25> hook=/home/tomo/.rvm/hooks/after_use_jruby
+/home/tomo/.rvm/scripts/hook:27> [[ -x /home/tomo/.rvm/hooks/after_use_jruby || after_use_jruby == after_use ]]
+/home/tomo/.rvm/scripts/hook:35> unset rvm_hook hooks _hooks_list hook
+__rvm_use:125> return 0
+rvm:334> current_result=0 
+rvm:335> ((  result  ))
+rvm:335> result=0 
+rvm:337> ((  result  ))
+rvm:338> case use (reinstall|try_install|install)
+rvm:350> current_result=0 
+rvm:351> ((  result  ))
+rvm:351> result=0 
+rvm:353> typeset __local_rvm_trace_flag
+rvm:354> __local_rvm_trace_flag=0 
+rvm:357> [[ 0 -eq 1 ]]
+rvm:369> __rvm_teardown
+__rvm_teardown:2> command -v __rvm_cleanup_tmp
+__rvm_teardown:4> __rvm_cleanup_tmp
+__rvm_cleanup_tmp:2> [[ -d /home/tomo/.rvm/tmp/ ]]
+__rvm_cleanup_tmp:4> case /home/tomo/.rvm/tmp (*tmp)
+__rvm_cleanup_tmp:6> __rvm_rm_rf '/home/tomo/.rvm/tmp/30453*'
+__rvm_rm_rf:2> __rvm_rm_rf_verbose '/home/tomo/.rvm/tmp/30453*'
+__rvm_rm_rf_verbose:2> typeset result target
+__rvm_rm_rf_verbose:3> result=1 
+__rvm_rm_rf_verbose:4> target='/home/tomo/.rvm/tmp/30453*' 
+__rvm_rm_rf_verbose:7> [[ -n 5.0.0 ]]
+__rvm_rm_rf_verbose:9> setopt extendedglob
+__rvm_rm_rf_verbose:18> case /home/tomo/.rvm/tmp/30453* (*(/|.)@(|/Applications|/Developer|/Guides|/Information|/Library|/Network|/System|/User|/Users|/Volumes|/backups|/bdsm|/bin|/boot|/cores|/data|/dev|/etc|/home|/lib|/lib64|/mach_kernel|/media|/misc|/mnt|/net|/opt|/private|/proc|/root|/sbin|/selinux|/srv|/sys|/tmp|/usr|/var))
+__rvm_rm_rf_verbose:18> case /home/tomo/.rvm/tmp/30453* (*)
+__rvm_rm_rf_verbose:23> [[ -n '/home/tomo/.rvm/tmp/30453*' ]]
+__rvm_rm_rf_verbose:25> [[ -d '/home/tomo/.rvm/tmp/30453*' ]]
+__rvm_rm_rf_verbose:29> [[ -f '/home/tomo/.rvm/tmp/30453*' || -L '/home/tomo/.rvm/tmp/30453*' ]]
+__rvm_rm_rf_verbose:34> result=0 
+__rvm_rm_rf_verbose:39> return 0
+__rvm_cleanup_tmp:10> return 0
+__rvm_teardown:7> export __rvm_env_loaded
+__rvm_teardown:9> : __rvm_env_loaded:1:
+__rvm_teardown:11> : __rvm_env_loaded:1:
+__rvm_teardown:13> : __rvm_env_loaded:0:
+__rvm_teardown:15> [[ -z /home/tomo/.rvm/tmp ]]
+__rvm_teardown:15> ((  __rvm_env_loaded > 0  ))
+__rvm_teardown:20> [[ -n '' ]]
+__rvm_teardown:25> [[ -n 5.0.0 ]]
+__rvm_teardown:28> ((  rvm_zsh_clobber == 0  ))
+__rvm_teardown:30> ((  rvm_zsh_nomatch == 0  ))
+__rvm_teardown:30> setopt nomatch
+__rvm_teardown:32> unset rvm_zsh_clobber rvm_zsh_nomatch
+__rvm_teardown:35> [[ -n 077 ]]
+__rvm_teardown:37> umask 077
+__rvm_teardown:38> unset rvm_stored_umask
+__rvm_teardown:41> [[ '' == 1 ]]
+__rvm_teardown:45> __variables_definition unset
+__variables_definition:2> typeset -a __variables_list __array_list
+__variables_definition:3> typeset __method
+__variables_definition:5> __method=unset 
+__variables_definition:9> __variables_list=( rvm_head_flag rvm_ruby_selected_flag rvm_user_install_flag rvm_path_flag rvm_cron_flag rvm_static_flag rvm_default_flag rvm_loaded_flag rvm_llvm_flag rvm_skip_autoreconf_flag rvm_18_flag rvm_19_flag rvm_force_autoconf_flag rvm_dump_environment_flag rvm_verbose_flag rvm_debug_flag rvm_trace_flag rvm_pretty_print_flag rvm_create_flag rvm_remove_flag rvm_gemdir_flag rvm_reload_flag rvm_auto_reload_flag rvm_disable_binary_flag rvm_ignore_gemsets_flag rvm_skip_gemsets_flag rvm_install_on_use_flag rvm_remote_flag rvm_verify_downloads_flag rvm_skip_openssl_flag rvm_gems_cache_path rvm_gems_path rvm_man_path rvm_ruby_gem_path rvm_ruby_log_path rvm_gems_cache_path rvm_archives_path rvm_docs_path rvm_environments_path rvm_examples_path rvm_gems_path rvm_gemsets_path rvm_help_path rvm_hooks_path rvm_lib_path rvm_log_path rvm_patches_path rvm_repos_path rvm_rubies_path rvm_scripts_path rvm_src_path rvm_tmp_path rvm_user_path rvm_usr_path rvm_wrappers_path rvm_externals_path rvm_stored_errexit rvm_ruby_strings rvm_ruby_binary rvm_ruby_gem_home rvm_ruby_home rvm_ruby_interpreter rvm_ruby_irbrc rvm_ruby_major_version rvm_ruby_minor_version rvm_ruby_package_name rvm_ruby_patch_level rvm_ruby_release_version rvm_ruby_repo_url rvm_ruby_repo_branch rvm_ruby_revision rvm_ruby_tag rvm_ruby_sha rvm_ruby_version rvm_ruby_package_file rvm_ruby_name rvm_ruby_name rvm_ruby_args rvm_ruby_user_tag rvm_ruby_patch detected_rvm_ruby_name __rvm_env_loaded next_token rvm_error_message rvm_gemset_name rvm_parse_break rvm_token rvm_action rvm_export_args rvm_gemset_separator rvm_expanding_aliases rvm_architectures rvm_tar_command rvm_tar_options rvm_patch_original_pwd rvm_project_rvmrc rvm_archive_extension rvm_autoinstall_bundler_flag rvm_codesign_identity rvm_expected_gemset_name rvm_with_gems rvm_without_gems rvm_force_clang_ok rvm_ignore_dotfiles_flag ) 
+__variables_definition:34> __array_list=( rvm_patch_names rvm_ree_options rvm_autoconf_flags ) 
+__variables_definition:38> case unset (export)
+__variables_definition:38> case unset (unset)
+__variables_definition:40> unset rvm_patch_names rvm_ree_options rvm_autoconf_flags
+__variables_definition:47> unset rvm_head_flag rvm_ruby_selected_flag rvm_user_install_flag rvm_path_flag rvm_cron_flag rvm_static_flag rvm_default_flag rvm_loaded_flag rvm_llvm_flag rvm_skip_autoreconf_flag rvm_18_flag rvm_19_flag rvm_force_autoconf_flag rvm_dump_environment_flag rvm_verbose_flag rvm_debug_flag rvm_trace_flag rvm_pretty_print_flag rvm_create_flag rvm_remove_flag rvm_gemdir_flag rvm_reload_flag rvm_auto_reload_flag rvm_disable_binary_flag rvm_ignore_gemsets_flag rvm_skip_gemsets_flag rvm_install_on_use_flag rvm_remote_flag rvm_verify_downloads_flag rvm_skip_openssl_flag rvm_gems_cache_path rvm_gems_path rvm_man_path rvm_ruby_gem_path rvm_ruby_log_path rvm_gems_cache_path rvm_archives_path rvm_docs_path rvm_environments_path rvm_examples_path rvm_gems_path rvm_gemsets_path rvm_help_path rvm_hooks_path rvm_lib_path rvm_log_path rvm_patches_path rvm_repos_path rvm_rubies_path rvm_scripts_path rvm_src_path rvm_tmp_path rvm_user_path rvm_usr_path rvm_wrappers_path rvm_externals_path rvm_stored_errexit rvm_ruby_strings rvm_ruby_binary rvm_ruby_gem_home rvm_ruby_home rvm_ruby_interpreter rvm_ruby_irbrc rvm_ruby_major_version rvm_ruby_minor_version rvm_ruby_package_name rvm_ruby_patch_level rvm_ruby_release_version rvm_ruby_repo_url rvm_ruby_repo_branch rvm_ruby_revision rvm_ruby_tag rvm_ruby_sha rvm_ruby_version rvm_ruby_package_file rvm_ruby_name rvm_ruby_name rvm_ruby_args rvm_ruby_user_tag rvm_ruby_patch detected_rvm_ruby_name __rvm_env_loaded next_token rvm_error_message rvm_gemset_name rvm_parse_break rvm_token rvm_action rvm_export_args rvm_gemset_separator rvm_expanding_aliases rvm_architectures rvm_tar_command rvm_tar_options rvm_patch_original_pwd rvm_project_rvmrc rvm_archive_extension rvm_autoinstall_bundler_flag rvm_codesign_identity rvm_expected_gemset_name rvm_with_gems rvm_without_gems rvm_force_clang_ok rvm_ignore_dotfiles_flag
+__rvm_teardown:47> command -v __rvm_cleanup_download
+__rvm_teardown:52> return 0
+rvm:372> ((  __local_rvm_trace_flag > 0  ))
+rvm:379> return 0
+/home/tomo/.zkit/rc.d/32-ruby.sh:26> [[ -n 5.0.0 ]]
+/home/tomo/.zkit/rc.d/32-ruby.sh:27> fpath=( /home/tomo/.rvm/scripts/zsh/Completion /home/tomo/.zkit/zsh/functions /usr/share/zsh/site-functions /usr/share/zsh/5.0.0/functions ) 
+/home/tomo/.zkit/rc.d/32-ruby.sh:29> RVM_PROMPT='$(__zkit_rvm_prompt)' 
+__zkit_load_rc:2> __i=/home/tomo/.zkit/rc.d/33-java.sh
+__zkit_load_rc:3> [[ -r /home/tomo/.zkit/rc.d/33-java.sh ]]
+__zkit_load_rc:5> __zkit_msg load: /home/tomo/.zkit/rc.d/33-java.sh
+__zkit_msg:1> false
+__zkit_load_rc:6> [[ -n '[%n@%m]%~%# ' ]]
+__zkit_load_rc:7> source /home/tomo/.zkit/rc.d/33-java.sh
+/home/tomo/.zkit/rc.d/33-java.sh:3> envpathmunge JAVA_HOME /usr/java/default
+envpathmunge:10> emulate -L zsh
+envpathmunge:12> autoload -Uz pathmunge
+envpathmunge:14> [[ -d /usr/java/default ]]
+envpathmunge:19> eval unset JAVA_HOME
+(eval):1> unset JAVA_HOME
+/home/tomo/.zkit/rc.d/33-java.sh:4> [[ -n '' ]]
+__zkit_load_rc:2> __i=/home/tomo/.zkit/rc.d/60-vagrant.sh
+__zkit_load_rc:3> [[ -r /home/tomo/.zkit/rc.d/60-vagrant.sh ]]
+__zkit_load_rc:5> __zkit_msg load: /home/tomo/.zkit/rc.d/60-vagrant.sh
+__zkit_msg:1> false
+__zkit_load_rc:6> [[ -n '[%n@%m]%~%# ' ]]
+__zkit_load_rc:7> source /home/tomo/.zkit/rc.d/60-vagrant.sh
+/home/tomo/.zkit/rc.d/60-vagrant.sh:3> [[ -d /opt/vagrant ]]
+__zkit_load_rc:2> __i=/home/tomo/.zkit/rc.d/70-gpg-agent.sh
+__zkit_load_rc:3> [[ -r /home/tomo/.zkit/rc.d/70-gpg-agent.sh ]]
+__zkit_load_rc:5> __zkit_msg load: /home/tomo/.zkit/rc.d/70-gpg-agent.sh
+__zkit_msg:1> false
+__zkit_load_rc:6> [[ -n '[%n@%m]%~%# ' ]]
+__zkit_load_rc:7> source /home/tomo/.zkit/rc.d/70-gpg-agent.sh
+/home/tomo/.zkit/rc.d/70-gpg-agent.sh:14> false
+__zkit_load_rc:2> __i=/home/tomo/.zkit/rc.d/80-interactive.zsh
+__zkit_load_rc:3> [[ -r /home/tomo/.zkit/rc.d/80-interactive.zsh ]]
+__zkit_load_rc:5> __zkit_msg load: /home/tomo/.zkit/rc.d/80-interactive.zsh
+__zkit_msg:1> false
+__zkit_load_rc:6> [[ -n '[%n@%m]%~%# ' ]]
+__zkit_load_rc:7> source /home/tomo/.zkit/rc.d/80-interactive.zsh
+/home/tomo/.zkit/rc.d/80-interactive.zsh:5> [[ -n '[%n@%m]%~%# ' ]]
+/home/tomo/.zkit/rc.d/80-interactive.zsh:6> bindkey -e
+/home/tomo/.zkit/rc.d/80-interactive.zsh:7> bindkey -d
+/home/tomo/.zkit/rc.d/80-interactive.zsh:8> bindkey ' ' magic-space
+/home/tomo/.zkit/rc.d/80-interactive.zsh:11> autoload -Uz select-word-style
+/home/tomo/.zkit/rc.d/80-interactive.zsh:12> select-word-style normal
+select-word-style:1> emulate -L zsh
+select-word-style:2> setopt extendedglob
+select-word-style:4> local -a word_functions
+select-word-style:6> word_functions=( backward-kill-word backward-word capitalize-word down-case-word forward-word kill-word transpose-words up-case-word ) 
+select-word-style:11> [[ -z normal ]]
+select-word-style:13> local REPLY detail f wordstyle teststyle
+select-word-style:15> zle -l backward-kill-word
+select-word-style:16> f=backward-kill-word
+select-word-style:17> autoload -Uz backward-kill-word-match
+select-word-style:18> zle -N backward-kill-word backward-kill-word-match
+select-word-style:16> f=backward-word
+select-word-style:17> autoload -Uz backward-word-match
+select-word-style:18> zle -N backward-word backward-word-match
+select-word-style:16> f=capitalize-word
+select-word-style:17> autoload -Uz capitalize-word-match
+select-word-style:18> zle -N capitalize-word capitalize-word-match
+select-word-style:16> f=down-case-word
+select-word-style:17> autoload -Uz down-case-word-match
+select-word-style:18> zle -N down-case-word down-case-word-match
+select-word-style:16> f=forward-word
+select-word-style:17> autoload -Uz forward-word-match
+select-word-style:18> zle -N forward-word forward-word-match
+select-word-style:16> f=kill-word
+select-word-style:17> autoload -Uz kill-word-match
+select-word-style:18> zle -N kill-word kill-word-match
+select-word-style:16> f=transpose-words
+select-word-style:17> autoload -Uz transpose-words-match
+select-word-style:18> zle -N transpose-words transpose-words-match
+select-word-style:16> f=up-case-word
+select-word-style:17> autoload -Uz up-case-word-match
+select-word-style:18> zle -N up-case-word up-case-word-match
+select-word-style:23> true
+select-word-style:24> [[ -n '' ]]
+select-word-style:30> REPLY=normal 
+select-word-style:33> detail='' 
+select-word-style:35> case normal ([bB]*)
+select-word-style:35> case normal ([nN]*)
+select-word-style:45> wordstyle=standard 
+select-word-style:46> zstyle ':zle:*' word-chars '*?_-.[]~=/&;!#$%^(){}<>'
+select-word-style:47> zstyle ':zle:*' skip-whitespace-first false
+select-word-style:93> [[ -n standard ]]
+select-word-style:94> [[ normal == [[:upper:]]* ]]
+select-word-style:97> zstyle ':zle:*' word-style standard
+select-word-style:99> return
+/home/tomo/.zkit/rc.d/80-interactive.zsh:13> WORDCHARS='*?_-.[]~=&;!#$%^(){}<>' 
+/home/tomo/.zkit/rc.d/80-interactive.zsh:15> zstyle ':zle:*' word-chars ' _-.,/;@:$='
+/home/tomo/.zkit/rc.d/80-interactive.zsh:16> zstyle ':zle:*' word-style unspecified
+/home/tomo/.zkit/rc.d/80-interactive.zsh:17> zstyle ':zle:*' skip-whitespace-first false
+/home/tomo/.zkit/rc.d/80-interactive.zsh:20> source /home/tomo/.zkit/lib/autojump.zsh
+/home/tomo/.zkit/lib/autojump.zsh:2> [[ -n '' ]]
+/home/tomo/.zkit/lib/autojump.zsh:5> export 'AUTOJUMP_DATA_DIR=/home/tomo/.local/share/autojump'
+/home/tomo/.zkit/lib/autojump.zsh:8> [[ ! -e /home/tomo/.local/share/autojump ]]
+/home/tomo/.zkit/lib/autojump.zsh:16> [[ -d /home/tomo/.autojump ]]
+/home/tomo/.zkit/lib/autojump.zsh:22> command -v brew
+/home/tomo/.zkit/lib/autojump.zsh:35> typeset -ga preexec_functions
+/home/tomo/.zkit/lib/autojump.zsh:36> preexec_functions+=autojump_preexec 
+/home/tomo/.zkit/rc.d/80-interactive.zsh:23> unalias run-help
+/home/tomo/.zkit/rc.d/80-interactive.zsh:24> autoload -Uz run-help
+/home/tomo/.zkit/rc.d/80-interactive.zsh:26> FCEDIT='emacs -nw -Q --eval '\''(setq backup-inhibited t)'\' 
+__zkit_load_rc:2> __i=/home/tomo/.zkit/rc.d/81-prompt.zsh
+__zkit_load_rc:3> [[ -r /home/tomo/.zkit/rc.d/81-prompt.zsh ]]
+__zkit_load_rc:5> __zkit_msg load: /home/tomo/.zkit/rc.d/81-prompt.zsh
+__zkit_msg:1> false
+__zkit_load_rc:6> [[ -n '[%n@%m]%~%# ' ]]
+__zkit_load_rc:7> source /home/tomo/.zkit/rc.d/81-prompt.zsh
+/home/tomo/.zkit/rc.d/81-prompt.zsh:6> [[ -n '[%n@%m]%~%# ' ]]
+/home/tomo/.zkit/rc.d/81-prompt.zsh:7> setopt prompt_subst transientr_prompt
+/home/tomo/.zkit/rc.d/81-prompt.zsh:9> local 'csi=[' 'nl=
'
+/home/tomo/.zkit/rc.d/81-prompt.zsh:11> local 'c0=%{[m%}'
+/home/tomo/.zkit/rc.d/81-prompt.zsh:12> local 'c1=%{[38;5;33m%}'
+/home/tomo/.zkit/rc.d/81-prompt.zsh:13> local 'c2=%{[32m%}'
+/home/tomo/.zkit/rc.d/81-prompt.zsh:14> local 'ca=%{[38;5;21m%}'
+/home/tomo/.zkit/rc.d/81-prompt.zsh:15> local 'c3=%{[38;5;196m%}'
+/home/tomo/.zkit/rc.d/81-prompt.zsh:16> local 'c4=%{[38;5;94m%}'
+/home/tomo/.zkit/rc.d/81-prompt.zsh:17> local 'c5=%{[38;5;168m%}'
+/home/tomo/.zkit/rc.d/81-prompt.zsh:18> local 'c6=%{[38;5;196m%}'
+/home/tomo/.zkit/rc.d/81-prompt.zsh:19> local 'c7=%{[38;5;33;48;5;222m%}'
+/home/tomo/.zkit/rc.d/81-prompt.zsh:20> local 'c8=%{[48;5;0;38;5;15m%B%}'
+/home/tomo/.zkit/rc.d/81-prompt.zsh:22> PS1='%{[48;5;0;38;5;15m%B%} %T %{[m%}' 
+/home/tomo/.zkit/rc.d/81-prompt.zsh:23> zstyle -t :zkit: rprompt
+/home/tomo/.zkit/rc.d/81-prompt.zsh:27> PS1+='$(__zkit_rvm_prompt)%{[48;5;224m%}$(__vcs_info "(%s)")%{[m%}' 
+/home/tomo/.zkit/rc.d/81-prompt.zsh:28> PS1+='%{[38;5;33;48;5;222m%} %~ %{[m%}
' 
+/home/tomo/.zkit/rc.d/81-prompt.zsh:29> RPROMPT='' 
+/home/tomo/.zkit/rc.d/81-prompt.zsh:31> PS1+='%{[38;5;33m%}[%{[32m%}%n%{[38;5;21m%}@%{[38;5;196m%}%m%{[38;5;33m%}]' 
+/home/tomo/.zkit/rc.d/81-prompt.zsh:32> PS1+='%{[38;5;94m%}(%l) %{[38;5;168m%}%!%{[38;5;196m%}%(!.%{[38;5;196m%}#.%{[38;5;33m%}%%)%{[m%} ' 
+/home/tomo/.zkit/rc.d/81-prompt.zsh:33> [[ 4 > 1 ]]
+/home/tomo/.zkit/rc.d/81-prompt.zsh:34> PS1='%{[48;5;0;38;5;15m%B%} %T %{[m%}$(__zkit_rvm_prompt)%{[48;5;224m%}$(__vcs_info "(%s)")%{[m%}%{[38;5;33;48;5;222m%} %~ %{[m%}
%{[38;5;33m%}[%{[32m%}%n%{[38;5;21m%}@%{[38;5;196m%}%m%{[38;5;33m%}]%{[38;5;94m%}(%l) %{[38;5;168m%}%!%{[38;5;196m%}%(!.%{[38;5;196m%}#.%{[38;5;33m%}%%)%{[m%} %{[38;5;143m%}[4]%{[m%} ' 
+/home/tomo/.zkit/rc.d/81-prompt.zsh:37> PS2='%B%{[38;5;10m%}%_>%{[m%}%b ' 
+/home/tomo/.zkit/rc.d/81-prompt.zsh:42> case xterm-256color (xterm*)
+/home/tomo/.zkit/rc.d/81-prompt.zsh:56> add-zsh-hook precmd __zkit_icon_title
+add-zsh-hook:15> emulate -L zsh
+add-zsh-hook:17> local -a hooktypes
+add-zsh-hook:18> hooktypes=( chpwd precmd preexec periodic zshaddhistory zshexit zsh_directory_name ) 
+add-zsh-hook:22> local 'usage=Usage: add-zsh-hook hook function\nValid hooks are:\n  chpwd precmd preexec periodic zshaddhistory zshexit zsh_directory_name'
+add-zsh-hook:24> local opt
+add-zsh-hook:25> local -a autoopts
+add-zsh-hook:26> integer del list help
+add-zsh-hook:28> getopts dDhLUzk opt
+add-zsh-hook:55> shift 0
+add-zsh-hook:57> ((  list  ))
+add-zsh-hook:60> ((  help || 2 != 2 || 2 == 0  ))
+add-zsh-hook:65> local 'hook=precmd_functions'
+add-zsh-hook:66> local 'fn=__zkit_icon_title'
+add-zsh-hook:68> ((  del  ))
+add-zsh-hook:83> ((  0  ))
+add-zsh-hook:88> set -A precmd_functions __zkit_icon_title
+add-zsh-hook:90> autoload -- __zkit_icon_title
+__zkit_load_rc:2> __i=/home/tomo/.zkit/rc.d/82-common-aliases.sh
+__zkit_load_rc:3> [[ -r /home/tomo/.zkit/rc.d/82-common-aliases.sh ]]
+__zkit_load_rc:5> __zkit_msg load: /home/tomo/.zkit/rc.d/82-common-aliases.sh
+__zkit_msg:1> false
+__zkit_load_rc:6> [[ -n '%{[48;5;0;38;5;15m%B%} %T %{[m%}$(__zkit_rvm_prompt)%{[48;5;224m%}$(__vcs_info "(%s)")%{[m%}%{[38;5;33;48;5;222m%} %~ %{[m%}
%{[38;5;33m%}[%{[32m%}%n%{[38;5;21m%}@%{[38;5;196m%}%m%{[38;5;33m%}]%{[38;5;94m%}(%l) %{[38;5;168m%}%!%{[38;5;196m%}%(!.%{[38;5;196m%}#.%{[38;5;33m%}%%)%{[m%} %{[38;5;143m%}[4]%{[m%} ' ]]
+__zkit_load_rc:7> source /home/tomo/.zkit/rc.d/82-common-aliases.sh
+/home/tomo/.zkit/rc.d/82-common-aliases.sh:3> [[ -n '%{[48;5;0;38;5;15m%B%} %T %{[m%}$(__zkit_rvm_prompt)%{[48;5;224m%}$(__vcs_info "(%s)")%{[m%}%{[38;5;33;48;5;222m%} %~ %{[m%}
%{[38;5;33m%}[%{[32m%}%n%{[38;5;21m%}@%{[38;5;196m%}%m%{[38;5;33m%}]%{[38;5;94m%}(%l) %{[38;5;168m%}%!%{[38;5;196m%}%(!.%{[38;5;196m%}#.%{[38;5;33m%}%%)%{[m%} %{[38;5;143m%}[4]%{[m%} ' ]]
+/home/tomo/.zkit/rc.d/82-common-aliases.sh:4> uname
+/home/tomo/.zkit/rc.d/82-common-aliases.sh:4> case Linux (Linux)
+/home/tomo/.zkit/rc.d/82-common-aliases.sh:6> lscolor='--color=auto' 
+/home/tomo/.zkit/rc.d/82-common-aliases.sh:14> alias 'l.=ls -d --color=auto .*'
+/home/tomo/.zkit/rc.d/82-common-aliases.sh:15> alias 'll=ls -l --color=auto'
+/home/tomo/.zkit/rc.d/82-common-aliases.sh:16> alias 'ls=ls -CF --color=auto'
+/home/tomo/.zkit/rc.d/82-common-aliases.sh:17> alias 'sl=ls -CF'
+/home/tomo/.zkit/rc.d/82-common-aliases.sh:18> alias 'la=ls -aF --color=auto'
+/home/tomo/.zkit/rc.d/82-common-aliases.sh:19> alias 'lla=ls -alF --color=auto'
+/home/tomo/.zkit/rc.d/82-common-aliases.sh:20> alias 'lz=ls -aZF --color=auto'
+/home/tomo/.zkit/rc.d/82-common-aliases.sh:21> alias 'top=nice -10 top'
+/home/tomo/.zkit/rc.d/82-common-aliases.sh:22> unset lscolor
+/home/tomo/.zkit/rc.d/82-common-aliases.sh:24> alias 'svnaddall=svn status | awk "/^\?/ {print \$(NF)}" | xargs svn add'
+/home/tomo/.zkit/rc.d/82-common-aliases.sh:25> alias 'svncommit=svn commit -m ""'
+/home/tomo/.zkit/rc.d/82-common-aliases.sh:26> alias 'svnlost=svn status | awk "/^\!/ {print \$(NF)}"'
+/home/tomo/.zkit/rc.d/82-common-aliases.sh:27> alias 'svn_ps_kw=svn ps -R svn:keywords "Id Head URL" .'
+/home/tomo/.zkit/rc.d/82-common-aliases.sh:29> alias 'rmbackup=rm -f `find . -name "*~"`'
+/home/tomo/.zkit/rc.d/82-common-aliases.sh:30> alias 'rmpyc=rm -f `find . -name "*.pyc"`'
+/home/tomo/.zkit/rc.d/82-common-aliases.sh:31> alias 'cleanup=rm -f $( find . \( -name "*.pyc" -o -name "*~" \) )'
+/home/tomo/.zkit/rc.d/82-common-aliases.sh:33> alias 'suz=sudo zsh'
+/home/tomo/.zkit/rc.d/82-common-aliases.sh:34> alias 'sudologin=sudo -i'
+/home/tomo/.zkit/rc.d/82-common-aliases.sh:36> [[ -x /usr/bin/colordiff ]]
+/home/tomo/.zkit/rc.d/82-common-aliases.sh:37> alias 'diff=/usr/bin/colordiff $*'
+/home/tomo/.zkit/rc.d/82-common-aliases.sh:40> [[ -x /opt/google/chrome/google-chrome ]]
+/home/tomo/.zkit/rc.d/82-common-aliases.sh:41> alias 'chrome=/opt/google/chrome/google-chrome'
+/home/tomo/.zkit/rc.d/82-common-aliases.sh:42> alias 'chrome-allow-file-access=/opt/google/chrome/google-chrome --allow-file-access-from-files'
+/home/tomo/.zkit/rc.d/82-common-aliases.sh:45> [[ -x /Applications/Emacs.app/Contents/MacOS/Emacs ]]
+__zkit_load_rc:2> __i=/home/tomo/.zkit/rc.d/83-aliases.zsh
+__zkit_load_rc:3> [[ -r /home/tomo/.zkit/rc.d/83-aliases.zsh ]]
+__zkit_load_rc:5> __zkit_msg load: /home/tomo/.zkit/rc.d/83-aliases.zsh
+__zkit_msg:1> false
+__zkit_load_rc:6> [[ -n '%{[48;5;0;38;5;15m%B%} %T %{[m%}$(__zkit_rvm_prompt)%{[48;5;224m%}$(__vcs_info "(%s)")%{[m%}%{[38;5;33;48;5;222m%} %~ %{[m%}
%{[38;5;33m%}[%{[32m%}%n%{[38;5;21m%}@%{[38;5;196m%}%m%{[38;5;33m%}]%{[38;5;94m%}(%l) %{[38;5;168m%}%!%{[38;5;196m%}%(!.%{[38;5;196m%}#.%{[38;5;33m%}%%)%{[m%} %{[38;5;143m%}[4]%{[m%} ' ]]
+__zkit_load_rc:7> source /home/tomo/.zkit/rc.d/83-aliases.zsh
+/home/tomo/.zkit/rc.d/83-aliases.zsh:4> [[ -n '%{[48;5;0;38;5;15m%B%} %T %{[m%}$(__zkit_rvm_prompt)%{[48;5;224m%}$(__vcs_info "(%s)")%{[m%}%{[38;5;33;48;5;222m%} %~ %{[m%}
%{[38;5;33m%}[%{[32m%}%n%{[38;5;21m%}@%{[38;5;196m%}%m%{[38;5;33m%}]%{[38;5;94m%}(%l) %{[38;5;168m%}%!%{[38;5;196m%}%(!.%{[38;5;196m%}#.%{[38;5;33m%}%%)%{[m%} %{[38;5;143m%}[4]%{[m%} ' ]]
+/home/tomo/.zkit/rc.d/83-aliases.zsh:6> alias -g 'DN=/dev/null'
+/home/tomo/.zkit/rc.d/83-aliases.zsh:7> alias -g 'G=| egrep -a'
+/home/tomo/.zkit/rc.d/83-aliases.zsh:8> alias -g 'H=| head'
+/home/tomo/.zkit/rc.d/83-aliases.zsh:9> alias -g 'HL=| head -20'
+/home/tomo/.zkit/rc.d/83-aliases.zsh:10> alias -g 'L=| less'
+/home/tomo/.zkit/rc.d/83-aliases.zsh:11> alias -g 'LS=| less -S'
+/home/tomo/.zkit/rc.d/83-aliases.zsh:12> alias -g 'TL=| tail -20'
+/home/tomo/.zkit/rc.d/83-aliases.zsh:13> alias -g 'T=| tail'
+/home/tomo/.zkit/rc.d/83-aliases.zsh:14> alias -g 'S=| sort'
+/home/tomo/.zkit/rc.d/83-aliases.zsh:15> alias -g 'SU=| sort -u'
+/home/tomo/.zkit/rc.d/83-aliases.zsh:17> alias -g 'LL=2>&1 | less'
+/home/tomo/.zkit/rc.d/83-aliases.zsh:18> alias -g 'NUL=>/dev/null 2>&1'
+/home/tomo/.zkit/rc.d/83-aliases.zsh:20> alias -g 'EG=|& egrep -a'
+/home/tomo/.zkit/rc.d/83-aliases.zsh:21> alias -g 'EH=|& head'
+/home/tomo/.zkit/rc.d/83-aliases.zsh:22> alias -g 'EL=|& less'
+/home/tomo/.zkit/rc.d/83-aliases.zsh:23> alias -g 'ELS=|& less -S'
+/home/tomo/.zkit/rc.d/83-aliases.zsh:24> alias -g 'ETL=|& tail -20'
+/home/tomo/.zkit/rc.d/83-aliases.zsh:25> alias -g 'ET=|& tail'
+/home/tomo/.zkit/rc.d/83-aliases.zsh:27> autoload -Uz zmv
+/home/tomo/.zkit/rc.d/83-aliases.zsh:28> alias 'zmv=noglob zmv -W'
+__zkit_load_rc:2> __i=/home/tomo/.zkit/rc.d/84-history.zsh
+__zkit_load_rc:3> [[ -r /home/tomo/.zkit/rc.d/84-history.zsh ]]
+__zkit_load_rc:5> __zkit_msg load: /home/tomo/.zkit/rc.d/84-history.zsh
+__zkit_msg:1> false
+__zkit_load_rc:6> [[ -n '%{[48;5;0;38;5;15m%B%} %T %{[m%}$(__zkit_rvm_prompt)%{[48;5;224m%}$(__vcs_info "(%s)")%{[m%}%{[38;5;33;48;5;222m%} %~ %{[m%}
%{[38;5;33m%}[%{[32m%}%n%{[38;5;21m%}@%{[38;5;196m%}%m%{[38;5;33m%}]%{[38;5;94m%}(%l) %{[38;5;168m%}%!%{[38;5;196m%}%(!.%{[38;5;196m%}#.%{[38;5;33m%}%%)%{[m%} %{[38;5;143m%}[4]%{[m%} ' ]]
+__zkit_load_rc:7> source /home/tomo/.zkit/rc.d/84-history.zsh
+/home/tomo/.zkit/rc.d/84-history.zsh:4> setopt hist_expire_dups_first
+/home/tomo/.zkit/rc.d/84-history.zsh:5> HISTFILE=/home/tomo/.zkit/var/zsh_history 
+/home/tomo/.zkit/rc.d/84-history.zsh:6> HISTSIZE=12000 
+/home/tomo/.zkit/rc.d/84-history.zsh:7> SAVEHIST=10000 
+/home/tomo/.zkit/rc.d/84-history.zsh:9> setopt append_history
+/home/tomo/.zkit/rc.d/84-history.zsh:10> setopt hist_ignore_all_dups
+/home/tomo/.zkit/rc.d/84-history.zsh:11> setopt hist_reduce_blanks
+/home/tomo/.zkit/rc.d/84-history.zsh:12> setopt share_history
+__zkit_load_rc:2> __i=/home/tomo/.zkit/rc.d/85-completion.zsh
+__zkit_load_rc:3> [[ -r /home/tomo/.zkit/rc.d/85-completion.zsh ]]
+__zkit_load_rc:5> __zkit_msg load: /home/tomo/.zkit/rc.d/85-completion.zsh
+__zkit_msg:1> false
+__zkit_load_rc:6> [[ -n '%{[48;5;0;38;5;15m%B%} %T %{[m%}$(__zkit_rvm_prompt)%{[48;5;224m%}$(__vcs_info "(%s)")%{[m%}%{[38;5;33;48;5;222m%} %~ %{[m%}
%{[38;5;33m%}[%{[32m%}%n%{[38;5;21m%}@%{[38;5;196m%}%m%{[38;5;33m%}]%{[38;5;94m%}(%l) %{[38;5;168m%}%!%{[38;5;196m%}%(!.%{[38;5;196m%}#.%{[38;5;33m%}%%)%{[m%} %{[38;5;143m%}[4]%{[m%} ' ]]
+__zkit_load_rc:7> source /home/tomo/.zkit/rc.d/85-completion.zsh
+/home/tomo/.zkit/rc.d/85-completion.zsh:5> autoload -Uz compinit
+/home/tomo/.zkit/rc.d/85-completion.zsh:7> zstyle -t :zkit: compinit_secure
+/home/tomo/.zkit/rc.d/85-completion.zsh:11> compinit -d /home/tomo/.zkit/var/zsh_compdump -u
+compinit:70> emulate -L zsh
+compinit:71> setopt extendedglob
+compinit:73> typeset _i_dumpfile _i_files _i_line _i_done _i_dir '_i_autodump=1'
+compinit:74> typeset _i_tag _i_file _i_addfiles '_i_fail=ask' '_i_check=yes' _i_name
+compinit:76> [[ 3 -gt 0 && -d == -[dDiuC] ]]
+compinit:77> case -d (-d)
+compinit:79> _i_autodump=1 
+compinit:80> shift
+compinit:81> [[ 2 -gt 0 && /home/tomo/.zkit/var/zsh_compdump != -[dfQC] ]]
+compinit:82> _i_dumpfile=/home/tomo/.zkit/var/zsh_compdump 
+compinit:83> shift
+compinit:76> [[ 1 -gt 0 && -u == -[dDiuC] ]]
+compinit:77> case -u (-d)
+compinit:77> case -u (-D)
+compinit:77> case -u (-i)
+compinit:77> case -u (-u)
+compinit:95> _i_fail=use 
+compinit:96> shift
+compinit:76> [[ 0 -gt 0 ]]
+compinit:108> typeset -gA _comps _services _patcomps _postpatcomps
+compinit:113> typeset -gA _compautos
+compinit:118> typeset -gA _lastcomp
+compinit:121> [[ -n /home/tomo/.zkit/var/zsh_compdump ]]
+compinit:123> typeset -g '_comp_dumpfile=/home/tomo/.zkit/var/zsh_compdump'
+compinit:130> typeset -ga _comp_options
+compinit:131> _comp_options=( bareglobqual extendedglob glob multibyte nullglob rcexpandparam unset NO_allexport NO_aliases NO_cshnullglob NO_cshjunkiequotes NO_errexit NO_globsubst NO_histsubstpattern NO_ignorebraces NO_ignoreclosebraces NO_kshglob NO_ksharrays NO_kshtypeset NO_markdirs NO_octalzeroes NO_shwordsplit NO_shglob NO_warncreateglobal ) 
+compinit:164> typeset -g '_comp_setup=local -A _comp_caller_options;
             _comp_caller_options=(${(kv)options[@]});
             setopt localoptions localtraps ${_comp_options[@]};
             local IFS=$'\'' \t\r\n\0'\''
             exec </dev/null;
             trap - ZERR
             local -a reply
             local REPLY'
+compinit:176> typeset -ga compprefuncs comppostfuncs
+compinit:177> compprefuncs=( ) 
+compinit:178> comppostfuncs=( ) 
+compinit:182> : compinit /home/tomo/.zkit/rc.d/85-completion.zsh __zkit_load_rc /home/tomo/.zkit/zsh/startup.sh /home/tomo/.zkit/zsh/.zshrc
+compinit:431> typeset _i_wdirs _i_wfiles
+compinit:433> _i_wdirs=( ) 
+compinit:434> _i_wfiles=( ) 
+compinit:436> autoload -Uz compaudit
+compinit:437> [[ -n yes ]]
+compinit:438> typeset _i_q
+compinit:439> eval compaudit
+(eval):1> compaudit
+compaudit:146> compaudit
+compaudit:13> emulate -L zsh
+compaudit:14> setopt extendedglob
+compaudit:16> [[ -x /usr/bin/getent ]]
+compaudit:25> ((  0  ))
+compaudit:27> ((  4 == 0  ))
+compaudit:31> set -- /home/tomo/.rvm/scripts/zsh/Completion /home/tomo/.zkit/zsh/functions /usr/share/zsh/site-functions /usr/share/zsh/5.0.0/functions
+compaudit:38> ((  1  ))
+compaudit:44> fpath=( /home/tomo/.rvm/scripts/zsh/Completion /home/tomo/.zkit/zsh/functions /usr/share/zsh/site-functions /usr/share/zsh/5.0.0/functions ) 
+compaudit:49> ((  0  ))
+compaudit:50> local '_compdir=/usr/share/zsh/5.0.0/functions'
+compaudit:51> [[ -z /usr/share/zsh/5.0.0/functions ]]
+compaudit:55> _i_wdirs=( ) 
+compaudit:56> _i_wfiles=( ) 
+compaudit:58> _i_files=( /home/tomo/.rvm/scripts/zsh/Completion/_rvm /usr/share/zsh/site-functions/_dbus-cli /usr/share/zsh/site-functions/_gpaste /usr/share/zsh/site-functions/_j /usr/share/zsh/site-functions/_mercurial /usr/share/zsh/5.0.0/functions/_SuSEconfig /usr/share/zsh/5.0.0/functions/_a2ps /usr/share/zsh/5.0.0/functions/_a2utils /usr/share/zsh/5.0.0/functions/_aap /usr/share/zsh/5.0.0/functions/_acpi /usr/share/zsh/5.0.0/functions/_acpitool /usr/share/zsh/5.0.0/functions/_acroread /usr/share/zsh/5.0.0/functions/_adb /usr/share/zsh/5.0.0/functions/_alias /usr/share/zsh/5.0.0/functions/_aliases /usr/share/zsh/5.0.0/functions/_all_labels /usr/share/zsh/5.0.0/functions/_all_matches /usr/share/zsh/5.0.0/functions/_alternative /usr/share/zsh/5.0.0/functions/_analyseplugin /usr/share/zsh/5.0.0/functions/_ant /usr/share/zsh/5.0.0/functions/_antiword /usr/share/zsh/5.0.0/functions/_apachectl /usr/share/zsh/5.0.0/functions/_apm /usr/share/zsh/5.0.0/functions/_approximate /usr/share/zsh/5.0.0/functions/_apt /usr/share/zsh/5.0.0/functions/_apt-file /usr/share/zsh/5.0.0/functions/_apt-move /usr/share/zsh/5.0.0/functions/_apt-show-versions /usr/share/zsh/5.0.0/functions/_aptitude /usr/share/zsh/5.0.0/functions/_arch_archives /usr/share/zsh/5.0.0/functions/_arch_namespace /usr/share/zsh/5.0.0/functions/_arg_compile /usr/share/zsh/5.0.0/functions/_arguments /usr/share/zsh/5.0.0/functions/_arp /usr/share/zsh/5.0.0/functions/_arping /usr/share/zsh/5.0.0/functions/_arrays /usr/share/zsh/5.0.0/functions/_assign /usr/share/zsh/5.0.0/functions/_at /usr/share/zsh/5.0.0/functions/_attr /usr/share/zsh/5.0.0/functions/_auto-apt /usr/share/zsh/5.0.0/functions/_autocd /usr/share/zsh/5.0.0/functions/_awk /usr/share/zsh/5.0.0/functions/_axi-cache /usr/share/zsh/5.0.0/functions/_bash_completions /usr/share/zsh/5.0.0/functions/_baz /usr/share/zsh/5.0.0/functions/_be_name /usr/share/zsh/5.0.0/functions/_beadm /usr/share/zsh/5.0.0/functions/_bind_addresses /usr/share/zsh/5.0.0/functions/_bindkey /usr/share/zsh/5.0.0/functions/_bison /usr/share/zsh/5.0.0/functions/_bittorrent /usr/share/zsh/5.0.0/functions/_bogofilter /usr/share/zsh/5.0.0/functions/_brace_parameter /usr/share/zsh/5.0.0/functions/_brctl /usr/share/zsh/5.0.0/functions/_bsd_pkg /usr/share/zsh/5.0.0/functions/_bts /usr/share/zsh/5.0.0/functions/_bug /usr/share/zsh/5.0.0/functions/_builtin /usr/share/zsh/5.0.0/functions/_bzip2 /usr/share/zsh/5.0.0/functions/_bzr /usr/share/zsh/5.0.0/functions/_cache_invalid /usr/share/zsh/5.0.0/functions/_cal /usr/share/zsh/5.0.0/functions/_calendar /usr/share/zsh/5.0.0/functions/_call_function /usr/share/zsh/5.0.0/functions/_call_program /usr/share/zsh/5.0.0/functions/_canonical_paths /usr/share/zsh/5.0.0/functions/_ccal /usr/share/zsh/5.0.0/functions/_cd /usr/share/zsh/5.0.0/functions/_cdbs-edit-patch /usr/share/zsh/5.0.0/functions/_cdcd /usr/share/zsh/5.0.0/functions/_cdr /usr/share/zsh/5.0.0/functions/_cdrdao /usr/share/zsh/5.0.0/functions/_cdrecord /usr/share/zsh/5.0.0/functions/_chflags /usr/share/zsh/5.0.0/functions/_chkconfig /usr/share/zsh/5.0.0/functions/_chmod /usr/share/zsh/5.0.0/functions/_chown /usr/share/zsh/5.0.0/functions/_chrt /usr/share/zsh/5.0.0/functions/_combination /usr/share/zsh/5.0.0/functions/_comm /usr/share/zsh/5.0.0/functions/_command /usr/share/zsh/5.0.0/functions/_command_names /usr/share/zsh/5.0.0/functions/_compdef /usr/share/zsh/5.0.0/functions/_complete /usr/share/zsh/5.0.0/functions/_complete_debug /usr/share/zsh/5.0.0/functions/_complete_help /usr/share/zsh/5.0.0/functions/_complete_help_generic /usr/share/zsh/5.0.0/functions/_complete_tag /usr/share/zsh/5.0.0/functions/_compress /usr/share/zsh/5.0.0/functions/_condition /usr/share/zsh/5.0.0/functions/_configure /usr/share/zsh/5.0.0/functions/_coreadm /usr/share/zsh/5.0.0/functions/_correct /usr/share/zsh/5.0.0/functions/_correct_filename /usr/share/zsh/5.0.0/functions/_correct_word /usr/share/zsh/5.0.0/functions/_cowsay /usr/share/zsh/5.0.0/functions/_cp /usr/share/zsh/5.0.0/functions/_cpio /usr/share/zsh/5.0.0/functions/_cplay /usr/share/zsh/5.0.0/functions/_cryptsetup /usr/share/zsh/5.0.0/functions/_cssh /usr/share/zsh/5.0.0/functions/_csup /usr/share/zsh/5.0.0/functions/_ctags_tags /usr/share/zsh/5.0.0/functions/_cut /usr/share/zsh/5.0.0/functions/_cvs /usr/share/zsh/5.0.0/functions/_cvsup /usr/share/zsh/5.0.0/functions/_cygcheck /usr/share/zsh/5.0.0/functions/_cygpath /usr/share/zsh/5.0.0/functions/_cygrunsrv /usr/share/zsh/5.0.0/functions/_cygserver /usr/share/zsh/5.0.0/functions/_cygstart /usr/share/zsh/5.0.0/functions/_dak /usr/share/zsh/5.0.0/functions/_darcs /usr/share/zsh/5.0.0/functions/_date /usr/share/zsh/5.0.0/functions/_dchroot /usr/share/zsh/5.0.0/functions/_dchroot-dsa /usr/share/zsh/5.0.0/functions/_dcop /usr/share/zsh/5.0.0/functions/_dd /usr/share/zsh/5.0.0/functions/_deb_packages /usr/share/zsh/5.0.0/functions/_debchange /usr/share/zsh/5.0.0/functions/_debdiff /usr/share/zsh/5.0.0/functions/_debfoster /usr/share/zsh/5.0.0/functions/_debsign /usr/share/zsh/5.0.0/functions/_default /usr/share/zsh/5.0.0/functions/_defaults /usr/share/zsh/5.0.0/functions/_delimiters /usr/share/zsh/5.0.0/functions/_describe /usr/share/zsh/5.0.0/functions/_description /usr/share/zsh/5.0.0/functions/_devtodo /usr/share/zsh/5.0.0/functions/_dhclient /usr/share/zsh/5.0.0/functions/_dhcpinfo /usr/share/zsh/5.0.0/functions/_dict /usr/share/zsh/5.0.0/functions/_dict_words /usr/share/zsh/5.0.0/functions/_diff /usr/share/zsh/5.0.0/functions/_diff_options /usr/share/zsh/5.0.0/functions/_diffstat /usr/share/zsh/5.0.0/functions/_dir_list /usr/share/zsh/5.0.0/functions/_directories /usr/share/zsh/5.0.0/functions/_directory_stack /usr/share/zsh/5.0.0/functions/_dirs /usr/share/zsh/5.0.0/functions/_disable /usr/share/zsh/5.0.0/functions/_dispatch /usr/share/zsh/5.0.0/functions/_django /usr/share/zsh/5.0.0/functions/_dladm /usr/share/zsh/5.0.0/functions/_dlocate /usr/share/zsh/5.0.0/functions/_dmidecode /usr/share/zsh/5.0.0/functions/_domains /usr/share/zsh/5.0.0/functions/_dpatch-edit-patch /usr/share/zsh/5.0.0/functions/_dpkg /usr/share/zsh/5.0.0/functions/_dpkg-buildpackage /usr/share/zsh/5.0.0/functions/_dpkg-cross /usr/share/zsh/5.0.0/functions/_dpkg-repack /usr/share/zsh/5.0.0/functions/_dpkg_source /usr/share/zsh/5.0.0/functions/_dput /usr/share/zsh/5.0.0/functions/_dtrace /usr/share/zsh/5.0.0/functions/_du /usr/share/zsh/5.0.0/functions/_dumpadm /usr/share/zsh/5.0.0/functions/_dumper /usr/share/zsh/5.0.0/functions/_dupload /usr/share/zsh/5.0.0/functions/_dvi /usr/share/zsh/5.0.0/functions/_dynamic_directory_name /usr/share/zsh/5.0.0/functions/_ecasound /usr/share/zsh/5.0.0/functions/_echotc /usr/share/zsh/5.0.0/functions/_echoti /usr/share/zsh/5.0.0/functions/_elinks /usr/share/zsh/5.0.0/functions/_elm /usr/share/zsh/5.0.0/functions/_email_addresses /usr/share/zsh/5.0.0/functions/_emulate /usr/share/zsh/5.0.0/functions/_enable /usr/share/zsh/5.0.0/functions/_enscript /usr/share/zsh/5.0.0/functions/_env /usr/share/zsh/5.0.0/functions/_equal /usr/share/zsh/5.0.0/functions/_espeak /usr/share/zsh/5.0.0/functions/_ethtool /usr/share/zsh/5.0.0/functions/_expand /usr/share/zsh/5.0.0/functions/_expand_alias /usr/share/zsh/5.0.0/functions/_expand_word /usr/share/zsh/5.0.0/functions/_fakeroot /usr/share/zsh/5.0.0/functions/_fc /usr/share/zsh/5.0.0/functions/_feh /usr/share/zsh/5.0.0/functions/_fetch /usr/share/zsh/5.0.0/functions/_fetchmail /usr/share/zsh/5.0.0/functions/_ffmpeg /usr/share/zsh/5.0.0/functions/_figlet /usr/share/zsh/5.0.0/functions/_file_descriptors /usr/share/zsh/5.0.0/functions/_file_systems /usr/share/zsh/5.0.0/functions/_files /usr/share/zsh/5.0.0/functions/_find /usr/share/zsh/5.0.0/functions/_finger /usr/share/zsh/5.0.0/functions/_fink /usr/share/zsh/5.0.0/functions/_first /usr/share/zsh/5.0.0/functions/_flasher /usr/share/zsh/5.0.0/functions/_flex /usr/share/zsh/5.0.0/functions/_floppy /usr/share/zsh/5.0.0/functions/_flowadm /usr/share/zsh/5.0.0/functions/_fmadm /usr/share/zsh/5.0.0/functions/_fortune /usr/share/zsh/5.0.0/functions/_freebsd-update /usr/share/zsh/5.0.0/functions/_fsh /usr/share/zsh/5.0.0/functions/_fstat /usr/share/zsh/5.0.0/functions/_functions /usr/share/zsh/5.0.0/functions/_fuse_arguments /usr/share/zsh/5.0.0/functions/_fuse_values /usr/share/zsh/5.0.0/functions/_fuser /usr/share/zsh/5.0.0/functions/_fusermount /usr/share/zsh/5.0.0/functions/_gcc /usr/share/zsh/5.0.0/functions/_gcore /usr/share/zsh/5.0.0/functions/_gdb /usr/share/zsh/5.0.0/functions/_generic /usr/share/zsh/5.0.0/functions/_genisoimage /usr/share/zsh/5.0.0/functions/_getclip /usr/share/zsh/5.0.0/functions/_getconf /usr/share/zsh/5.0.0/functions/_getent /usr/share/zsh/5.0.0/functions/_getfacl /usr/share/zsh/5.0.0/functions/_getmail /usr/share/zsh/5.0.0/functions/_git /usr/share/zsh/5.0.0/functions/_git-buildpackage /usr/share/zsh/5.0.0/functions/_global /usr/share/zsh/5.0.0/functions/_global_tags /usr/share/zsh/5.0.0/functions/_globflags /usr/share/zsh/5.0.0/functions/_globqual_delims /usr/share/zsh/5.0.0/functions/_globquals /usr/share/zsh/5.0.0/functions/_gnome-gv /usr/share/zsh/5.0.0/functions/_gnu_generic /usr/share/zsh/5.0.0/functions/_gnupod /usr/share/zsh/5.0.0/functions/_gnutls /usr/share/zsh/5.0.0/functions/_go /usr/share/zsh/5.0.0/functions/_gpg /usr/share/zsh/5.0.0/functions/_gphoto2 /usr/share/zsh/5.0.0/functions/_gprof /usr/share/zsh/5.0.0/functions/_gqview /usr/share/zsh/5.0.0/functions/_gradle /usr/share/zsh/5.0.0/functions/_graphicsmagick /usr/share/zsh/5.0.0/functions/_grep /usr/share/zsh/5.0.0/functions/_grep-excuses /usr/share/zsh/5.0.0/functions/_groff /usr/share/zsh/5.0.0/functions/_groups /usr/share/zsh/5.0.0/functions/_growisofs /usr/share/zsh/5.0.0/functions/_gs /usr/share/zsh/5.0.0/functions/_guard /usr/share/zsh/5.0.0/functions/_guilt /usr/share/zsh/5.0.0/functions/_gv /usr/share/zsh/5.0.0/functions/_gzip /usr/share/zsh/5.0.0/functions/_hash /usr/share/zsh/5.0.0/functions/_have_glob_qual /usr/share/zsh/5.0.0/functions/_hdiutil /usr/share/zsh/5.0.0/functions/_hg /usr/share/zsh/5.0.0/functions/_history /usr/share/zsh/5.0.0/functions/_history_complete_word /usr/share/zsh/5.0.0/functions/_history_modifiers /usr/share/zsh/5.0.0/functions/_hosts /usr/share/zsh/5.0.0/functions/_hwinfo /usr/share/zsh/5.0.0/functions/_iconv /usr/share/zsh/5.0.0/functions/_id /usr/share/zsh/5.0.0/functions/_ifconfig /usr/share/zsh/5.0.0/functions/_iftop /usr/share/zsh/5.0.0/functions/_ignored /usr/share/zsh/5.0.0/functions/_imagemagick /usr/share/zsh/5.0.0/functions/_in_vared /usr/share/zsh/5.0.0/functions/_inetadm /usr/share/zsh/5.0.0/functions/_init_d /usr/share/zsh/5.0.0/functions/_initctl /usr/share/zsh/5.0.0/functions/_invoke-rc.d /usr/share/zsh/5.0.0/functions/_ionice /usr/share/zsh/5.0.0/functions/_ip /usr/share/zsh/5.0.0/functions/_ipadm /usr/share/zsh/5.0.0/functions/_ipset /usr/share/zsh/5.0.0/functions/_iptables /usr/share/zsh/5.0.0/functions/_irssi /usr/share/zsh/5.0.0/functions/_ispell /usr/share/zsh/5.0.0/functions/_iwconfig /usr/share/zsh/5.0.0/functions/_java /usr/share/zsh/5.0.0/functions/_java_class /usr/share/zsh/5.0.0/functions/_jobs /usr/share/zsh/5.0.0/functions/_jobs_bg /usr/share/zsh/5.0.0/functions/_jobs_builtin /usr/share/zsh/5.0.0/functions/_jobs_fg /usr/share/zsh/5.0.0/functions/_joe /usr/share/zsh/5.0.0/functions/_join /usr/share/zsh/5.0.0/functions/_kfmclient /usr/share/zsh/5.0.0/functions/_kill /usr/share/zsh/5.0.0/functions/_killall /usr/share/zsh/5.0.0/functions/_kld /usr/share/zsh/5.0.0/functions/_knock /usr/share/zsh/5.0.0/functions/_kvno /usr/share/zsh/5.0.0/functions/_last /usr/share/zsh/5.0.0/functions/_ld_debug /usr/share/zsh/5.0.0/functions/_ldd /usr/share/zsh/5.0.0/functions/_less /usr/share/zsh/5.0.0/functions/_lighttpd /usr/share/zsh/5.0.0/functions/_limit /usr/share/zsh/5.0.0/functions/_limits /usr/share/zsh/5.0.0/functions/_linda /usr/share/zsh/5.0.0/functions/_links /usr/share/zsh/5.0.0/functions/_lintian /usr/share/zsh/5.0.0/functions/_list /usr/share/zsh/5.0.0/functions/_list_files /usr/share/zsh/5.0.0/functions/_ln /usr/share/zsh/5.0.0/functions/_loadkeys /usr/share/zsh/5.0.0/functions/_locales /usr/share/zsh/5.0.0/functions/_locate /usr/share/zsh/5.0.0/functions/_logical_volumes /usr/share/zsh/5.0.0/functions/_look /usr/share/zsh/5.0.0/functions/_losetup /usr/share/zsh/5.0.0/functions/_lp /usr/share/zsh/5.0.0/functions/_ls /usr/share/zsh/5.0.0/functions/_lscfg /usr/share/zsh/5.0.0/functions/_lsdev /usr/share/zsh/5.0.0/functions/_lslv /usr/share/zsh/5.0.0/functions/_lsof /usr/share/zsh/5.0.0/functions/_lspv /usr/share/zsh/5.0.0/functions/_lsusb /usr/share/zsh/5.0.0/functions/_lsvg /usr/share/zsh/5.0.0/functions/_lynx /usr/share/zsh/5.0.0/functions/_lzop /usr/share/zsh/5.0.0/functions/_mac_applications /usr/share/zsh/5.0.0/functions/_mac_files_for_application /usr/share/zsh/5.0.0/functions/_madison /usr/share/zsh/5.0.0/functions/_mail /usr/share/zsh/5.0.0/functions/_mailboxes /usr/share/zsh/5.0.0/functions/_main_complete /usr/share/zsh/5.0.0/functions/_make /usr/share/zsh/5.0.0/functions/_make-kpkg /usr/share/zsh/5.0.0/functions/_man /usr/share/zsh/5.0.0/functions/_match /usr/share/zsh/5.0.0/functions/_math /usr/share/zsh/5.0.0/functions/_matlab /usr/share/zsh/5.0.0/functions/_md5sum /usr/share/zsh/5.0.0/functions/_mdadm /usr/share/zsh/5.0.0/functions/_members /usr/share/zsh/5.0.0/functions/_mencal /usr/share/zsh/5.0.0/functions/_menu /usr/share/zsh/5.0.0/functions/_mere /usr/share/zsh/5.0.0/functions/_mergechanges /usr/share/zsh/5.0.0/functions/_message /usr/share/zsh/5.0.0/functions/_metaflac /usr/share/zsh/5.0.0/functions/_mh /usr/share/zsh/5.0.0/functions/_mii-tool /usr/share/zsh/5.0.0/functions/_mime_types /usr/share/zsh/5.0.0/functions/_mkdir /usr/share/zsh/5.0.0/functions/_mkshortcut /usr/share/zsh/5.0.0/functions/_mkzsh /usr/share/zsh/5.0.0/functions/_module /usr/share/zsh/5.0.0/functions/_module-assistant /usr/share/zsh/5.0.0/functions/_modutils /usr/share/zsh/5.0.0/functions/_mondo /usr/share/zsh/5.0.0/functions/_monotone /usr/share/zsh/5.0.0/functions/_mosh /usr/share/zsh/5.0.0/functions/_most_recent_file /usr/share/zsh/5.0.0/functions/_mount /usr/share/zsh/5.0.0/functions/_mozilla /usr/share/zsh/5.0.0/functions/_mpc /usr/share/zsh/5.0.0/functions/_mplayer /usr/share/zsh/5.0.0/functions/_mt /usr/share/zsh/5.0.0/functions/_mtools /usr/share/zsh/5.0.0/functions/_mtr /usr/share/zsh/5.0.0/functions/_multi_parts /usr/share/zsh/5.0.0/functions/_mutt /usr/share/zsh/5.0.0/functions/_my_accounts /usr/share/zsh/5.0.0/functions/_mysql_utils /usr/share/zsh/5.0.0/functions/_mysqldiff /usr/share/zsh/5.0.0/functions/_nautilus /usr/share/zsh/5.0.0/functions/_ncftp /usr/share/zsh/5.0.0/functions/_nedit /usr/share/zsh/5.0.0/functions/_net_interfaces /usr/share/zsh/5.0.0/functions/_netcat /usr/share/zsh/5.0.0/functions/_netscape /usr/share/zsh/5.0.0/functions/_netstat /usr/share/zsh/5.0.0/functions/_newsgroups /usr/share/zsh/5.0.0/functions/_next_label /usr/share/zsh/5.0.0/functions/_next_tags /usr/share/zsh/5.0.0/functions/_nice /usr/share/zsh/5.0.0/functions/_nm /usr/share/zsh/5.0.0/functions/_nmap /usr/share/zsh/5.0.0/functions/_nmcli /usr/share/zsh/5.0.0/functions/_normal /usr/share/zsh/5.0.0/functions/_nothing /usr/share/zsh/5.0.0/functions/_notmuch /usr/share/zsh/5.0.0/functions/_npm /usr/share/zsh/5.0.0/functions/_nslookup /usr/share/zsh/5.0.0/functions/_object_classes /usr/share/zsh/5.0.0/functions/_okular /usr/share/zsh/5.0.0/functions/_oldlist /usr/share/zsh/5.0.0/functions/_open /usr/share/zsh/5.0.0/functions/_options /usr/share/zsh/5.0.0/functions/_options_set /usr/share/zsh/5.0.0/functions/_options_unset /usr/share/zsh/5.0.0/functions/_osc /usr/share/zsh/5.0.0/functions/_other_accounts /usr/share/zsh/5.0.0/functions/_pack /usr/share/zsh/5.0.0/functions/_parameter /usr/share/zsh/5.0.0/functions/_parameters /usr/share/zsh/5.0.0/functions/_patch /usr/share/zsh/5.0.0/functions/_path_commands /usr/share/zsh/5.0.0/functions/_path_files /usr/share/zsh/5.0.0/functions/_pax /usr/share/zsh/5.0.0/functions/_pbm /usr/share/zsh/5.0.0/functions/_pbuilder /usr/share/zsh/5.0.0/functions/_pdf /usr/share/zsh/5.0.0/functions/_pdftk /usr/share/zsh/5.0.0/functions/_perforce /usr/share/zsh/5.0.0/functions/_perl /usr/share/zsh/5.0.0/functions/_perl_basepods /usr/share/zsh/5.0.0/functions/_perl_modules /usr/share/zsh/5.0.0/functions/_perldoc /usr/share/zsh/5.0.0/functions/_pfctl /usr/share/zsh/5.0.0/functions/_pfexec /usr/share/zsh/5.0.0/functions/_pgrep /usr/share/zsh/5.0.0/functions/_php /usr/share/zsh/5.0.0/functions/_physical_volumes /usr/share/zsh/5.0.0/functions/_pick_variant /usr/share/zsh/5.0.0/functions/_pids /usr/share/zsh/5.0.0/functions/_pine /usr/share/zsh/5.0.0/functions/_ping /usr/share/zsh/5.0.0/functions/_piuparts /usr/share/zsh/5.0.0/functions/_pkg-config /usr/share/zsh/5.0.0/functions/_pkg5 /usr/share/zsh/5.0.0/functions/_pkg_instance /usr/share/zsh/5.0.0/functions/_pkgadd /usr/share/zsh/5.0.0/functions/_pkginfo /usr/share/zsh/5.0.0/functions/_pkgrm /usr/share/zsh/5.0.0/functions/_pkgtool /usr/share/zsh/5.0.0/functions/_pon /usr/share/zsh/5.0.0/functions/_portaudit /usr/share/zsh/5.0.0/functions/_portlint /usr/share/zsh/5.0.0/functions/_portmaster /usr/share/zsh/5.0.0/functions/_ports /usr/share/zsh/5.0.0/functions/_portsnap /usr/share/zsh/5.0.0/functions/_postfix /usr/share/zsh/5.0.0/functions/_powerd /usr/share/zsh/5.0.0/functions/_prcs /usr/share/zsh/5.0.0/functions/_precommand /usr/share/zsh/5.0.0/functions/_prefix /usr/share/zsh/5.0.0/functions/_print /usr/share/zsh/5.0.0/functions/_printenv /usr/share/zsh/5.0.0/functions/_printers /usr/share/zsh/5.0.0/functions/_procstat /usr/share/zsh/5.0.0/functions/_prompt /usr/share/zsh/5.0.0/functions/_prstat /usr/share/zsh/5.0.0/functions/_ps /usr/share/zsh/5.0.0/functions/_ps1234 /usr/share/zsh/5.0.0/functions/_pscp /usr/share/zsh/5.0.0/functions/_pspdf /usr/share/zsh/5.0.0/functions/_psutils /usr/share/zsh/5.0.0/functions/_ptree /usr/share/zsh/5.0.0/functions/_pump /usr/share/zsh/5.0.0/functions/_putclip /usr/share/zsh/5.0.0/functions/_pydoc /usr/share/zsh/5.0.0/functions/_python /usr/share/zsh/5.0.0/functions/_qemu /usr/share/zsh/5.0.0/functions/_qiv /usr/share/zsh/5.0.0/functions/_qtplay /usr/share/zsh/5.0.0/functions/_quilt /usr/share/zsh/5.0.0/functions/_raggle /usr/share/zsh/5.0.0/functions/_rake /usr/share/zsh/5.0.0/functions/_ranlib /usr/share/zsh/5.0.0/functions/_rar /usr/share/zsh/5.0.0/functions/_rcs /usr/share/zsh/5.0.0/functions/_read /usr/share/zsh/5.0.0/functions/_read_comp /usr/share/zsh/5.0.0/functions/_readshortcut /usr/share/zsh/5.0.0/functions/_rebootin /usr/share/zsh/5.0.0/functions/_redirect /usr/share/zsh/5.0.0/functions/_regex_arguments /usr/share/zsh/5.0.0/functions/_regex_words /usr/share/zsh/5.0.0/functions/_remote_files /usr/share/zsh/5.0.0/functions/_renice /usr/share/zsh/5.0.0/functions/_reprepro /usr/share/zsh/5.0.0/functions/_requested /usr/share/zsh/5.0.0/functions/_retrieve_cache /usr/share/zsh/5.0.0/functions/_retrieve_mac_apps /usr/share/zsh/5.0.0/functions/_ri /usr/share/zsh/5.0.0/functions/_rlogin /usr/share/zsh/5.0.0/functions/_rm /usr/share/zsh/5.0.0/functions/_rpm /usr/share/zsh/5.0.0/functions/_rpmbuild /usr/share/zsh/5.0.0/functions/_rrdtool /usr/share/zsh/5.0.0/functions/_rsync /usr/share/zsh/5.0.0/functions/_rubber /usr/share/zsh/5.0.0/functions/_ruby /usr/share/zsh/5.0.0/functions/_sablotron /usr/share/zsh/5.0.0/functions/_samba /usr/share/zsh/5.0.0/functions/_savecore /usr/share/zsh/5.0.0/functions/_sccs /usr/share/zsh/5.0.0/functions/_sched /usr/share/zsh/5.0.0/functions/_schedtool /usr/share/zsh/5.0.0/functions/_schroot /usr/share/zsh/5.0.0/functions/_screen /usr/share/zsh/5.0.0/functions/_sed /usr/share/zsh/5.0.0/functions/_sep_parts /usr/share/zsh/5.0.0/functions/_service /usr/share/zsh/5.0.0/functions/_services /usr/share/zsh/5.0.0/functions/_set /usr/share/zsh/5.0.0/functions/_set_command /usr/share/zsh/5.0.0/functions/_setfacl /usr/share/zsh/5.0.0/functions/_setopt /usr/share/zsh/5.0.0/functions/_setup /usr/share/zsh/5.0.0/functions/_setxkbmap /usr/share/zsh/5.0.0/functions/_sh /usr/share/zsh/5.0.0/functions/_showmount /usr/share/zsh/5.0.0/functions/_signals /usr/share/zsh/5.0.0/functions/_sisu /usr/share/zsh/5.0.0/functions/_slrn /usr/share/zsh/5.0.0/functions/_smit /usr/share/zsh/5.0.0/functions/_snoop /usr/share/zsh/5.0.0/functions/_socket /usr/share/zsh/5.0.0/functions/_sockstat /usr/share/zsh/5.0.0/functions/_softwareupdate /usr/share/zsh/5.0.0/functions/_sort /usr/share/zsh/5.0.0/functions/_source /usr/share/zsh/5.0.0/functions/_spamassassin /usr/share/zsh/5.0.0/functions/_sqlite /usr/share/zsh/5.0.0/functions/_sqsh /usr/share/zsh/5.0.0/functions/_ssh /usr/share/zsh/5.0.0/functions/_sshfs /usr/share/zsh/5.0.0/functions/_stat /usr/share/zsh/5.0.0/functions/_stgit /usr/share/zsh/5.0.0/functions/_store_cache /usr/share/zsh/5.0.0/functions/_strace /usr/share/zsh/5.0.0/functions/_strip /usr/share/zsh/5.0.0/functions/_stty /usr/share/zsh/5.0.0/functions/_su /usr/share/zsh/5.0.0/functions/_sub_commands /usr/share/zsh/5.0.0/functions/_subscript /usr/share/zsh/5.0.0/functions/_subversion /usr/share/zsh/5.0.0/functions/_sudo /usr/share/zsh/5.0.0/functions/_suffix_alias_files /usr/share/zsh/5.0.0/functions/_surfraw /usr/share/zsh/5.0.0/functions/_svcadm /usr/share/zsh/5.0.0/functions/_svccfg /usr/share/zsh/5.0.0/functions/_svcprop /usr/share/zsh/5.0.0/functions/_svcs /usr/share/zsh/5.0.0/functions/_svcs_fmri /usr/share/zsh/5.0.0/functions/_svn-buildpackage /usr/share/zsh/5.0.0/functions/_sysctl /usr/share/zsh/5.0.0/functions/_systemd /usr/share/zsh/5.0.0/functions/_tags /usr/share/zsh/5.0.0/functions/_tar /usr/share/zsh/5.0.0/functions/_tar_archive /usr/share/zsh/5.0.0/functions/_tardy /usr/share/zsh/5.0.0/functions/_tcpdump /usr/share/zsh/5.0.0/functions/_tcpsys /usr/share/zsh/5.0.0/functions/_tcptraceroute /usr/share/zsh/5.0.0/functions/_telnet /usr/share/zsh/5.0.0/functions/_terminals /usr/share/zsh/5.0.0/functions/_tex /usr/share/zsh/5.0.0/functions/_texi /usr/share/zsh/5.0.0/functions/_texinfo /usr/share/zsh/5.0.0/functions/_tidy /usr/share/zsh/5.0.0/functions/_tiff /usr/share/zsh/5.0.0/functions/_tilde /usr/share/zsh/5.0.0/functions/_tilde_files /usr/share/zsh/5.0.0/functions/_time_zone /usr/share/zsh/5.0.0/functions/_tin /usr/share/zsh/5.0.0/functions/_tla /usr/share/zsh/5.0.0/functions/_tmux /usr/share/zsh/5.0.0/functions/_todo.sh /usr/share/zsh/5.0.0/functions/_toilet /usr/share/zsh/5.0.0/functions/_toolchain-source /usr/share/zsh/5.0.0/functions/_topgit /usr/share/zsh/5.0.0/functions/_totd /usr/share/zsh/5.0.0/functions/_tpb /usr/share/zsh/5.0.0/functions/_tpconfig /usr/share/zsh/5.0.0/functions/_tracepath /usr/share/zsh/5.0.0/functions/_trap /usr/share/zsh/5.0.0/functions/_tree /usr/share/zsh/5.0.0/functions/_ttyctl /usr/share/zsh/5.0.0/functions/_tune2fs /usr/share/zsh/5.0.0/functions/_twidge /usr/share/zsh/5.0.0/functions/_twisted /usr/share/zsh/5.0.0/functions/_typeset /usr/share/zsh/5.0.0/functions/_ulimit /usr/share/zsh/5.0.0/functions/_uml /usr/share/zsh/5.0.0/functions/_unace /usr/share/zsh/5.0.0/functions/_uname /usr/share/zsh/5.0.0/functions/_unexpand /usr/share/zsh/5.0.0/functions/_unhash /usr/share/zsh/5.0.0/functions/_uniq /usr/share/zsh/5.0.0/functions/_unison /usr/share/zsh/5.0.0/functions/_units /usr/share/zsh/5.0.0/functions/_unsetopt /usr/share/zsh/5.0.0/functions/_update-alternatives /usr/share/zsh/5.0.0/functions/_update-rc.d /usr/share/zsh/5.0.0/functions/_urls /usr/share/zsh/5.0.0/functions/_urpmi /usr/share/zsh/5.0.0/functions/_urxvt /usr/share/zsh/5.0.0/functions/_uscan /usr/share/zsh/5.0.0/functions/_user_admin /usr/share/zsh/5.0.0/functions/_user_at_host /usr/share/zsh/5.0.0/functions/_user_expand /usr/share/zsh/5.0.0/functions/_users /usr/share/zsh/5.0.0/functions/_users_on /usr/share/zsh/5.0.0/functions/_uzbl /usr/share/zsh/5.0.0/functions/_valgrind /usr/share/zsh/5.0.0/functions/_value /usr/share/zsh/5.0.0/functions/_values /usr/share/zsh/5.0.0/functions/_vared /usr/share/zsh/5.0.0/functions/_vars /usr/share/zsh/5.0.0/functions/_vcsh /usr/share/zsh/5.0.0/functions/_vim /usr/share/zsh/5.0.0/functions/_vim-addons /usr/share/zsh/5.0.0/functions/_vnc /usr/share/zsh/5.0.0/functions/_volume_groups /usr/share/zsh/5.0.0/functions/_vorbis /usr/share/zsh/5.0.0/functions/_vorbiscomment /usr/share/zsh/5.0.0/functions/_vserver /usr/share/zsh/5.0.0/functions/_vux /usr/share/zsh/5.0.0/functions/_w3m /usr/share/zsh/5.0.0/functions/_wait /usr/share/zsh/5.0.0/functions/_wajig /usr/share/zsh/5.0.0/functions/_wakeup_capable_devices /usr/share/zsh/5.0.0/functions/_wanna-build /usr/share/zsh/5.0.0/functions/_wanted /usr/share/zsh/5.0.0/functions/_webbrowser /usr/share/zsh/5.0.0/functions/_wget /usr/share/zsh/5.0.0/functions/_whereis /usr/share/zsh/5.0.0/functions/_which /usr/share/zsh/5.0.0/functions/_whois /usr/share/zsh/5.0.0/functions/_wiggle /usr/share/zsh/5.0.0/functions/_wpa_cli /usr/share/zsh/5.0.0/functions/_x_arguments /usr/share/zsh/5.0.0/functions/_x_borderwidth /usr/share/zsh/5.0.0/functions/_x_color /usr/share/zsh/5.0.0/functions/_x_colormapid /usr/share/zsh/5.0.0/functions/_x_cursor /usr/share/zsh/5.0.0/functions/_x_display /usr/share/zsh/5.0.0/functions/_x_extension /usr/share/zsh/5.0.0/functions/_x_font /usr/share/zsh/5.0.0/functions/_x_geometry /usr/share/zsh/5.0.0/functions/_x_keysym /usr/share/zsh/5.0.0/functions/_x_locale /usr/share/zsh/5.0.0/functions/_x_modifier /usr/share/zsh/5.0.0/functions/_x_name /usr/share/zsh/5.0.0/functions/_x_resource /usr/share/zsh/5.0.0/functions/_x_selection_timeout /usr/share/zsh/5.0.0/functions/_x_title /usr/share/zsh/5.0.0/functions/_x_utils /usr/share/zsh/5.0.0/functions/_x_visual /usr/share/zsh/5.0.0/functions/_x_window /usr/share/zsh/5.0.0/functions/_xargs /usr/share/zsh/5.0.0/functions/_xauth /usr/share/zsh/5.0.0/functions/_xclip /usr/share/zsh/5.0.0/functions/_xdvi /usr/share/zsh/5.0.0/functions/_xfig /usr/share/zsh/5.0.0/functions/_xft_fonts /usr/share/zsh/5.0.0/functions/_xloadimage /usr/share/zsh/5.0.0/functions/_xmlsoft /usr/share/zsh/5.0.0/functions/_xmms2 /usr/share/zsh/5.0.0/functions/_xmodmap /usr/share/zsh/5.0.0/functions/_xournal /usr/share/zsh/5.0.0/functions/_xpdf /usr/share/zsh/5.0.0/functions/_xrandr /usr/share/zsh/5.0.0/functions/_xscreensaver /usr/share/zsh/5.0.0/functions/_xset /usr/share/zsh/5.0.0/functions/_xt_arguments /usr/share/zsh/5.0.0/functions/_xt_session_id /usr/share/zsh/5.0.0/functions/_xterm /usr/share/zsh/5.0.0/functions/_xv /usr/share/zsh/5.0.0/functions/_xwit /usr/share/zsh/5.0.0/functions/_yafc /usr/share/zsh/5.0.0/functions/_yast /usr/share/zsh/5.0.0/functions/_yast2 /usr/share/zsh/5.0.0/functions/_yodl /usr/share/zsh/5.0.0/functions/_yp /usr/share/zsh/5.0.0/functions/_yum /usr/share/zsh/5.0.0/functions/_zargs /usr/share/zsh/5.0.0/functions/_zattr /usr/share/zsh/5.0.0/functions/_zcalc_line /usr/share/zsh/5.0.0/functions/_zcat /usr/share/zsh/5.0.0/functions/_zcompile /usr/share/zsh/5.0.0/functions/_zdump /usr/share/zsh/5.0.0/functions/_zed /usr/share/zsh/5.0.0/functions/_zfs /usr/share/zsh/5.0.0/functions/_zfs_dataset /usr/share/zsh/5.0.0/functions/_zfs_keysource_props /usr/share/zsh/5.0.0/functions/_zfs_pool /usr/share/zsh/5.0.0/functions/_zftp /usr/share/zsh/5.0.0/functions/_zip /usr/share/zsh/5.0.0/functions/_zle /usr/share/zsh/5.0.0/functions/_zlogin /usr/share/zsh/5.0.0/functions/_zmodload /usr/share/zsh/5.0.0/functions/_zmv /usr/share/zsh/5.0.0/functions/_zoneadm /usr/share/zsh/5.0.0/functions/_zones /usr/share/zsh/5.0.0/functions/_zpool /usr/share/zsh/5.0.0/functions/_zpty /usr/share/zsh/5.0.0/functions/_zsh-mime-handler /usr/share/zsh/5.0.0/functions/_zstyle /usr/share/zsh/5.0.0/functions/_ztodo /usr/share/zsh/5.0.0/functions/_zypper ) 
+compaudit:59> [[ -n /usr/share/zsh/5.0.0/functions ]]
+compaudit:60> [[ 690 -lt 20 || /usr/share/zsh/5.0.0/functions == */Base || -d /usr/share/zsh/5.0.0/functions/Base ]]
+compaudit:81> [[ use == use ]]
+compaudit:81> return 0
+compinit:464> autoload -Uz compdump compinstall
+compinit:468> _i_done='' 
+compinit:470> [[ -f /home/tomo/.zkit/var/zsh_compdump ]]
+compinit:471> [[ -n yes ]]
+compinit:472> IFS=' 	' +compinit:472> read -rA _i_line
+compinit:473> [[ _i_autodump -eq 1 && 690 -eq 690 && 5.0.0 == 5.0.0 ]]
+compinit:476> . /home/tomo/.zkit/var/zsh_compdump
+/home/tomo/.zkit/var/zsh_compdump:3> _comps=( - _precommand -array-value- _value -assign-parameter- _assign -brace-parameter- _brace_parameter -command- _autocd -command-line- _normal -condition- _condition -default- _default -equal- _equal -first- _first -math- _math -parameter- _parameter -redirect- _redirect -redirect-,-default-,-default- _files '-redirect-,<,bunzip2' _bzip2 '-redirect-,<,bzip2' _bzip2 '-redirect-,<,compress' _compress '-redirect-,<,gunzip' _gzip '-redirect-,<,gzip' _gzip '-redirect-,<,uncompress' _compress '-redirect-,>,bzip2' _bzip2 '-redirect-,>,compress' _compress '-redirect-,>,gzip' _gzip -subscript- _subscript -tilde- _tilde -value- _value -value-,-default-,-command- _zargs -value-,-default-,-default- _value -value-,ADB_TRACE,-default- _adb -value-,ANDROID_LOG_TAGS,-default- _adb -value-,ANDROID_SERIAL,-default- _adb -value-,ANT_ARGS,-default- _ant -value-,CFLAGS,-default- _gcc -value-,CPPFLAGS,-default- _gcc -value-,DISPLAY,-default- _x_display -value-,GREP_OPTIONS,-default- _grep -value-,GZIP,-default- _gzip -value-,LANG,-default- _locales -value-,LANGUAGE,-default- _locales -value-,LDFLAGS,-default- _gcc -value-,LD_DEBUG,-default- _ld_debug -value-,LESS,-default- _less -value-,LESSCHARSET,-default- _less -value-,LPDEST,-default- _printers -value-,P4CLIENT,-default- _perforce -value-,P4MERGE,-default- _perforce -value-,P4PORT,-default- _perforce -value-,P4USER,-default- _perforce -value-,PERLDOC,-default- _perldoc -value-,PRINTER,-default- _printers -value-,PROMPT,-default- _ps1234 -value-,PROMPT2,-default- _ps1234 -value-,PROMPT3,-default- _ps1234 -value-,PROMPT4,-default- _ps1234 -value-,PS1,-default- _ps1234 -value-,PS2,-default- _ps1234 -value-,PS3,-default- _ps1234 -value-,PS4,-default- _ps1234 -value-,RPROMPT,-default- _ps1234 -value-,RPROMPT2,-default- _ps1234 -value-,RPS1,-default- _ps1234 -value-,RPS2,-default- _ps1234 -value-,SPROMPT,-default- _ps1234 -value-,TERM,-default- _terminals -value-,TERMINFO_DIRS,-default- _dir_list -value-,TZ,-default- _time_zone -value-,VALGRIND_OPTS,-default- _valgrind -value-,WWW_HOME,-default- _urls -value-,XML_CATALOG_FILES,-default- _xmlsoft -vared- _in_vared -zcalc-line- _zcalc_line . _source 5g _go 5l _go 6g _go 6l _go 8g _go 8l _go Mail _mail Mosaic _webbrowser SuSEconfig _SuSEconfig a2dismod _a2utils a2dissite _a2utils a2enmod _a2utils a2ensite _a2utils a2ps _a2ps aaaa _hosts aap _aap acpi _acpi acpitool _acpitool acroread _acroread adb _adb admin _sccs ali _mh alias _alias amaya _webbrowser analyseplugin _analyseplugin animate _imagemagick anno _mh ant _ant antiword _antiword aoss _precommand apache2ctl _apachectl apachectl _apachectl apm _apm appletviewer _java apropos _man apt-cache _apt apt-cdrom _apt apt-config _apt apt-file _apt-file apt-get _apt apt-move _apt-move apt-show-versions _apt-show-versions aptitude _aptitude apvlv _pdf arena _webbrowser arp _arp arping _arping at _at atq _at atrm _at attr _attr auto-apt _auto-apt autoload _typeset awk _awk axi-cache _axi-cache bash _sh batch _at baz _baz beadm _beadm bg _jobs_bg bindkey _bindkey bison _bison bogofilter _bogofilter bogotune _bogofilter bogoutil _bogofilter brctl _brctl btdownloadcurses _bittorrent btdownloadgui _bittorrent btdownloadheadless _bittorrent btlaunchmany _bittorrent btlaunchmanycurses _bittorrent btmakemetafile _bittorrent btreannounce _bittorrent btrename _bittorrent bts _bts btshowmetainfo _bittorrent bttrack _bittorrent bug _bug buildhash _ispell builtin _builtin bunzip2 _bzip2 burst _mh bzcat _bzip2 bzip2 _bzip2 bzip2recover _bzip2 bzr _bzr cal _cal calendar _calendar catchsegv _precommand ccal _ccal cd _cd cdbs-edit-patch _cdbs-edit-patch cdc _sccs cdcd _cdcd cdr _cdr cdrdao _cdrdao cdrecord _cdrecord certtool _gnutls cftp _twisted chage _users chdir _cd chflags _chflags chfn _users chgrp _chown chimera _webbrowser chkconfig _chkconfig chmod _chmod chown _chown chrt _chrt chsh _users ci _rcs ckeygen _twisted clear _nothing co _rcs comb _sccs combine _imagemagick comm _comm command _command comp _mh compdef _compdef composite _imagemagick compress _compress conch _twisted config.status _configure configure _configure convert _imagemagick coreadm _coreadm cowsay _cowsay cowthink _cowsay cp _cp cpio _cpio cplay _cplay crsh _cssh cryptsetup _cryptsetup csh _sh cssh _cssh csup _csup curl _urls cut _cut cvs _cvs cvsup _cvsup cygcheck _cygcheck cygcheck.exe _cygcheck cygpath _cygpath cygpath.exe _cygpath cygrunsrv _cygrunsrv cygrunsrv.exe _cygrunsrv cygserver _cygserver cygserver.exe _cygserver cygstart _cygstart cygstart.exe _cygstart dak _dak darcs _darcs date _date dbus-cli _dbus-cli dch _debchange dchroot _dchroot dchroot-dsa _dchroot-dsa dcop _dcop dcopclient _dcop dcopfind _dcop dcopobject _dcop dcopref _dcop dcopstart _dcop dd _dd debchange _debchange debdiff _debdiff debfoster _debfoster debsign _debsign declare _typeset defaults _defaults delta _sccs devtodo _devtodo df _directories dhclient _dhclient dhclient3 _dhclient dhcpinfo _dhcpinfo dict _dict diff _diff diffstat _diffstat dillo _webbrowser dircmp _directories dirs _dirs disable _disable disown _jobs_fg display _imagemagick dist _mh django-admin _django django-admin.py _django dladm _dladm dlocate _dlocate dmake _make dmidecode _dmidecode domainname _yp dosdel _floppy dosread _floppy dpatch-edit-patch _dpatch-edit-patch dpkg _dpkg dpkg-buildpackage _dpkg-buildpackage dpkg-cross _dpkg-cross dpkg-deb _dpkg dpkg-query _dpkg dpkg-reconfigure _dpkg dpkg-repack _dpkg-repack dpkg-source _dpkg_source dput _dput dtrace _dtrace du _du dumpadm _dumpadm dumper _dumper dumper.exe _dumper dupload _dupload dvibook _dvi dviconcat _dvi dvicopy _dvi dvidvi _dvi dvips _dvi dviselect _dvi dvitodvi _dvi dvitype _dvi ecasound _ecasound echotc _echotc echoti _echoti egrep _grep elinks _elinks elm _elm emulate _emulate enable _enable enscript _enscript env _env epdfview _pdf epsffit _psutils espeak _espeak ethtool _ethtool eval _precommand eview _vim evim _vim evince _pdf exec _precommand exim _vim explodepkg _pkgtool export _typeset express _webbrowser extcheck _java extractres _psutils fakeroot _fakeroot false _nothing fc _fc fc-list _xft_fonts fc-match _xft_fonts feh _feh fetch _fetch fetchmail _fetchmail ffmpeg _ffmpeg fg _jobs_fg fgrep _grep figlet _figlet find _find findaffix _ispell finger _finger fink _fink firefox _mozilla fixdlsrps _psutils fixfmps _psutils fixmacps _psutils fixpsditps _psutils fixpspps _psutils fixscribeps _psutils fixtpps _psutils fixwfwps _psutils fixwpps _psutils fixwwps _psutils flasher _flasher flex _flex flist _mh flists _mh float _typeset flowadm _flowadm fmadm _fmadm fned _zed folder _mh folders _mh fortune _fortune forw _mh freebsd-update _freebsd-update fsh _fsh fstat _fstat ftp _hosts functions _typeset fuser _fuser fusermount _fusermount fwhois _whois g++ _gcc galeon _webbrowser gcc _gcc gccgo _go gcore _gcore gdb _gdb gdiff _diff genisoimage _genisoimage get _sccs getafm _psutils getclip _getclip getclip.exe _getclip getconf _getconf getent _getent getfacl _getfacl getfacl.exe _getfacl getfattr _attr getmail _getmail getopts _vars gex _vim ggv _gnome-gv ghostscript _gs ghostview _pspdf git _git git-buildpackage _git-buildpackage git-cvsserver _git git-receive-pack _git git-shell _git git-upload-archive _git git-upload-pack _git gitk _git gln _ln global _global gls _ls gm _graphicsmagick gmake _make gmplayer _mplayer gnome-gv _gnome-gv gnupod_INIT _gnupod gnupod_INIT.pl _gnupod gnupod_addsong _gnupod gnupod_addsong.pl _gnupod gnupod_check _gnupod gnupod_check.pl _gnupod gnupod_search _gnupod gnupod_search.pl _gnupod gnutls-cli _gnutls gnutls-cli-debug _gnutls gofmt _go gpaste _gpaste gpg _gpg gpg-zip _gpg gpgv _gpg gphoto2 _gphoto2 gprof _gprof gqview _gqview gradle _gradle gradlew _gradle grail _webbrowser grep _grep grep-excuses _grep-excuses groff _groff groupadd _user_admin groupdel _groups groupmod _user_admin groups _users growisofs _growisofs gs _gs gsbj _pspdf gsdj _pspdf gsdj500 _pspdf gslj _pspdf gslp _pspdf gsnd _pspdf gtar _tar guilt _guilt guilt-add _guilt guilt-applied _guilt guilt-delete _guilt guilt-files _guilt guilt-fold _guilt guilt-fork _guilt guilt-header _guilt guilt-help _guilt guilt-import _guilt guilt-import-commit _guilt guilt-init _guilt guilt-new _guilt guilt-next _guilt guilt-patchbomb _guilt guilt-pop _guilt guilt-prev _guilt guilt-push _guilt guilt-rebase _guilt guilt-refresh _guilt guilt-rm _guilt guilt-series _guilt guilt-status _guilt guilt-top _guilt guilt-unapplied _guilt gunzip _gzip gv _gv gview _vim gvim _vim gvimdiff _vim gzcat _gzip gzilla _webbrowser gzip _gzip hash _hash hdiutil _hdiutil help _sccs hg _mercurial hilite _precommand history _fc host _hosts hotjava _webbrowser hwinfo _hwinfo iceweasel _mozilla icombine _ispell iconv _iconv id _id identify _imagemagick ifconfig _ifconfig ifdown _net_interfaces iftop _iftop ifup _net_interfaces ijoin _ispell import _imagemagick inc _mh includeres _psutils inetadm _inetadm info _texinfo infocmp _terminals initctl _initctl insmod _modutils install-info _texinfo installpkg _pkgtool integer _typeset invoke-rc.d _invoke-rc.d ionice _ionice ip _ip ipadm _ipadm ipset _ipset iptables _iptables iptables-restore _iptables iptables-save _iptables irssi _irssi ispell _ispell iwconfig _iwconfig j _j jadetex _tex jar _java jarsigner _java java _java javac _java javadoc _java javah _java javap _java jdb _java jobs _jobs_builtin joe _joe join _join keytool _java kfmclient _kfmclient kill _kill killall _killall killall5 _killall kioclient _kfmclient kldload _kld kldunload _kld knock _knock konqueror _webbrowser kpdf _pdf ksh _sh kvno _kvno last _last lastb _last latex _tex latexmk _tex ldd _ldd less _less let _math lftp _ncftp light _webbrowser lighty-disable-mod _lighttpd lighty-enable-mod _lighttpd limit _limit linda _linda links _links lintian _lintian lintian-info _lintian linux _uml ln _ln loadkeys _loadkeys local _typeset locate _locate log _nothing logname _nothing look _look lore _twisted losetup _losetup lp _lp lpadmin _lp lpinfo _lp lpoptions _lp lpq _lp lpr _lp lprm _lp lpstat _lp ls _ls lscfg _lscfg lsdev _lsdev lslv _lslv lsmod _modutils lsof _lsof lspv _lspv lsusb _lsusb lsvg _lsvg lynx _lynx lzop _lzop m-a _module-assistant madison _madison mail _mail mailx _mail make _make make-kpkg _make-kpkg makeinfo _texinfo makepkg _pkgtool man _man manage.py _django manhole _twisted mark _mh matlab _matlab mattrib _mtools mcd _mtools mcopy _mtools md5sum _md5sum mdadm _mdadm mdel _mtools mdeltree _mtools mdir _mtools mdu _mtools members _members mencal _mencal mere _mere merge _rcs mergechanges _mergechanges metaflac _metaflac mformat _mtools mgv _pspdf mhlist _mh mhmail _mh mhn _mh mhparam _mh mhpath _mh mhshow _mh mhstore _mh mii-tool _mii-tool mkdir _mkdir mkisofs _growisofs mkshortcut _mkshortcut mkshortcut.exe _mkshortcut mktap _twisted mktunes _gnupod mktunes.pl _gnupod mkzsh _mkzsh mkzsh.exe _mkzsh mlabel _mtools mlocate _locate mmd _mtools mmm _webbrowser mmount _mtools mmove _mtools modinfo _modutils modprobe _modutils module _module module-assistant _module-assistant mogrify _imagemagick mondoarchive _mondo montage _imagemagick mosh _mosh mount _mount mozilla _mozilla mozilla-firefox _mozilla mozilla-xremote-client _mozilla mpc _mpc mplayer _mplayer mrd _mtools mread _mtools mren _mtools msgchk _mh mt _mt mtn _monotone mtoolstest _mtools mtr _mtr mtype _mtools munchlist _ispell mush _mail mutt _mutt mx _hosts mysql _mysql_utils mysqladmin _mysql_utils mysqldiff _mysqldiff mysqldump _mysql_utils mysqlimport _mysql_utils mysqlshow _mysql_utils nail _mail native2ascii _java nautilus _nautilus nc _netcat ncal _cal ncftp _ncftp ncl _nedit nedit _nedit nedit-nc _nedit netcat _netcat netrik _webbrowser netscape _netscape netstat _netstat newgrp _groups next _mh nice _nice nm _nm nmap _nmap nmblookup _samba nmcli _nmcli nocorrect _precommand noglob _precommand nohup _precommand notmuch _notmuch npm _npm ns _hosts nslookup _nslookup ntalk _other_accounts odme _object_classes odmget _object_classes odmshow _object_classes ogg123 _vorbis oggdec _vorbis oggenc _vorbis ogginfo _vorbis okular _okular open _open opera _webbrowser osc _osc p4 _perforce p4d _perforce pack _pack packf _mh parsehdlist _urpmi passwd _users patch _patch pax _pax pbuilder _pbuilder pcat _pack pcred _pids pdf2dsc _pdf pdf2ps _pdf pdffonts _pdf pdfimages _pdf pdfinfo _pdf pdfjadetex _tex pdflatex _tex pdfopt _pdf pdftex _tex pdftk _pdftk pdftopbm _pdf pdftops _pdf pdftotext _pdf perl _perl perldoc _perldoc pfctl _pfctl pfexec _pfexec pfiles _pids pflags _pids pgrep _pgrep phoenix _webbrowser php _php pick _mh pine _pine pinef _pine ping _ping piuparts _piuparts pkg _pkg5 pkg-config _pkg-config pkg_add _bsd_pkg pkg_create _bsd_pkg pkg_delete _bsd_pkg pkg_info _bsd_pkg pkgadd _pkgadd pkginfo _pkginfo pkgrm _pkgrm pkgtool _pkgtool pkill _pgrep pldd _pids pmake _make pman _perl_modules pmap _pids pmcat _perl_modules pmdesc _perl_modules pmeth _perl_modules pmexp _perl_modules pmfunc _perl_modules pmload _perl_modules pmls _perl_modules pmpath _perl_modules pmvers _perl_modules podgrep _perl_modules podpath _perl_modules podtoc _perl_modules poff _pon policytool _java pon _pon popd _directory_stack portaudit _portaudit portlint _portlint portmaster _portmaster portsnap _portsnap postsuper _postfix powerd _powerd prcs _prcs prev _mh print _print printenv _printenv printf _print procstat _procstat prompt _prompt prs _sccs prstat _prstat prt _sccs prun _pids ps2ascii _pspdf ps2epsi _ps ps2pdf _ps ps2pdf12 _ps ps2pdf13 _ps ps2pdf14 _ps ps2pdfwr _ps ps2ps _ps psbook _psutils pscp _pscp pscp.exe _pscp psig _pids psmerge _psutils psmulti _ps psnup _psutils psresize _psutils psselect _psutils pstack _pids pstoedit _pspdf pstop _pids pstops _psutils pstotgif _pspdf pswrap _ps ptree _pids pump _pump pushd _cd putclip _putclip putclip.exe _putclip pwait _pids pwdx _pids pydoc _pydoc pyhtmlizer _twisted python _python qemu _qemu qiv _qiv qtplay _qtplay querybts _bug quilt _quilt r _fc raggle _raggle rake _rake ranlib _ranlib rar _rar rc _sh rcp _rlogin rcs _rcs rcsdiff _rcs read _read readonly _typeset readshortcut _readshortcut readshortcut.exe _readshortcut rebootin _rebootin refile _mh rehash _hash reload _initctl removepkg _pkgtool remsh _rlogin renice _renice repl _mh reportbug _bug reprepro _reprepro restart _initctl retawq _webbrowser rgview _vim rgvim _vim ri _ri rlogin _rlogin rm _rm rmadison _madison rmdel _sccs rmdir _directories rmf _mh rmic _java rmid _java rmiregistry _java rmm _mh rmmod _modutils rpm _rpm rpmbuild _rpmbuild rrdtool _rrdtool rsh _rlogin rsync _rsync rtin _tin rubber _rubber rubber-info _rubber rubber-pipe _rubber ruby _ruby rup _hosts rusage _precommand rview _vim rvim _vim rvm _rvm rwho _hosts sabcmd _sablotron sact _sccs savecore _savecore scan _mh sccs _sccs sccsdiff _sccs sched _sched schedtool _schedtool schroot _schroot scp _ssh screen _screen sed _sed serialver _java service _service set _set setfacl _setfacl setfacl.exe _setfacl setfattr _attr setopt _setopt sftp _ssh sh _sh shift _arrays show _mh showchar _psutils showmount _showmount sisu _sisu skipstone _webbrowser slitex _tex slocate _locate slogin _ssh slrn _slrn smbclient _samba smbcontrol _samba smbstatus _samba smit _smit smitty _smit snoop _snoop soa _hosts socket _socket sockstat _sockstat softwareupdate _softwareupdate sort _sort sortm _mh source _source spamassassin _spamassassin sqlite _sqlite sqlite3 _sqlite sqsh _sqsh sr _surfraw srptool _gnutls ssh _ssh ssh-add _ssh ssh-agent _ssh ssh-copy-id _ssh ssh-keygen _ssh sshfs _sshfs star _tar start _initctl stat _stat status _initctl stg _stgit stop _initctl strace _strace strip _strip stty _stty su _su sudo _sudo sudoedit _sudo surfraw _surfraw svcadm _svcadm svccfg _svccfg svcprop _svcprop svcs _svcs svn _subversion svn-buildpackage _svn-buildpackage svnadmin _subversion svnadmin-static _subversion sync _nothing sysctl _sysctl systemctl _systemd systemd-loginctl _systemd talk _other_accounts tap2deb _twisted tap2rpm _twisted tapconvert _twisted tar _tar tardy _tardy tcp_open _tcpsys tcpdump _tcpdump tcptraceroute _tcptraceroute tcsh _sh tda _devtodo tdd _devtodo tde _devtodo tdr _devtodo telnet _telnet tex _tex texi2dvi _texinfo texindex _texinfo tg _topgit tidy _tidy tig _git time _precommand times _nothing tin _tin tkconch _twisted tkinfo _texinfo tkmktap _twisted tla _tla tmux _tmux todo _devtodo todo.sh _todo.sh toilet _toilet totdconfig _totd tpb _tpb tpconfig _tpconfig tpkg-debarch _toolchain-source tpkg-install _toolchain-source tpkg-install-libc _toolchain-source tpkg-make _toolchain-source tpkg-update _toolchain-source tracepath _tracepath tracepath6 _tracepath traceroute _hosts trap _trap tree _tree trial _twisted true _nothing tryaffix _ispell ttyctl _ttyctl tunctl _uml tune2fs _tune2fs tunes2pod _gnupod tunes2pod.pl _gnupod twidge _twidge twistd _twisted txt _hosts type _which typeset _typeset ulimit _ulimit uml_mconsole _uml uml_moo _uml uml_switch _uml umount _mount unace _unace unalias _aliases uname _uname uncompress _compress unexpand _unexpand unfunction _functions unget _sccs unhash _unhash uniq _uniq unison _unison units _units unlimit _limits unpack _pack unrar _rar unset _vars unsetopt _unsetopt unzip _zip update-alternatives _update-alternatives update-rc.d _update-rc.d upgradepkg _pkgtool urpme _urpmi urpmf _urpmi urpmi _urpmi urpmi.addmedia _urpmi urpmi.removemedia _urpmi urpmi.update _urpmi urpmq _urpmi urxvt _urxvt uscan _uscan useradd _user_admin userdel _users usermod _user_admin uzbl _uzbl uzbl-browser _uzbl uzbl-tabbed _uzbl val _sccs valgrind _valgrind vared _vared vcsh _vcsh vim _vim vim-addons _vim-addons vimdiff _vim vncserver _vnc vncviewer _vnc vorbiscomment _vorbiscomment vserver _vserver vux _vux vuxctl _vux w3m _w3m wait _wait wajig _wajig wanna-build _wanna-build websetroot _twisted wget _wget what _sccs whatis _man whence _which where _which whereis _whereis which _which whoami _nothing whois _whois whom _mh wiggle _wiggle wodim _cdrecord wpa_cli _wpa_cli write _users_on www _webbrowser xargs _xargs xauth _xauth xclip _xclip xdpyinfo _x_utils xdvi _xdvi xelatex _tex xetex _tex xev _x_utils xfd _x_utils xfig _xfig xfontsel _x_utils xhost _x_utils xkill _x_utils xli _xloadimage xloadimage _xloadimage xlsatoms _x_utils xmllint _xmlsoft xmms2 _xmms2 xmodmap _xmodmap xmosaic _webbrowser xon _x_utils xournal _xournal xpdf _xpdf xping _hosts xprop _x_utils xrandr _xrandr xrdb _x_utils xscreensaver-command _xscreensaver xset _xset xsetbg _xloadimage xsetroot _x_utils xsltproc _xmlsoft xterm _xterm xtightvncviewer _vnc xtp _imagemagick xv _xv xview _xloadimage xvnc4viewer _vnc xvncviewer _vnc xwd _x_utils xwininfo _x_utils xwit _xwit xwud _x_utils yast _yast yast2 _yast ypbind _yp ypcat _yp ypmatch _yp yppasswd _yp yppoll _yp yppush _yp ypserv _yp ypset _yp ypwhich _yp ypxfr _yp ytalk _other_accounts yum _yum zargs _zargs zcat _zcat zcompile _zcompile zcp _zmv zdelattr _zattr zdump _zdump zed _zed zen _webbrowser zfs _zfs zgetattr _zattr zip _zip zipinfo _zip zle _zle zlistattr _zattr zln _zmv zlogin _zlogin zmail _mail zmodload _zmodload zmv _zmv zone _hosts zoneadm _zoneadm zpool _zpool zpty _zpty zsetattr _zattr zsh _sh zsh-mime-handler _zsh-mime-handler zstat _stat zstyle _zstyle ztodo _ztodo zxpdf _xpdf zypper _zypper ) 
+/home/tomo/.zkit/var/zsh_compdump:1194> _services=( '-redirect-,<,bunzip2' bunzip2 '-redirect-,<,bzip2' bzip2 '-redirect-,<,compress' compress '-redirect-,<,gunzip' gunzip '-redirect-,<,gzip' gzip '-redirect-,<,uncompress' uncompress '-redirect-,>,bzip2' bunzip2 '-redirect-,>,compress' uncompress '-redirect-,>,gzip' gunzip Mail mail bzcat bunzip2 dch debchange gnupod_INIT.pl gnupod_INIT gnupod_addsong.pl gnupod_addsong gnupod_check.pl gnupod_check gnupod_search.pl gnupod_search gzcat gunzip iceweasel firefox mailx mail mktunes.pl mktunes nail mail ncl nc nedit-nc nc pcat unpack remsh rsh slogin ssh svnadmin-static svnadmin tunes2pod.pl tunes2pod xelatex latex xetex tex ) 
+/home/tomo/.zkit/var/zsh_compdump:1227> _patcomps=( '*/(init|rc[0-9S]#).d/*' _init_d 'zf*' _zftp ) 
+/home/tomo/.zkit/var/zsh_compdump:1232> _postpatcomps=( '(p[bgpn]m*|*top[bgpn]m)' _pbm '(texi(2*|ndex))' _texi '(tiff*|*2tiff|pal2rgb)' _tiff '*/X11(|R<4->)/*' _x_arguments '-value-,(ftp|http(|s))_proxy,-default-' _urls '-value-,*PATH,-default-' _dir_list '-value-,*path,-default-' _directories '-value-,LC_*,-default-' _locales '-value-,RUBY(LIB|OPT|PATH),-default-' _ruby 'yodl(|2*)' _yodl ) 
+/home/tomo/.zkit/var/zsh_compdump:1245> _compautos=( _call_program +X ) 
+/home/tomo/.zkit/var/zsh_compdump:1249> zle -C _bash_complete-word .complete-word _bash_completions
+/home/tomo/.zkit/var/zsh_compdump:1250> zle -C _bash_list-choices .list-choices _bash_completions
+/home/tomo/.zkit/var/zsh_compdump:1251> zle -C _complete_debug .complete-word _complete_debug
+/home/tomo/.zkit/var/zsh_compdump:1252> zle -C _complete_help .complete-word _complete_help
+/home/tomo/.zkit/var/zsh_compdump:1253> zle -C _complete_tag .complete-word _complete_tag
+/home/tomo/.zkit/var/zsh_compdump:1254> zle -C _correct_filename .complete-word _correct_filename
+/home/tomo/.zkit/var/zsh_compdump:1255> zle -C _correct_word .complete-word _correct_word
+/home/tomo/.zkit/var/zsh_compdump:1256> zle -C _expand_alias .complete-word _expand_alias
+/home/tomo/.zkit/var/zsh_compdump:1257> zle -C _expand_word .complete-word _expand_word
+/home/tomo/.zkit/var/zsh_compdump:1258> zle -C _history-complete-newer .complete-word _history_complete_word
+/home/tomo/.zkit/var/zsh_compdump:1259> zle -C _history-complete-older .complete-word _history_complete_word
+/home/tomo/.zkit/var/zsh_compdump:1260> zle -C _list_expansions .list-choices _expand_word
+/home/tomo/.zkit/var/zsh_compdump:1261> zle -C _most_recent_file .complete-word _most_recent_file
+/home/tomo/.zkit/var/zsh_compdump:1262> zle -C _next_tags .list-choices _next_tags
+/home/tomo/.zkit/var/zsh_compdump:1263> zle -C _read_comp .complete-word _read_comp
+/home/tomo/.zkit/var/zsh_compdump:1264> bindkey '^X^R' _read_comp
+/home/tomo/.zkit/var/zsh_compdump:1265> bindkey '^X?' _complete_debug
+/home/tomo/.zkit/var/zsh_compdump:1266> bindkey '^XC' _correct_filename
+/home/tomo/.zkit/var/zsh_compdump:1267> bindkey '^Xa' _expand_alias
+/home/tomo/.zkit/var/zsh_compdump:1268> bindkey '^Xc' _correct_word
+/home/tomo/.zkit/var/zsh_compdump:1269> bindkey '^Xd' _list_expansions
+/home/tomo/.zkit/var/zsh_compdump:1270> bindkey '^Xe' _expand_word
+/home/tomo/.zkit/var/zsh_compdump:1271> bindkey '^Xh' _complete_help
+/home/tomo/.zkit/var/zsh_compdump:1272> bindkey '^Xm' _most_recent_file
+/home/tomo/.zkit/var/zsh_compdump:1273> bindkey '^Xn' _next_tags
+/home/tomo/.zkit/var/zsh_compdump:1274> bindkey '^Xt' _complete_tag
+/home/tomo/.zkit/var/zsh_compdump:1275> bindkey '^X~' _bash_list-choices
+/home/tomo/.zkit/var/zsh_compdump:1276> bindkey '^[,' _history-complete-newer
+/home/tomo/.zkit/var/zsh_compdump:1277> bindkey '^[/' _history-complete-older
+/home/tomo/.zkit/var/zsh_compdump:1278> bindkey '^[~' _bash_complete-word
+/home/tomo/.zkit/var/zsh_compdump:1280> autoload -Uz _SuSEconfig __function_on_stack __git_info_push __git_info_stash __list_remote_rubies_for __rvm_add_to_path __rvm_after_cd __rvm_array_add_or_update __rvm_array_contains __rvm_ask_for __rvm_ask_to_trust __rvm_become __rvm_bin_script __rvm_bin_scripts __rvm_calculate_remote_file __rvm_call_with_restored_umask __rvm_cd __rvm_check_rvmrc_trustworthiness __rvm_checksum_all __rvm_checksum_any __rvm_checksum_calculate_file __rvm_checksum_none __rvm_checksum_read __rvm_checksum_validate_file __rvm_checksum_write __rvm_clean_path __rvm_cleanse_variables __rvm_cleanup_tmp __rvm_conditionally_add_bin_path __rvm_conditionally_do_with_env __rvm_current_gemcache_dir __rvm_current_gemset __rvm_custom_separated_array __rvm_db __rvm_default_flags __rvm_detect_system __rvm_detect_xcode_version __rvm_detect_xcode_version_is __rvm_display_rvmrc __rvm_do_with_env __rvm_do_with_env_after __rvm_do_with_env_before __rvm_ensure_has_environment_files __rvm_ensure_is_a_function __rvm_env_string __rvm_expand_ruby_string __rvm_export __rvm_find_first_file __rvm_fix_group_permissions __rvm_gemset_clear __rvm_gemset_handle_default __rvm_gemset_select __rvm_gemset_select_cli __rvm_gemset_select_cli_validation __rvm_gemset_select_ensure __rvm_gemset_select_only __rvm_gemset_select_validation __rvm_gemset_use __rvm_gemsets_initial __rvm_has_opt __rvm_initialize __rvm_inspect __rvm_join_array __rvm_load_environment __rvm_load_project_config __rvm_load_rvmrc __rvm_log_command __rvm_manage_wrapper __rvm_md5_calculate __rvm_md5_for __rvm_md5_for_contents __rvm_meta __rvm_nuke_rvm_variables __rvm_package __rvm_pager_or_cat_v __rvm_parse_args __rvm_parse_args_find_known_flags __rvm_project_dir_check __rvm_project_rvmrc __rvm_read_lines __rvm_reboot __rvm_record_install __rvm_recorded_install_command __rvm_remote_extension __rvm_remote_server_path __rvm_remote_server_path_single __rvm_remove_from_array __rvm_remove_from_path __rvm_remove_install_record __rvm_remove_rvm_from_path __rvm_reset_rvmrc_trust __rvm_rm_rf __rvm_rm_rf_verbose __rvm_ruby_config_get __rvm_ruby_config_save __rvm_ruby_package_file __rvm_ruby_string __rvm_ruby_string_paths_under __rvm_ruby_strings_exist __rvm_rubygems_create_link __rvm_run __rvm_run_script __rvm_run_with_env __rvm_rvmrc_key __rvm_rvmrc_stored_trust __rvm_rvmrc_stored_trust_check __rvm_rvmrc_tools __rvm_sed_i __rvm_select __rvm_set_ruby_version __rvm_set_rvmrc __rvm_set_versions_conf __rvm_setup __rvm_setup_cd __rvm_setup_cd_function __rvm_sha256_for __rvm_sha256_for_contents __rvm_sha__calculate __rvm_source_dir __rvm_string_match __rvm_strings __rvm_strip __rvm_switch __rvm_system_path __rvm_teardown __rvm_teardown_final __rvm_trust_rvmrc __rvm_unset_exports __rvm_unset_ruby_variables __rvm_untrust_rvmrc __rvm_usage __rvm_use __rvm_use_system __rvm_using_gemset_globalcache __rvm_version __rvm_version_compare __rvm_warn_on_rubyopt __rvm_which __variables_definition __vcs_info __zkit_die __zkit_err __zkit_icon_title __zkit_icon_title_prefix __zkit_install __zkit_load_rc __zkit_msg __zkit_run __zkit_rvm_prompt __zkit_sort_rc __zkit_template __zkit_whence _a2ps _a2utils _aap _acpi _acpitool _acroread _adb _alias _aliases _all_labels _all_matches _alternative _analyseplugin _ant _antiword _apachectl _apm _approximate _apt _apt-file _apt-move _apt-show-versions _aptitude _arch_archives _arch_namespace _arg_compile _arguments _arp _arping _arrays _assign _at _attr _auto-apt _autocd _awk _axi-cache _bash_completions _baz _be_name _beadm _bind_addresses _bindkey _bison _bittorrent _bogofilter _brace_parameter _brctl _bsd_pkg _bts _bug _builtin _bzip2 _bzr _cache_invalid _cal _calendar _call_function _canonical_paths _ccal _cd _cdbs-edit-patch _cdcd _cdr _cdrdao _cdrecord _chflags _chkconfig _chmod _chown _chrt _combination _comm _command _command_names _compdef _complete _complete_debug _complete_help _complete_help_generic _complete_tag _compress _condition _configure _coreadm _correct _correct_filename _correct_word _cowsay _cp _cpio _cplay _cryptsetup _cssh _csup _ctags_tags _cut _cvs _cvsup _cygcheck _cygpath _cygrunsrv _cygserver _cygstart _dak _darcs _date _dbus-cli _dchroot _dchroot-dsa _dcop _dd _deb_packages _debchange _debdiff _debfoster _debsign _default _defaults _delimiters _describe _description _devtodo _dhclient _dhcpinfo _dict _dict_words _diff _diff_options _diffstat _dir_list _directories _directory_stack _dirs _disable _dispatch _django _dladm _dlocate _dmidecode _domains _dpatch-edit-patch _dpkg _dpkg-buildpackage _dpkg-cross _dpkg-repack _dpkg_source _dput _dtrace _du _dumpadm _dumper _dupload _dvi _dynamic_directory_name _ecasound _echotc _echoti _elinks _elm _email_addresses _emulate _enable _enscript _env _equal _espeak _ethtool _expand _expand_alias _expand_word _fakeroot _fc _feh _fetch _fetchmail _ffmpeg _figlet _file_descriptors _file_systems _files _find _finger _fink _first _flasher _flex _floppy _flowadm _fmadm _fortune _freebsd-update _fsh _fstat _functions _fuse_arguments _fuse_values _fuser _fusermount _gcc _gcore _gdb _generic _genisoimage _getclip _getconf _getent _getfacl _getmail _git _git-buildpackage _global _global_tags _globflags _globqual_delims _globquals _gnome-gv _gnu_generic _gnupod _gnutls _go _gpaste _gpg _gphoto2 _gprof _gqview _gradle _graphicsmagick _grep _grep-excuses _groff _groups _growisofs _gs _guard _guilt _gv _gzip _hash _have_glob_qual _hdiutil _hg _history _history_complete_word _history_modifiers _hosts _hwinfo _iconv _id _ifconfig _iftop _ignored _imagemagick _in_vared _inetadm _init_d _initctl _invoke-rc.d _ionice _ip _ipadm _ipset _iptables _irssi _ispell _iwconfig _j _java _java_class _jobs _jobs_bg _jobs_builtin _jobs_fg _joe _join _kfmclient _kill _killall _kld _knock _kvno _last _ld_debug _ldd _less _lighttpd _limit _limits _linda _links _lintian _list _list_files _ln _loadkeys _locales _locate _logical_volumes _look _losetup _lp _ls _lscfg _lsdev _lslv _lsof _lspv _lsusb _lsvg _lynx _lzop _mac_applications _mac_files_for_application _madison _maglev_gemstone _mail _mailboxes _main_complete _make _make-kpkg _man _match _math _matlab _md5sum _mdadm _members _mencal _menu _mercurial _mere _mergechanges _message _metaflac _mh _mii-tool _mime_types _mkdir _mkshortcut _mkzsh _module _module-assistant _modutils _mondo _monotone _mosh _most_recent_file _mount _mozilla _mpc _mplayer _mt _mtools _mtr _multi_parts _mutt _my_accounts _mysql_utils _mysqldiff _nautilus _ncftp _nedit _net_interfaces _netcat _netscape _netstat _newsgroups _next_label _next_tags _nice _nm _nmap _nmcli _normal _nothing _notmuch _npm _nslookup _object_classes _okular _oldlist _open _options _options_set _options_unset _osc _other_accounts _pack _parameter _parameters _patch _path_commands _path_files _pax _pbm _pbuilder _pdf _pdftk _perforce _perl _perl_basepods _perl_modules _perldoc _pfctl _pfexec _pgrep _php _physical_volumes _pick_variant _pids _pine _ping _piuparts _pkg-config _pkg5 _pkg_instance _pkgadd _pkginfo _pkgrm _pkgtool _pon _portaudit _portlint _portmaster _ports _portsnap _postfix _powerd _prcs _precommand _prefix _print _printenv _printers _procstat _prompt _prstat _ps _ps1234 _pscp _pspdf _psutils _ptree _pump _putclip _pydoc _python _qemu _qiv _qtplay _quilt _raggle _rake _ranlib _rar _rcs _read _read_comp _readshortcut _rebootin _redirect _regex_arguments _regex_words _remote_files _renice _reprepro _requested _retrieve_cache _retrieve_mac_apps _ri _rlogin _rm _rpm _rpmbuild _rrdtool _rsync _rubber _ruby _rvm _sablotron _samba _savecore _sccs _sched _schedtool _schroot _screen _sed _sep_parts _service _services _set _set_command _setfacl _setopt _setup _sh _showmount _signals _sisu _slrn _smit _snoop _socket _sockstat _softwareupdate _sort _source _spamassassin _sqlite _sqsh _ssh _sshfs _stat _stgit _store_cache _strace _strip _stty _su _sub_commands _subscript _subversion _sudo _suffix_alias_files _surfraw _svcadm _svccfg _svcprop _svcs _svcs_fmri _svn-buildpackage _sysctl _systemd _tags _tar _tar_archive _tardy _tcpdump _tcpsys _tcptraceroute _telnet _terminals _tex _texi _texinfo _tidy _tiff _tilde _tilde_files _time_zone _tin _tla _tmux _todo.sh _toilet _toolchain-source _topgit _totd _tpb _tpconfig _tracepath _trap _tree _ttyctl _tune2fs _twidge _twisted _typeset _ulimit _uml _unace _uname _unexpand _unhash _uniq _unison _units _unsetopt _update-alternatives _update-rc.d _urls _urpmi _urxvt _uscan _user_admin _user_at_host _user_expand _users _users_on _uzbl _valgrind _value _values _vared _vars _vcsh _vim _vim-addons _vnc _volume_groups _vorbis _vorbiscomment _vserver _vux _w3m _wait _wajig _wakeup_capable_devices _wanna-build _wanted _webbrowser _wget _whereis _which _whois _wiggle _wpa_cli _x_arguments _x_borderwidth _x_color _x_colormapid _x_cursor _x_display _x_extension _x_font _x_geometry _x_keysym _x_locale _x_modifier _x_name _x_resource _x_selection_timeout _x_title _x_utils _x_visual _x_window _xargs _xauth _xclip _xdvi _xfig _xft_fonts _xloadimage _xmlsoft _xmms2 _xmodmap _xournal _xpdf _xrandr _xscreensaver _xset _xt_arguments _xt_session_id _xterm _xv _xwit _yast _yast2 _yodl _yp _yum _zargs _zattr _zcalc_line _zcat _zcompile _zdump _zed _zfs _zfs_dataset _zfs_keysource_props _zfs_pool _zftp _zip _zle _zlogin _zmodload _zmv _zoneadm _zones _zpool _zpty _zsh-mime-handler _zstyle _ztodo _zypper
+/home/tomo/.zkit/var/zsh_compdump:1448> autoload -Uz +X _call_program
+/home/tomo/.zkit/var/zsh_compdump:1450> typeset -gUa _comp_assocs
+/home/tomo/.zkit/var/zsh_compdump:1451> _comp_assocs=( '' ) 
+compinit:477> _i_done=yes 
+compinit:484> [[ -z yes ]]
+compinit:521> _i_line=complete-word
+compinit:524> zle -C complete-word .complete-word _main_complete
+compinit:521> _i_line=delete-char-or-list
+compinit:524> zle -C delete-char-or-list .delete-char-or-list _main_complete
+compinit:521> _i_line=expand-or-complete
+compinit:524> zle -C expand-or-complete .expand-or-complete _main_complete
+compinit:521> _i_line=expand-or-complete-prefix
+compinit:524> zle -C expand-or-complete-prefix .expand-or-complete-prefix _main_complete
+compinit:521> _i_line=list-choices
+compinit:524> zle -C list-choices .list-choices _main_complete
+compinit:521> _i_line=menu-complete
+compinit:524> zle -C menu-complete .menu-complete _main_complete
+compinit:521> _i_line=menu-expand-or-complete
+compinit:524> zle -C menu-expand-or-complete .menu-expand-or-complete _main_complete
+compinit:521> _i_line=reverse-menu-complete
+compinit:524> zle -C reverse-menu-complete .reverse-menu-complete _main_complete
+compinit:526> zle -la menu-select
+compinit:530> bindkey '^i'
+compinit:530> IFS=' 	' +compinit:530> read -A _i_line
+compinit:531> [[ expand-or-complete == expand-or-complete ]]
+compinit:532> zstyle -a :completion: completer _i_line
+compinit:537> unfunction compinit compaudit
+compinit:538> autoload -Uz compinit compaudit
+compinit:540> return 0
+/home/tomo/.zkit/rc.d/85-completion.zsh:14> setopt auto_list
+/home/tomo/.zkit/rc.d/85-completion.zsh:15> setopt auto_menu
+/home/tomo/.zkit/rc.d/85-completion.zsh:16> setopt auto_param_keys
+/home/tomo/.zkit/rc.d/85-completion.zsh:17> setopt auto_param_slash
+/home/tomo/.zkit/rc.d/85-completion.zsh:18> setopt auto_resume
+/home/tomo/.zkit/rc.d/85-completion.zsh:19> setopt No_beep
+/home/tomo/.zkit/rc.d/85-completion.zsh:20> setopt correct
+/home/tomo/.zkit/rc.d/85-completion.zsh:21> setopt list_types
+/home/tomo/.zkit/rc.d/85-completion.zsh:22> setopt magic_equal_subst
+/home/tomo/.zkit/rc.d/85-completion.zsh:23> setopt print_eightbit
+/home/tomo/.zkit/rc.d/85-completion.zsh:29> zstyle ':completion:*:default' menu 'select=3'
+/home/tomo/.zkit/rc.d/85-completion.zsh:31> zstyle ':completion:*:default' list-colors 'rs=0' 'di=01;34' 'ln=01;36' 'mh=00' 'pi=40;33' 'so=01;35' 'do=01;35' 'bd=40;33;01' 'cd=40;33;01' 'or=40;31;01' 'su=37;41' 'sg=30;43' 'ca=30;41' 'tw=30;42' 'ow=34;42' 'st=37;44' 'ex=01;32' '*.tar=01;31' '*.tgz=01;31' '*.arj=01;31' '*.taz=01;31' '*.lzh=01;31' '*.lzma=01;31' '*.tlz=01;31' '*.txz=01;31' '*.zip=01;31' '*.z=01;31' '*.Z=01;31' '*.dz=01;31' '*.gz=01;31' '*.lz=01;31' '*.xz=01;31' '*.bz2=01;31' '*.bz=01;31' '*.tbz=01;31' '*.tbz2=01;31' '*.tz=01;31' '*.deb=01;31' '*.rpm=01;31' '*.jar=01;31' '*.war=01;31' '*.ear=01;31' '*.sar=01;31' '*.rar=01;31' '*.ace=01;31' '*.zoo=01;31' '*.cpio=01;31' '*.7z=01;31' '*.rz=01;31' '*.jpg=01;35' '*.jpeg=01;35' '*.gif=01;35' '*.bmp=01;35' '*.pbm=01;35' '*.pgm=01;35' '*.ppm=01;35' '*.tga=01;35' '*.xbm=01;35' '*.xpm=01;35' '*.tif=01;35' '*.tiff=01;35' '*.png=01;35' '*.svg=01;35' '*.svgz=01;35' '*.mng=01;35' '*.pcx=01;35' '*.mov=01;35' '*.mpg=01;35' '*.mpeg=01;35' '*.m2v=01;35' '*.mkv=01;35' '*.webm=01;35' '*.ogm=01;35' '*.mp4=01;35' '*.m4v=01;35' '*.mp4v=01;35' '*.vob=01;35' '*.qt=01;35' '*.nuv=01;35' '*.wmv=01;35' '*.asf=01;35' '*.rm=01;35' '*.rmvb=01;35' '*.flc=01;35' '*.avi=01;35' '*.fli=01;35' '*.flv=01;35' '*.gl=01;35' '*.dl=01;35' '*.xcf=01;35' '*.xwd=01;35' '*.yuv=01;35' '*.cgm=01;35' '*.emf=01;35' '*.axv=01;35' '*.anx=01;35' '*.ogv=01;35' '*.ogx=01;35' '*.aac=00;36' '*.au=00;36' '*.flac=00;36' '*.mid=00;36' '*.midi=00;36' '*.mka=00;36' '*.mp3=00;36' '*.mpc=00;36' '*.ogg=00;36' '*.ra=00;36' '*.wav=00;36' '*.axa=00;36' '*.oga=00;36' '*.spx=00;36' '*.xspf=00;36'
+/home/tomo/.zkit/rc.d/85-completion.zsh:32> zstyle ':completion:*' use-cache on
+/home/tomo/.zkit/rc.d/85-completion.zsh:33> zstyle ':completion:*' cache-path /home/tomo/.zkit/var/cache
+/home/tomo/.zkit/rc.d/85-completion.zsh:37> zstyle ':completion:*:*:kill:*' menu yes select
+/home/tomo/.zkit/rc.d/85-completion.zsh:38> zstyle ':completion:*:kill:*' force-list always
+/home/tomo/.zkit/rc.d/85-completion.zsh:49> autoload -Uz bashcompinit
+/home/tomo/.zkit/rc.d/85-completion.zsh:50> bashcompinit
+bashcompinit:177> unfunction bashcompinit
+bashcompinit:178> autoload -Uz bashcompinit
+bashcompinit:179> return 0
+/home/tomo/.zkit/rc.d/85-completion.zsh:66> zstyle ':completion:*:my-accounts' users-hosts git@repo repo@repo tomo@ root@ hostmaster@
+__zkit_load_rc:2> __i=/home/tomo/.zkit/rc.d/90-private.sh
+__zkit_load_rc:3> [[ -r /home/tomo/.zkit/rc.d/90-private.sh ]]
+__zkit_load_rc:5> __zkit_msg load: /home/tomo/.zkit/rc.d/90-private.sh
+__zkit_msg:1> false
+__zkit_load_rc:6> [[ -n '%{[48;5;0;38;5;15m%B%} %T %{[m%}$(__zkit_rvm_prompt)%{[48;5;224m%}$(__vcs_info "(%s)")%{[m%}%{[38;5;33;48;5;222m%} %~ %{[m%}
%{[38;5;33m%}[%{[32m%}%n%{[38;5;21m%}@%{[38;5;196m%}%m%{[38;5;33m%}]%{[38;5;94m%}(%l) %{[38;5;168m%}%!%{[38;5;196m%}%(!.%{[38;5;196m%}#.%{[38;5;33m%}%%)%{[m%} %{[38;5;143m%}[4]%{[m%} ' ]]
+__zkit_load_rc:7> source /home/tomo/.zkit/rc.d/90-private.sh
+/home/tomo/.zkit/rc.d/90-private.sh:6> pathmunge /home/tomo/.zkit_private/bin /home/tomo/.zkit/bin
+pathmunge:6> emulate -L zsh
+pathmunge:8> after=false 
+pathmunge:9> [[ /home/tomo/.zkit_private/bin == -a ]]
+pathmunge:14> i=/home/tomo/.zkit/bin
+pathmunge:15> j = 1
+pathmunge:15> j <= 12
+pathmunge:16> [[ /home/tomo/.rvm/gems/ruby-1.9.3-p327/bin == /home/tomo/.zkit/bin ]]
+pathmunge:15> j++ 
+pathmunge:15> j <= 12
+pathmunge:16> [[ /home/tomo/.rvm/gems/ruby-1.9.3-p327@global/bin == /home/tomo/.zkit/bin ]]
+pathmunge:15> j++ 
+pathmunge:15> j <= 12
+pathmunge:16> [[ /home/tomo/.rvm/rubies/ruby-1.9.3-p327/bin == /home/tomo/.zkit/bin ]]
+pathmunge:15> j++ 
+pathmunge:15> j <= 12
+pathmunge:16> [[ /home/tomo/.rvm/bin == /home/tomo/.zkit/bin ]]
+pathmunge:15> j++ 
+pathmunge:15> j <= 12
+pathmunge:16> [[ /home/tomo/.zkit_private/bin == /home/tomo/.zkit/bin ]]
+pathmunge:15> j++ 
+pathmunge:15> j <= 12
+pathmunge:16> [[ /home/tomo/.zkit/bin == /home/tomo/.zkit/bin ]]
+pathmunge:16> path[j]=( ) 
+pathmunge:15> j++ 
+pathmunge:15> j <= 11
+pathmunge:16> [[ /usr/local/bin == /home/tomo/.zkit/bin ]]
+pathmunge:15> j++ 
+pathmunge:15> j <= 11
+pathmunge:16> [[ /usr/sbin == /home/tomo/.zkit/bin ]]
+pathmunge:15> j++ 
+pathmunge:15> j <= 11
+pathmunge:16> [[ /usr/bin == /home/tomo/.zkit/bin ]]
+pathmunge:15> j++ 
+pathmunge:15> j <= 11
+pathmunge:16> [[ /sbin == /home/tomo/.zkit/bin ]]
+pathmunge:15> j++ 
+pathmunge:15> j <= 11
+pathmunge:16> [[ /bin == /home/tomo/.zkit/bin ]]
+pathmunge:15> j++ 
+pathmunge:15> j <= 11
+pathmunge:18> false
+pathmunge:21> path=( /home/tomo/.zkit/bin /home/tomo/.rvm/gems/ruby-1.9.3-p327/bin /home/tomo/.rvm/gems/ruby-1.9.3-p327@global/bin /home/tomo/.rvm/rubies/ruby-1.9.3-p327/bin /home/tomo/.rvm/bin /home/tomo/.zkit_private/bin /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin ) 
+pathmunge:14> i=/home/tomo/.zkit_private/bin
+pathmunge:15> j = 1
+pathmunge:15> j <= 12
+pathmunge:16> [[ /home/tomo/.zkit/bin == /home/tomo/.zkit_private/bin ]]
+pathmunge:15> j++ 
+pathmunge:15> j <= 12
+pathmunge:16> [[ /home/tomo/.rvm/gems/ruby-1.9.3-p327/bin == /home/tomo/.zkit_private/bin ]]
+pathmunge:15> j++ 
+pathmunge:15> j <= 12
+pathmunge:16> [[ /home/tomo/.rvm/gems/ruby-1.9.3-p327@global/bin == /home/tomo/.zkit_private/bin ]]
+pathmunge:15> j++ 
+pathmunge:15> j <= 12
+pathmunge:16> [[ /home/tomo/.rvm/rubies/ruby-1.9.3-p327/bin == /home/tomo/.zkit_private/bin ]]
+pathmunge:15> j++ 
+pathmunge:15> j <= 12
+pathmunge:16> [[ /home/tomo/.rvm/bin == /home/tomo/.zkit_private/bin ]]
+pathmunge:15> j++ 
+pathmunge:15> j <= 12
+pathmunge:16> [[ /home/tomo/.zkit_private/bin == /home/tomo/.zkit_private/bin ]]
+pathmunge:16> path[j]=( ) 
+pathmunge:15> j++ 
+pathmunge:15> j <= 11
+pathmunge:16> [[ /usr/local/bin == /home/tomo/.zkit_private/bin ]]
+pathmunge:15> j++ 
+pathmunge:15> j <= 11
+pathmunge:16> [[ /usr/sbin == /home/tomo/.zkit_private/bin ]]
+pathmunge:15> j++ 
+pathmunge:15> j <= 11
+pathmunge:16> [[ /usr/bin == /home/tomo/.zkit_private/bin ]]
+pathmunge:15> j++ 
+pathmunge:15> j <= 11
+pathmunge:16> [[ /sbin == /home/tomo/.zkit_private/bin ]]
+pathmunge:15> j++ 
+pathmunge:15> j <= 11
+pathmunge:16> [[ /bin == /home/tomo/.zkit_private/bin ]]
+pathmunge:15> j++ 
+pathmunge:15> j <= 11
+pathmunge:18> false
+pathmunge:21> path=( /home/tomo/.zkit_private/bin /home/tomo/.zkit/bin /home/tomo/.rvm/gems/ruby-1.9.3-p327/bin /home/tomo/.rvm/gems/ruby-1.9.3-p327@global/bin /home/tomo/.rvm/rubies/ruby-1.9.3-p327/bin /home/tomo/.rvm/bin /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin ) 
+/home/tomo/.zkit/rc.d/90-private.sh:8> [[ -n 5.0.0 ]]
+/home/tomo/.zkit/rc.d/90-private.sh:9> suffix=.zsh 
+/home/tomo/.zkit/rc.d/90-private.sh:14> __rc=/home/tomo/.zkit_private/rc.d/host-galileo.hn.appletz.net.zsh 
+/home/tomo/.zkit/rc.d/90-private.sh:15> [[ ! -r /home/tomo/.zkit_private/rc.d/host-galileo.hn.appletz.net.zsh ]]
+/home/tomo/.zkit/rc.d/90-private.sh:16> __rc=/home/tomo/.zkit_private/rc.d/host-galileo.zsh 
+/home/tomo/.zkit/rc.d/90-private.sh:17> [[ ! -r /home/tomo/.zkit_private/rc.d/host-galileo.zsh ]]
+/home/tomo/.zkit/rc.d/90-private.sh:18> __rc='' 
+/home/tomo/.zkit/rc.d/90-private.sh:21> [[ -n '' ]]
+/home/tomo/.zkit/rc.d/90-private.sh:22> unset __rc
+/home/tomo/.zkit/zsh/startup.sh:42> __zkit_load_rc
+__zkit_load_rc:1> local __i
+__zkit_load_rc:2> __zkit_sort_rc
+__zkit_sort_rc:1> emulate -L zsh
+__zkit_sort_rc:2> setopt NULL_GLOB
+__zkit_sort_rc:5> sort
+__zkit_sort_rc:5> cut '-d ' -f2
+__zkit_icon_title:1> __zkit_icon_title_prefix
+__zkit_icon_title:1> printf '\033]0;%s%s@%s(%s):%s\007' '' tomo galileo '' '~/.zkit'
]0;tomo@galileo():~/.zkit+zsh:1> __zkit_rvm_prompt
+__zkit_rvm_prompt:1> [[ -n /home/tomo/.rvm/bin && -x /home/tomo/.rvm/bin/rvm-prompt ]]
+__zkit_rvm_prompt:2> /home/tomo/.rvm/bin/rvm-prompt i v g
+__zkit_rvm_prompt:2> local 'prompt=ruby-1.9.3'
+__zkit_rvm_prompt:3> [[ -n ruby-1.9.3 ]]
+__zkit_rvm_prompt:4> local 'csi=['
+__zkit_rvm_prompt:5> echo '%{[48;5;88;38;5;15m%}ruby-1.9.3%{[33m%}'
+zsh:1> __vcs_info '(%s)'
+__vcs_info:1> LANG=en_US.UTF-8 +__vcs_info:1> vcs_info
+vcs_info:11> setopt localoptions noksharrays extendedglob NO_shwordsplit
+vcs_info:12> local file func sys
+vcs_info:13> local -a static_functions
+vcs_info:15> static_functions=( VCS_INFO_adjust VCS_INFO_bydir_detect VCS_INFO_check_com VCS_INFO_formats VCS_INFO_get_cmd VCS_INFO_hook VCS_INFO_maxexports VCS_INFO_nvcsformats VCS_INFO_quilt VCS_INFO_realpath VCS_INFO_reposub VCS_INFO_set vcs_info_hookadd vcs_info_hookdel vcs_info_lastmsg vcs_info_printsys vcs_info_setsys ) 
+vcs_info:36> func=VCS_INFO_adjust
+vcs_info:37> autoload -Uz VCS_INFO_adjust
+vcs_info:36> func=VCS_INFO_bydir_detect
+vcs_info:37> autoload -Uz VCS_INFO_bydir_detect
+vcs_info:36> func=VCS_INFO_check_com
+vcs_info:37> autoload -Uz VCS_INFO_check_com
+vcs_info:36> func=VCS_INFO_formats
+vcs_info:37> autoload -Uz VCS_INFO_formats
+vcs_info:36> func=VCS_INFO_get_cmd
+vcs_info:37> autoload -Uz VCS_INFO_get_cmd
+vcs_info:36> func=VCS_INFO_hook
+vcs_info:37> autoload -Uz VCS_INFO_hook
+vcs_info:36> func=VCS_INFO_maxexports
+vcs_info:37> autoload -Uz VCS_INFO_maxexports
+vcs_info:36> func=VCS_INFO_nvcsformats
+vcs_info:37> autoload -Uz VCS_INFO_nvcsformats
+vcs_info:36> func=VCS_INFO_quilt
+vcs_info:37> autoload -Uz VCS_INFO_quilt
+vcs_info:36> func=VCS_INFO_realpath
+vcs_info:37> autoload -Uz VCS_INFO_realpath
+vcs_info:36> func=VCS_INFO_reposub
+vcs_info:37> autoload -Uz VCS_INFO_reposub
+vcs_info:36> func=VCS_INFO_set
+vcs_info:37> autoload -Uz VCS_INFO_set
+vcs_info:36> func=vcs_info_hookadd
+vcs_info:37> autoload -Uz vcs_info_hookadd
+vcs_info:36> func=vcs_info_hookdel
+vcs_info:37> autoload -Uz vcs_info_hookdel
+vcs_info:36> func=vcs_info_lastmsg
+vcs_info:37> autoload -Uz vcs_info_lastmsg
+vcs_info:36> func=vcs_info_printsys
+vcs_info:37> autoload -Uz vcs_info_printsys
+vcs_info:36> func=vcs_info_setsys
+vcs_info:37> autoload -Uz vcs_info_setsys
+vcs_info:40> [[ -n '' ]]
+vcs_info:41> VCS_INFO_set --nvcs -preinit-
+VCS_INFO_set:5> setopt localoptions noksharrays NO_shwordsplit
+VCS_INFO_set:6> local -i i j
+VCS_INFO_set:8> [[ --nvcs == --nvcs ]]
+VCS_INFO_set:9> [[ -preinit- == -preinit- ]]
+VCS_INFO_set:9> ((  maxexports == 0  ))
+VCS_INFO_set:9> ((  maxexports = 1  ))
+VCS_INFO_set:10> i=0
+VCS_INFO_set:11> typeset -gx 'vcs_info_msg_0_='
+VCS_INFO_set:13> VCS_INFO_nvcsformats -preinit-
+VCS_INFO_nvcsformats:5> setopt localoptions noksharrays NO_shwordsplit
+VCS_INFO_nvcsformats:6> local c v rr
+VCS_INFO_nvcsformats:8> [[ -preinit- == -preinit- ]]
+VCS_INFO_nvcsformats:9> c=default 
+VCS_INFO_nvcsformats:10> v=-preinit- 
+VCS_INFO_nvcsformats:11> rr=-all- 
+VCS_INFO_nvcsformats:13> zstyle -a :vcs_info:-preinit-:default:-all- nvcsformats msgs
+VCS_INFO_nvcsformats:14> ((  0 > maxexports  ))
+VCS_INFO_nvcsformats:15> return 0
+VCS_INFO_set:14> [[ -preinit- != -preinit- ]]
+VCS_INFO_set:17> ((  0 - 1 < 0  ))
+VCS_INFO_set:17> return 0
+vcs_info:42> vcs_info_setsys
+vcs_info_setsys:5> emulate -L zsh
+vcs_info_setsys:6> setopt extendedglob typeset_silent
+vcs_info_setsys:8> local sys
+vcs_info_setsys:9> typeset -ga VCS_INFO_backends
+vcs_info_setsys:10> local -a match mbegin mend
+vcs_info_setsys:12> VCS_INFO_backends=( ) 
+vcs_info_setsys:14> file=/usr/share/zsh/5.0.0/functions/VCS_INFO_get_data_bzr
+vcs_info_setsys:15> file=VCS_INFO_get_data_bzr 
+vcs_info_setsys:16> :
+vcs_info_setsys:17> sys=bzr 
+vcs_info_setsys:19> [[ -n '' ]]
+vcs_info_setsys:20> VCS_INFO_backends+=( bzr ) 
+vcs_info_setsys:21> autoload -Uz VCS_INFO_detect_bzr
+vcs_info_setsys:22> autoload -Uz VCS_INFO_get_data_bzr
+vcs_info_setsys:14> file=/usr/share/zsh/5.0.0/functions/VCS_INFO_get_data_cdv
+vcs_info_setsys:15> file=VCS_INFO_get_data_cdv 
+vcs_info_setsys:16> :
+vcs_info_setsys:17> sys=cdv 
+vcs_info_setsys:19> [[ -n '' ]]
+vcs_info_setsys:20> VCS_INFO_backends+=( cdv ) 
+vcs_info_setsys:21> autoload -Uz VCS_INFO_detect_cdv
+vcs_info_setsys:22> autoload -Uz VCS_INFO_get_data_cdv
+vcs_info_setsys:14> file=/usr/share/zsh/5.0.0/functions/VCS_INFO_get_data_cvs
+vcs_info_setsys:15> file=VCS_INFO_get_data_cvs 
+vcs_info_setsys:16> :
+vcs_info_setsys:17> sys=cvs 
+vcs_info_setsys:19> [[ -n '' ]]
+vcs_info_setsys:20> VCS_INFO_backends+=( cvs ) 
+vcs_info_setsys:21> autoload -Uz VCS_INFO_detect_cvs
+vcs_info_setsys:22> autoload -Uz VCS_INFO_get_data_cvs
+vcs_info_setsys:14> file=/usr/share/zsh/5.0.0/functions/VCS_INFO_get_data_darcs
+vcs_info_setsys:15> file=VCS_INFO_get_data_darcs 
+vcs_info_setsys:16> :
+vcs_info_setsys:17> sys=darcs 
+vcs_info_setsys:19> [[ -n '' ]]
+vcs_info_setsys:20> VCS_INFO_backends+=( darcs ) 
+vcs_info_setsys:21> autoload -Uz VCS_INFO_detect_darcs
+vcs_info_setsys:22> autoload -Uz VCS_INFO_get_data_darcs
+vcs_info_setsys:14> file=/usr/share/zsh/5.0.0/functions/VCS_INFO_get_data_fossil
+vcs_info_setsys:15> file=VCS_INFO_get_data_fossil 
+vcs_info_setsys:16> :
+vcs_info_setsys:17> sys=fossil 
+vcs_info_setsys:19> [[ -n '' ]]
+vcs_info_setsys:20> VCS_INFO_backends+=( fossil ) 
+vcs_info_setsys:21> autoload -Uz VCS_INFO_detect_fossil
+vcs_info_setsys:22> autoload -Uz VCS_INFO_get_data_fossil
+vcs_info_setsys:14> file=/usr/share/zsh/5.0.0/functions/VCS_INFO_get_data_git
+vcs_info_setsys:15> file=VCS_INFO_get_data_git 
+vcs_info_setsys:16> :
+vcs_info_setsys:17> sys=git 
+vcs_info_setsys:19> [[ -n '' ]]
+vcs_info_setsys:20> VCS_INFO_backends+=( git ) 
+vcs_info_setsys:21> autoload -Uz VCS_INFO_detect_git
+vcs_info_setsys:22> autoload -Uz VCS_INFO_get_data_git
+vcs_info_setsys:14> file=/usr/share/zsh/5.0.0/functions/VCS_INFO_get_data_hg
+vcs_info_setsys:15> file=VCS_INFO_get_data_hg 
+vcs_info_setsys:16> :
+vcs_info_setsys:17> sys=hg 
+vcs_info_setsys:19> [[ -n '' ]]
+vcs_info_setsys:20> VCS_INFO_backends+=( hg ) 
+vcs_info_setsys:21> autoload -Uz VCS_INFO_detect_hg
+vcs_info_setsys:22> autoload -Uz VCS_INFO_get_data_hg
+vcs_info_setsys:14> file=/usr/share/zsh/5.0.0/functions/VCS_INFO_get_data_mtn
+vcs_info_setsys:15> file=VCS_INFO_get_data_mtn 
+vcs_info_setsys:16> :
+vcs_info_setsys:17> sys=mtn 
+vcs_info_setsys:19> [[ -n '' ]]
+vcs_info_setsys:20> VCS_INFO_backends+=( mtn ) 
+vcs_info_setsys:21> autoload -Uz VCS_INFO_detect_mtn
+vcs_info_setsys:22> autoload -Uz VCS_INFO_get_data_mtn
+vcs_info_setsys:14> file=/usr/share/zsh/5.0.0/functions/VCS_INFO_get_data_p4
+vcs_info_setsys:15> file=VCS_INFO_get_data_p4 
+vcs_info_setsys:16> :
+vcs_info_setsys:17> sys=p4 
+vcs_info_setsys:19> [[ -n '' ]]
+vcs_info_setsys:20> VCS_INFO_backends+=( p4 ) 
+vcs_info_setsys:21> autoload -Uz VCS_INFO_detect_p4
+vcs_info_setsys:22> autoload -Uz VCS_INFO_get_data_p4
+vcs_info_setsys:14> file=/usr/share/zsh/5.0.0/functions/VCS_INFO_get_data_svk
+vcs_info_setsys:15> file=VCS_INFO_get_data_svk 
+vcs_info_setsys:16> :
+vcs_info_setsys:17> sys=svk 
+vcs_info_setsys:19> [[ -n '' ]]
+vcs_info_setsys:20> VCS_INFO_backends+=( svk ) 
+vcs_info_setsys:21> autoload -Uz VCS_INFO_detect_svk
+vcs_info_setsys:22> autoload -Uz VCS_INFO_get_data_svk
+vcs_info_setsys:14> file=/usr/share/zsh/5.0.0/functions/VCS_INFO_get_data_svn
+vcs_info_setsys:15> file=VCS_INFO_get_data_svn 
+vcs_info_setsys:16> :
+vcs_info_setsys:17> sys=svn 
+vcs_info_setsys:19> [[ -n '' ]]
+vcs_info_setsys:20> VCS_INFO_backends+=( svn ) 
+vcs_info_setsys:21> autoload -Uz VCS_INFO_detect_svn
+vcs_info_setsys:22> autoload -Uz VCS_INFO_get_data_svn
+vcs_info_setsys:14> file=/usr/share/zsh/5.0.0/functions/VCS_INFO_get_data_tla
+vcs_info_setsys:15> file=VCS_INFO_get_data_tla 
+vcs_info_setsys:16> :
+vcs_info_setsys:17> sys=tla 
+vcs_info_setsys:19> [[ -n '' ]]
+vcs_info_setsys:20> VCS_INFO_backends+=( tla ) 
+vcs_info_setsys:21> autoload -Uz VCS_INFO_detect_tla
+vcs_info_setsys:22> autoload -Uz VCS_INFO_get_data_tla
+vcs_info_setsys:25> return 0
+vcs_info:141> vcs_info
+vcs_info:1> emulate -L zsh
+vcs_info:2> setopt extendedglob NO_warn_create_global
+vcs_info:4> [[ -r . ]]
+vcs_info:6> local pat
+vcs_info:7> local -i found retval
+vcs_info:8> local -a enabled disabled dps
+vcs_info:9> local -x usercontext vcs rrn quiltmode LC_MESSAGES
+vcs_info:10> local -ix maxexports
+vcs_info:11> local -ax msgs
+vcs_info:12> local -Ax vcs_comm hook_com backend_misc user_data
+vcs_info:14> LC_MESSAGES=C 
+vcs_info:15> [[ -n '' ]]
+vcs_info:20> vcs=-init- 
+vcs_info:20> rrn=-all- 
+vcs_info:20> quiltmode=addon 
+vcs_info:21> usercontext=default 
+vcs_info:23> VCS_INFO_hook start-up
+VCS_INFO_hook:5> local hook static func
+VCS_INFO_hook:6> local -x context hook_name
+VCS_INFO_hook:7> local -xi ret
+VCS_INFO_hook:8> local -a hooks tmp
+VCS_INFO_hook:9> local -i debug
+VCS_INFO_hook:11> ret=0 
+VCS_INFO_hook:12> hook_name=start-up 
+VCS_INFO_hook:13> shift
+VCS_INFO_hook:14> context=:vcs_info:-init-+start-up:default:-all- 
+VCS_INFO_hook:15> static=:vcs_info-static_hooks:start-up 
+VCS_INFO_hook:17> zstyle -t :vcs_info:-init-+start-up:default:-all- debug
+VCS_INFO_hook:17> debug=0 
+VCS_INFO_hook:18> ((  debug  ))
+VCS_INFO_hook:24> zstyle -a :vcs_info-static_hooks:start-up hooks hooks
+VCS_INFO_hook:25> ((  debug  ))
+VCS_INFO_hook:28> zstyle -a :vcs_info:-init-+start-up:default:-all- hooks tmp
+VCS_INFO_hook:29> ((  debug  ))
+VCS_INFO_hook:32> hooks+=( ) 
+VCS_INFO_hook:33> ((  0 == 0  ))
+VCS_INFO_hook:33> return 0
+vcs_info:24> retval=0 
+vcs_info:25> ((  retval == 1  ))
+vcs_info:27> ((  retval == 2  ))
+vcs_info:35> zstyle -a :vcs_info:-init-:default:-all- enable enabled
+vcs_info:36> ((  1 == 0  ))
+vcs_info:38> [[ -n '' ]]
+vcs_info:43> [[ -n '' ]]
+vcs_info:48> zstyle -a :vcs_info:-init-:default:-all- disable-patterns dps
+vcs_info:57> VCS_INFO_maxexports
+VCS_INFO_maxexports:5> setopt localoptions NO_shwordsplit
+VCS_INFO_maxexports:7> zstyle -s :vcs_info:-init-:default:-all- max-exports maxexports
+VCS_INFO_maxexports:7> maxexports=2 
+VCS_INFO_maxexports:8> [[ 2 != <-> ]]
+VCS_INFO_maxexports:8> ((  maxexports < 1  ))
+VCS_INFO_maxexports:13> return 0
+vcs_info:59> ((  found = 0  ))
+vcs_info:60> vcs=git
+vcs_info:61> [[ -n '' ]]
+vcs_info:62> ((  1 == 0  ))
+vcs_info:67> vcs_comm=( ) 
+vcs_info:68> VCS_INFO_get_cmd
+VCS_INFO_get_cmd:4> local cmd
+VCS_INFO_get_cmd:5> zstyle -s :vcs_info:git:default:-all- command cmd
+VCS_INFO_get_cmd:6> vcs_comm[cmd]=git 
+vcs_info:69> VCS_INFO_detect_git
+VCS_INFO_detect_git:5> setopt localoptions NO_shwordsplit
+VCS_INFO_detect_git:7> [[ '' == --flavours ]]
+VCS_INFO_detect_git:9> VCS_INFO_check_com git
+VCS_INFO_check_com:5> setopt localoptions NO_shwordsplit
+VCS_INFO_check_com:7> case git (/*)
+VCS_INFO_check_com:7> case git (*)
+VCS_INFO_check_com:12> ((  1  ))
+VCS_INFO_check_com:12> return 0
+VCS_INFO_detect_git:9> git rev-parse --is-inside-work-tree
+VCS_INFO_detect_git:10> vcs_comm[gitdir]=+VCS_INFO_detect_git:10> git rev-parse --git-dir
+VCS_INFO_detect_git:10> vcs_comm[gitdir]=.git 
+VCS_INFO_detect_git:11> [[ -d .git/svn ]]
+VCS_INFO_detect_git:12> [[ -d .git/refs/remotes/p4 ]]
+VCS_INFO_detect_git:13> return 0
+vcs_info:69> ((  found = 1  ))
+vcs_info:69> break
+vcs_info:72> ((  found == 0  ))
+vcs_info:78> VCS_INFO_hook pre-get-data
+VCS_INFO_hook:5> local hook static func
+VCS_INFO_hook:6> local -x context hook_name
+VCS_INFO_hook:7> local -xi ret
+VCS_INFO_hook:8> local -a hooks tmp
+VCS_INFO_hook:9> local -i debug
+VCS_INFO_hook:11> ret=0 
+VCS_INFO_hook:12> hook_name=pre-get-data 
+VCS_INFO_hook:13> shift
+VCS_INFO_hook:14> context=:vcs_info:git+pre-get-data:default:-all- 
+VCS_INFO_hook:15> static=:vcs_info-static_hooks:pre-get-data 
+VCS_INFO_hook:17> zstyle -t :vcs_info:git+pre-get-data:default:-all- debug
+VCS_INFO_hook:17> debug=0 
+VCS_INFO_hook:18> ((  debug  ))
+VCS_INFO_hook:24> zstyle -a :vcs_info-static_hooks:pre-get-data hooks hooks
+VCS_INFO_hook:25> ((  debug  ))
+VCS_INFO_hook:28> zstyle -a :vcs_info:git+pre-get-data:default:-all- hooks tmp
+VCS_INFO_hook:29> ((  debug  ))
+VCS_INFO_hook:32> hooks+=( ) 
+VCS_INFO_hook:33> ((  0 == 0  ))
+VCS_INFO_hook:33> return 0
+vcs_info:79> retval=0 
+vcs_info:80> ((  retval == 1  ))
+vcs_info:82> ((  retval == 2  ))
+vcs_info:87> VCS_INFO_get_data_git
+VCS_INFO_get_data_git:5> setopt localoptions extendedglob NO_shwordsplit
+VCS_INFO_get_data_git:6> local gitdir gitbase gitbranch gitaction gitunstaged gitstaged gitsha1
+VCS_INFO_get_data_git:7> local stgitpatch stgitunapplied
+VCS_INFO_get_data_git:8> local -xA hook_com
+VCS_INFO_get_data_git:102> gitdir=.git 
+VCS_INFO_get_data_git:103> gitbranch=+VCS_INFO_get_data_git:103> VCS_INFO_git_getbranch .git
+VCS_INFO_git_getbranch:1> local gitbranch 'gitdir=.git' tmp actiondir
+VCS_INFO_git_getbranch:2> local 'gitsymref=git symbolic-ref HEAD'
+VCS_INFO_git_getbranch:4> actiondir='' 
+VCS_INFO_git_getbranch:5> tmp=.git/rebase-apply
+VCS_INFO_git_getbranch:8> [[ -d .git/rebase-apply ]]
+VCS_INFO_git_getbranch:5> tmp=.git/rebase
+VCS_INFO_git_getbranch:8> [[ -d .git/rebase ]]
+VCS_INFO_git_getbranch:5> tmp=.git/../.dotest
+VCS_INFO_git_getbranch:8> [[ -d .git/../.dotest ]]
+VCS_INFO_git_getbranch:13> [[ -n '' ]]
+VCS_INFO_git_getbranch:18> [[ -f .git/MERGE_HEAD ]]
+VCS_INFO_git_getbranch:22> [[ -d .git/rebase-merge ]]
+VCS_INFO_git_getbranch:25> [[ -d .git/.dotest-merge ]]
+VCS_INFO_git_getbranch:29> gitbranch=+VCS_INFO_git_getbranch:29> git symbolic-ref HEAD
+VCS_INFO_git_getbranch:29> gitbranch=refs/heads/master 
+VCS_INFO_git_getbranch:31> [[ 0 -ne 0 ]]
+VCS_INFO_git_getbranch:40> printf %s refs/heads/master
+VCS_INFO_git_getbranch:41> return 0
+VCS_INFO_get_data_git:103> gitbranch=refs/heads/master 
+VCS_INFO_get_data_git:104> zstyle -t :vcs_info:git:default:-all- get-revision
+VCS_INFO_get_data_git:107> gitsha1='' 
+VCS_INFO_get_data_git:109> gitbranch=master 
+VCS_INFO_get_data_git:111> [[ -z .git ]]
+VCS_INFO_get_data_git:111> [[ -z master ]]
+VCS_INFO_get_data_git:115> zstyle -t :vcs_info:git:default:-all- check-for-changes
+VCS_INFO_get_data_git:116> [[+VCS_INFO_get_data_git:116> git rev-parse --is-inside-git-dir
+VCS_INFO_get_data_git:116> [[ false != true ]]
+VCS_INFO_get_data_git:117> git rev-parse --quiet --verify HEAD
+VCS_INFO_get_data_git:119> git diff --no-ext-diff --ignore-submodules --quiet --exit-code
+VCS_INFO_get_data_git:120> gitunstaged=1 
+VCS_INFO_get_data_git:121> git diff-index --cached --quiet --ignore-submodules HEAD
+VCS_INFO_get_data_git:122> ((  0 && 0 != 128  ))
+VCS_INFO_get_data_git:125> VCS_INFO_adjust
+VCS_INFO_adjust:5> setopt localoptions NO_shwordsplit
+VCS_INFO_adjust:7> [[ -n '' ]]
+VCS_INFO_adjust:8> return 0
+VCS_INFO_get_data_git:126> gitaction=+VCS_INFO_get_data_git:126> VCS_INFO_git_getaction .git
+VCS_INFO_git_getaction:1> local 'gitaction=' 'gitdir=.git'
+VCS_INFO_git_getaction:2> local tmp
+VCS_INFO_git_getaction:4> tmp=.git/rebase-apply
+VCS_INFO_git_getaction:7> [[ -d .git/rebase-apply ]]
+VCS_INFO_git_getaction:4> tmp=.git/rebase
+VCS_INFO_git_getaction:7> [[ -d .git/rebase ]]
+VCS_INFO_git_getaction:4> tmp=.git/../.dotest
+VCS_INFO_git_getaction:7> [[ -d .git/../.dotest ]]
+VCS_INFO_git_getaction:20> tmp=.git/rebase-merge/interactive
+VCS_INFO_git_getaction:22> [[ -f .git/rebase-merge/interactive ]]
+VCS_INFO_git_getaction:20> tmp=.git/.dotest-merge/interactive
+VCS_INFO_git_getaction:22> [[ -f .git/.dotest-merge/interactive ]]
+VCS_INFO_git_getaction:28> tmp=.git/rebase-merge
+VCS_INFO_git_getaction:30> [[ -d .git/rebase-merge ]]
+VCS_INFO_git_getaction:28> tmp=.git/.dotest-merge
+VCS_INFO_git_getaction:30> [[ -d .git/.dotest-merge ]]
+VCS_INFO_git_getaction:36> [[ -f .git/MERGE_HEAD ]]
+VCS_INFO_git_getaction:41> [[ -f .git/BISECT_LOG ]]
+VCS_INFO_git_getaction:45> return 1
+VCS_INFO_get_data_git:126> gitaction='' 
+VCS_INFO_get_data_git:127> gitbase=+VCS_INFO_get_data_git:127> git rev-parse --show-prefix
+VCS_INFO_get_data_git:127> gitbase=/home/tomo/.zkit 
+VCS_INFO_get_data_git:128> rrn=.zkit 
+VCS_INFO_get_data_git:130> local 'patchdir=.git/patches/master'
+VCS_INFO_get_data_git:131> [[ -d .git/patches/master ]]
+VCS_INFO_get_data_git:170> stgitmsg='' 
+VCS_INFO_get_data_git:173> backend_misc[patches]='' 
+VCS_INFO_get_data_git:174> VCS_INFO_formats '' master /home/tomo/.zkit '' 1 '' ''
+VCS_INFO_formats:5> setopt localoptions noksharrays NO_shwordsplit
+VCS_INFO_formats:6> local msg tmp
+VCS_INFO_formats:7> local -i i
+VCS_INFO_formats:8> local -xA hook_com
+VCS_INFO_formats:12> hook_com=( action '' action_orig '' branch master branch_orig master base /home/tomo/.zkit base_orig /home/tomo/.zkit staged '' staged_orig '' unstaged 1 unstaged_orig 1 revision '' revision_orig '' misc '' misc_orig '' vcs git vcs_orig git ) 
+VCS_INFO_formats:30> hook_com[base-name]=.zkit 
+VCS_INFO_formats:31> hook_com[base-name_orig]='' 
+VCS_INFO_formats:32> hook_com[subdir]=+VCS_INFO_formats:32> VCS_INFO_reposub /home/tomo/.zkit
+VCS_INFO_reposub:5> setopt localoptions extendedglob NO_shwordsplit
+VCS_INFO_reposub:6> local 'base=/home/tomo/.zkit'
+VCS_INFO_reposub:8> [[ /home/tomo/.zkit == /home/tomo/.zkit/* ]]
+VCS_INFO_reposub:9> printf .
+VCS_INFO_reposub:10> return 1
+VCS_INFO_formats:32> hook_com[subdir]=. 
+VCS_INFO_formats:33> hook_com[subdir_orig]=. 
+VCS_INFO_formats:35> VCS_INFO_hook post-backend
+VCS_INFO_hook:5> local hook static func
+VCS_INFO_hook:6> local -x context hook_name
+VCS_INFO_hook:7> local -xi ret
+VCS_INFO_hook:8> local -a hooks tmp
+VCS_INFO_hook:9> local -i debug
+VCS_INFO_hook:11> ret=0 
+VCS_INFO_hook:12> hook_name=post-backend 
+VCS_INFO_hook:13> shift
+VCS_INFO_hook:14> context=:vcs_info:git+post-backend:default:.zkit 
+VCS_INFO_hook:15> static=:vcs_info-static_hooks:post-backend 
+VCS_INFO_hook:17> zstyle -t :vcs_info:git+post-backend:default:.zkit debug
+VCS_INFO_hook:17> debug=0 
+VCS_INFO_hook:18> ((  debug  ))
+VCS_INFO_hook:24> zstyle -a :vcs_info-static_hooks:post-backend hooks hooks
+VCS_INFO_hook:25> ((  debug  ))
+VCS_INFO_hook:28> zstyle -a :vcs_info:git+post-backend:default:.zkit hooks tmp
+VCS_INFO_hook:29> ((  debug  ))
+VCS_INFO_hook:32> hooks+=( ) 
+VCS_INFO_hook:33> ((  0 == 0  ))
+VCS_INFO_hook:33> return 0
+VCS_INFO_formats:52> [[ -n '' ]]
+VCS_INFO_formats:56> zstyle -a :vcs_info:git:default:.zkit formats msgs
+VCS_INFO_formats:57> ((  1 < 1  ))
+VCS_INFO_formats:60> [[ -n '' ]]
+VCS_INFO_formats:65> [[ -n 1 ]]
+VCS_INFO_formats:66> zstyle -s :vcs_info:git:default:.zkit unstagedstr tmp
+VCS_INFO_formats:67> [[ -z '*' ]]
+VCS_INFO_formats:67> hook_com[unstaged]='*' 
+VCS_INFO_formats:70> [[ addon != standalone ]]
+VCS_INFO_formats:70> VCS_INFO_hook pre-addon-quilt
+VCS_INFO_hook:5> local hook static func
+VCS_INFO_hook:6> local -x context hook_name
+VCS_INFO_hook:7> local -xi ret
+VCS_INFO_hook:8> local -a hooks tmp
+VCS_INFO_hook:9> local -i debug
+VCS_INFO_hook:11> ret=0 
+VCS_INFO_hook:12> hook_name=pre-addon-quilt 
+VCS_INFO_hook:13> shift
+VCS_INFO_hook:14> context=:vcs_info:git+pre-addon-quilt:default:.zkit 
+VCS_INFO_hook:15> static=:vcs_info-static_hooks:pre-addon-quilt 
+VCS_INFO_hook:17> zstyle -t :vcs_info:git+pre-addon-quilt:default:.zkit debug
+VCS_INFO_hook:17> debug=0 
+VCS_INFO_hook:18> ((  debug  ))
+VCS_INFO_hook:24> zstyle -a :vcs_info-static_hooks:pre-addon-quilt hooks hooks
+VCS_INFO_hook:25> ((  debug  ))
+VCS_INFO_hook:28> zstyle -a :vcs_info:git+pre-addon-quilt:default:.zkit hooks tmp
+VCS_INFO_hook:29> ((  debug  ))
+VCS_INFO_hook:32> hooks+=( ) 
+VCS_INFO_hook:33> ((  0 == 0  ))
+VCS_INFO_hook:33> return 0
+VCS_INFO_formats:71> local -x REPLY
+VCS_INFO_formats:72> VCS_INFO_quilt addon
+VCS_INFO_quilt:190> VCS_INFO_quilt addon
+VCS_INFO_quilt:1> emulate -L zsh
+VCS_INFO_quilt:2> setopt extendedglob
+VCS_INFO_quilt:3> local 'mode=addon'
+VCS_INFO_quilt:4> local patches pc tmp qstring root
+VCS_INFO_quilt:5> local -i ret
+VCS_INFO_quilt:6> local -x context
+VCS_INFO_quilt:7> local -a applied unapplied applied_string unapplied_string quiltcommand
+VCS_INFO_quilt:8> local -Ax hook_com
+VCS_INFO_quilt:10> context=:vcs_info:git.quilt-addon:default:.zkit 
+VCS_INFO_quilt:11> zstyle -t :vcs_info:git.quilt-addon:default:.zkit use-quilt
+VCS_INFO_quilt:11> return 1
+VCS_INFO_formats:73> hook_com[quilt]='' 
+VCS_INFO_formats:74> unset REPLY
+VCS_INFO_formats:79> ((  1 > maxexports  ))
+VCS_INFO_formats:80> i=1
+VCS_INFO_formats:81> VCS_INFO_hook set-message 0 %b%u%c
+VCS_INFO_hook:5> local hook static func
+VCS_INFO_hook:6> local -x context hook_name
+VCS_INFO_hook:7> local -xi ret
+VCS_INFO_hook:8> local -a hooks tmp
+VCS_INFO_hook:9> local -i debug
+VCS_INFO_hook:11> ret=0 
+VCS_INFO_hook:12> hook_name=set-message 
+VCS_INFO_hook:13> shift
+VCS_INFO_hook:14> context=:vcs_info:git+set-message:default:.zkit 
+VCS_INFO_hook:15> static=:vcs_info-static_hooks:set-message 
+VCS_INFO_hook:17> zstyle -t :vcs_info:git+set-message:default:.zkit debug
+VCS_INFO_hook:17> debug=0 
+VCS_INFO_hook:18> ((  debug  ))
+VCS_INFO_hook:24> zstyle -a :vcs_info-static_hooks:set-message hooks hooks
+VCS_INFO_hook:25> ((  debug  ))
+VCS_INFO_hook:28> zstyle -a :vcs_info:git+set-message:default:.zkit hooks tmp
+VCS_INFO_hook:29> ((  debug  ))
+VCS_INFO_hook:32> hooks+=( ) 
+VCS_INFO_hook:33> ((  0 == 0  ))
+VCS_INFO_hook:33> return 0
+VCS_INFO_formats:82> zformat -f msg %b%u%c a: b:master c: i: m: r:.zkit s:git 'u:*' Q: R:/home/tomo/.zkit S:.
+VCS_INFO_formats:94> msgs[$i]='master*' 
+VCS_INFO_formats:99> hook_com=( ) 
+VCS_INFO_formats:100> backend_misc=( ) 
+VCS_INFO_formats:101> return 0
+VCS_INFO_get_data_git:175> return 0
+vcs_info:92> VCS_INFO_set
+VCS_INFO_set:5> setopt localoptions noksharrays NO_shwordsplit
+VCS_INFO_set:6> local -i i j
+VCS_INFO_set:8> [[ '' == --nvcs ]]
+VCS_INFO_set:17> ((  1 - 1 < 0  ))
+VCS_INFO_set:18> i=0
+VCS_INFO_set:19> ((  j = i + 1  ))
+VCS_INFO_set:20> typeset -gx 'vcs_info_msg_0_=master*'
+VCS_INFO_set:23> ((  i < maxexports  ))
+VCS_INFO_set:24> j=1
+VCS_INFO_set:25> [[ -n '' ]]
+VCS_INFO_set:24> j=2
+VCS_INFO_set:25> [[ -n '' ]]
+VCS_INFO_set:28> return 0
+vcs_info:93> return 0
+__vcs_info:2> [[ -n 'master*' ]]
+__vcs_info:3> __git_info_stash
+__git_info_stash:1> [[+__git_info_stash:1> git stash list
+__git_info_stash:1> [[ -n '' ]]
+__vcs_info:3> __git_info_push
+__git_info_push:1> [[+__git_info_push:1> git remote
+__git_info_push:1> [[ -n origin ]]
+__git_info_push:2> git rev-parse HEAD
+__git_info_push:2> local 'head=7a854d7b6a5569ea90f2fcf26f6acf2401dd3dd0'
+__git_info_push:3> local remote
+__git_info_push:4> git rev-parse --remotes
+__git_info_push:4> remote=7a854d7b6a5569ea90f2fcf26f6acf2401dd3dd0
+__git_info_push:5> [ 7a854d7b6a5569ea90f2fcf26f6acf2401dd3dd0 '=' 7a854d7b6a5569ea90f2fcf26f6acf2401dd3dd0 ']'
+__git_info_push:5> return 0
+__vcs_info:3> echo '(master*)'
+autojump_preexec:1> [[ '' == 1 ]]
+autojump_preexec:4> _PWD_ARGS=-P 
+zsh:1> exit
