#!/usr/bin/env bash
######################################################################
## python staff

unset PYTHONUSERBASE
DISTRIBUTE_VERSION=${DISTRIBUTE_VERSION=0.6.34}
DISTRIBUTE_URL="http://pypi.python.org/packages/source/d/distribute/distribute-${DISTRIBUTE_VERSION}.tar.gz"

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
    python_lib=${HOME}/.local/lib/python${python_version}
    python_bin=${python_lib}/bin
    mkdir -p $python_lib $python_bin
    PATH=$python_bin:$PATH
    export PYTHONPATH=$python_lib/site-packages

    if [[ ! -d $python_bin ]]; then
	mkdir -p $python_bin
    fi
    if [[ ! -d ${python_lib}/site-packages ]]; then
	mkdir -p ${python_lib}/site-packages
    fi

    # pydistutils.cfg あると python3 の virtualenv のインストールに失敗する
    #__zkit_install templates/pydistutils.cfg ${HOME}/.pydistutils.cfg
    if [[ -f ${HOME}/.pydistutils.cfg ]]; then
	rm -f ${HOME}/.pydistutils.cfg
    fi

    ## distribute
    if [[ ! -x $python_bin/easy_install ]]; then
	tmpdir=$(mktemp -d /tmp/zkit.XXXXXX )
	(
	    cd $tmpdir
	    curl -L ${DISTRIBUTE_URL} | tar zxf -
	    cd distribute-${DISTRIBUTE_VERSION}
	    echo "XXX" $python setup.py install --user --install-scripts $python_bin
	    $python setup.py install --user --install-scripts $python_bin
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
	    -d $python_lib -s $python_bin -S $python_lib/site-packages \
	    pip
	$python_bin/easy_install --user -U \
	    -d $python_lib -s $python_bin -S $python_lib/site-packages \
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
	    --install-option="--install-scripts=$python_bin" \
	    virtualenvwrapper
	$python_bin/pip install --user \
	    --upgrade \
	    --install-option="--user" \
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
