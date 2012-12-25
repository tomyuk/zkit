#!/usr/bin/env bash
######################################################################
## python staff

python=$(type -p python)
if [[ $python ]]; then
    python_version=$(python -c "from sys import version_info as v; print '%d.%d' % (v.major, v.minor)")
    PYTHONUSERBASE="${HOME}"/.private
    export PYTHONUSERBASE

    python_private=${HOME}/.private/lib/python${python_version}
    python_bin=${python_private}/bin
    PATH=$python_bin:$PATH

    if [[ ! -d $python_bin ]]; then
	mkdir -p $python_bin
    fi
    if [[ ! -d ${python_private}/site-packages ]]; then
	mkdir -p ${python_private}/site-packages
    fi

    case $(uname) in
	'Darwin')
	    EASY_INSTALL=/usr/local/share/python/easy_install
	    ;;
	'Linux')
	    EASY_INSTALL=/usr/bin/easy_install
	    ;;
    esac

    if [[ -x $EASY_INSTALL ]]; then

	install_private etc/pydistutils.cfg .pydistutils.cfg

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
	    install_private lib/virtualenvwrapper/$f .virtualenvs/$f
	done

	source ${python_bin}/virtualenvwrapper.sh

    fi
fi