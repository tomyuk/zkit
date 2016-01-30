# -*- shell-script -*-
# for rvm puts gemset path into th last
if [ -n "$GEM_HOME" ]; then
    pathmunge "${GEM_HOME}/bin"
fi
