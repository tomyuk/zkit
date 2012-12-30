#!/usr/bin/env bash
######################################################################
## python staff

DISTRIBUTE_VERSION=${DISTRIBUTE_VERSION=0.6.32}
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

    ## distribute
    if [[ ! -x $python_bin/easy_install ]]; then
	tmpdir=$(mktemp -d /tmp/zkit.XXXXXX )
	(
	    cd $tmpdir
	    curl -L ${DISTRIBUTE_URL} | tar zxf -
	    cd distribute-${DISTRIBUTE_VERSION}
	    $python setup.py install --user --install-scripts $python_bin
	)
	rm -rf $tmpdir
    else
	$python_bin/easy_install --user -U -d $python_lib -s $python_bin distribute
	mv ${local_bin}/easy_install{,-${python_version}} $python_bin/
    fi
    if [[ -f ${local_bin}/easy_install ]]; then
	mv ${local_bin}/easy_install{,-${python_version}} $python_bin/
    fi


    ## pip
    $python_bin/easy_install --user -U \
	-d $python_lib -s $python_bin -S $python_lib/site-packages \
	pip
    if [[ -f ${local_bin}/pip ]]; then
	mv ${local_bin}/pip{,-${python_version}} $python_bin/
    fi

    # Virtualenv
    $python_bin/pip install --user \
	--install-option="--user" \
	--install-option="--install-scripts=/Users/tomo/.local/lib/python2.7/bin" \
	virtualenvwrapper

    mkdir -p ${HOME}/.virtualenvs
    # virtualenvwrapper global hooks
    for f in postactivate postdeactivate; do
	__zkit_install templates/virtualenvs_$f ${HOME}/.virtualenvs/$f
	chmod 0755 ${HOME}/.virtualenvs/$f
    done

    source ${python_bin}/virtualenvwrapper.sh
fi
