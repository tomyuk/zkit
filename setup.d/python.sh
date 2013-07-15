#!/usr/bin/env bash
######################################################################
## python staff

unset PYTHONUSERBASE

# virtualenvs 配下のものは除外して、 python の位置を調べる
__PATH=$PATH
while [[ -z $python ]]; do
    python=$(__zkit_whence python)
    [[ $? -ne 0 ]] && break
    if [[ $python == */.virtualenvs/* ]]; then
	PATH=${PATH#$(dirname $python)}
	python=
    fi
done
PATH=$__PATH

if [[ -n $python ]]; then

    python_version=$($python -c \
	"from sys import version_info as v; print '%d.%d' % (v[0], v[1])")

    local_bin=${HOME}/.local/bin
    if [[ $(uname) == "Darwin" ]]; then
	python_lib=${HOME}/Library/Python/${python_version}
	site_packages=${python_lib}/lib/python/site-packages
    else
	python_lib=${HOME}/.local/lib/python${python_version}
	site_packages=${python_lib}/site-packages
    fi
    python_bin=${python_lib}/bin
    mkdir -p $python_lib $python_bin
    PATH=$python_bin:$PATH
    export PYTHONPATH=$site_packages

    if [[ ! -d $python_bin ]]; then
	mkdir -p $python_bin
    fi
    if [[ ! -d $site_packages ]]; then
	mkdir -p $site_packages
    fi

    # pydistutils.cfg あると python3 の virtualenv のインストールに失敗する
    #__zkit_install templates/pydistutils.cfg ${HOME}/.pydistutils.cfg
    if [[ -f ${HOME}/.pydistutils.cfg ]]; then
	rm -f ${HOME}/.pydistutils.cfg
    fi

    ## distribute
    if [[ ! -x $python_bin/easy_install ]]; then
	echo "Installing distribute"
	tmpdir=$(mktemp -d /tmp/zkit.XXXXXX )
	(
	    cd $tmpdir
	    curl -L -O "http://python-distribute.org/distribute_setup.py"
	    python distribute_setup.py


	    # echo "XXX" $python setup.py install --user --install-scripts $python_bin
	    # $python setup.py install --user --install-scripts $python_bin
	    # $python setup.py install --user --prefix= --install-scripts $python_bin
	)
	rm -rf $tmpdir
    # else
    # 	echo "XXX" $python_bin/easy_install --user -U -d $python_lib -s $python_bin distribute
    # 	$python_bin/easy_install --user -U -d $python_lib -s $python_bin distribute
    # 	mv ${local_bin}/easy_install{,-${python_version}} $python_bin/
    fi
    if [[ -f ${local_bin}/easy_install ]]; then
	mv ${local_bin}/easy_install{,-${python_version}} $python_bin/
    fi


    ## pip
    if [[ ! -x $python_bin/pip ]]; then
	echo "XXX" $python_bin/easy_install --user -U \
	    -d $python_lib -s $python_bin -S $site_packages \
	    pip
	$python_bin/easy_install --user -U \
	    -d $python_lib -s $python_bin -S $site_packages \
	    pip
	if [[ -f ${local_bin}/pip ]]; then
	    mv ${local_bin}/pip{,-${python_version}} $python_bin/
	fi
    fi

    # Virtualenv
    if [[ ! -r ${python_bin}/virtualenvwrapper.sh ]]; then

	echo "XXX" $python_bin/pip install --user \
	    --upgrade \
	    --install-option="--user" \
	    --install-option="--prefix=" \
	    --install-option="--install-scripts=$python_bin" \
	    virtualenvwrapper
	$python_bin/pip install --user \
	    --upgrade \
	    --install-option="--user" \
	    --install-option="--prefix=" \
	    --install-option="--install-scripts=$python_bin" \
	    virtualenvwrapper
	
	mkdir -p ${HOME}/.virtualenvs
	# virtualenvwrapper global hooks
	for f in postactivate postdeactivate; do
	    __zkit_install templates/virtualenvs_$f ${HOME}/.virtualenvs/$f
	    chmod 0700 ${HOME}/.virtualenvs/$f
	done
    fi
    source ${python_bin}/virtualenvwrapper.sh
fi
