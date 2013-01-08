# -*- shell-script -*-

if [[ -n $PS1 ]]; then
    csi=$'\e[' nl=$'\n'
    if [[ -n $ZSH_VERSION ]]; then
	eb="%{" ee="%}"
	prog="Zsh"
    else
	eb="\\[" ee="\\]"
	prog="Zsh"
    fi

    pc0="${eb}${csi}m${ee}"				# reset
    pc1="${eb}${csi}48;5;22;38;5;16m${ee}"		# prog.
    pc2="${eb}${csi}48;5;236;38;5;244m${ee}"		# time
    pc3="${eb}${csi}48;5;54;38;5;244m${ee}"		# virtualenv
    pc4="${eb}${csi}48;5;240;38;5;52m${ee}"		# rvm
    pc5="${eb}${csi}48;5;58;38;5;232m${ee}"		# git
    pc6="${eb}${csi}48;5;235;38;5;242m${ee}"		# pwd

    cc1="${eb}${csi}38;5;77m${ee}"				# user
    cc2="${eb}${csi}38;5;69m${ee}"			# @
    cc3="${eb}${csi}38;5;196m${ee}"			# machine
    cc4="${eb}${csi}38;5;94m${ee}" 			# tty
    cc5="${eb}${csi}38;5;143m${ee}"			# shlvl
    cc6="${eb}${csi}38;5;168m${ee}"			# history
    cc7="${eb}${csi}38;5;33m${ee}" 			# []$
    cc8="${eb}${csi}38;5;196m${ee}" 			# #
fi
