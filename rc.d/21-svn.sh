#---- for SVN
_svn=$(__zkit_whence svn)
_ssh=$(__zkit_whence ssh)
if [[ -n "$_svn" && -n "$_ssh" ]]; then
    export SVN_SSH=$_ssh
fi
unset _svn _ssh
