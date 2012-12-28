#!/usr/bin/env bash
######################################################################
## python staff

python=$(__zkit_whence python)
if [[ -n $python ]]; then
    case $(uname) in
	'Darwin')
	    EASY_INSTALL=/usr/local/share/python/easy_install
	    ;;
	'Linux')
	    EASY_INSTALL=/usr/bin/easy_install
	    ;;
    esac

    if [[ -x $EASY_INSTALL ]]; then

	python_version=$(python -c \
	    "from sys import version_info as v; print '%d.%d' % (v[0], v[1])")

	# PYTHONUSERBASE="${HOME}"/.private
	# export PYTHONUSERBASE
	# python_private=${HOME}/.private/lib/python${python_version}
	python_private=${HOME}/.local/lib/python${python_version}
	python_bin=${HOME}/.local/bin
	mkdir -p $python_private $python_bin
	PATH=$python_bin:$PATH

	if [[ ! -d $python_bin ]]; then
	    mkdir -p $python_bin
	fi
	if [[ ! -d ${python_private}/site-packages ]]; then
	    mkdir -p ${python_private}/site-packages
	fi

	__zkit_install templates/pydistutils.cfg ${HOME}/.pydistutils.cfg

	if [[ ! -x ${python_bin}/pip ]]; then
	    $EASY_INSTALL pip
	#     pip install --user --upgrade --force-reinstall pip
	# else
	#     pip install --user --upgrade pip
	fi

	hash -r
	if [[ ! -x ${python_bin}/easy_install ]]; then
	    mkdir -p /tmp/install.$$
	    if pip install -d /tmp/install.$$ distribute; then
		ls /tmp/install.$$
		(
		    cd /tmp/install.$$
		    tar zxf distribute-*.tar.gz
		    cd distribute-*
		    python setup.py install >/dev/null
		)
		rm -rf /tmp/install.$$
	    fi
	fi

	if [[ ! -f ${python_bin}/virtualenvwrapper.sh ]]; then
	    pip install --upgrade virtualenvwrapper
	fi


	mkdir -p ${HOME}/.virtualenvs
	# virtualenvwrapper global hooks
	for f in postactivate postdeactivate; do
	    __zkit_install templates/virtualenvs_$f ${HOME}/.virtualenvs/$f
	    chmod 0755 ${HOME}/.virtualenvs/$f
	done

	source ${python_bin}/virtualenvwrapper.sh

    fi
fi
