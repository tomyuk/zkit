#!/usr/bin/env bash
# Go環境設定（macOS向け）

# Go設定
if [[ -x ${HOMEBREW_PREFIX}/bin/go ]]; then
    export GOROOT=${HOMEBREW_PREFIX}/opt/go/libexec
    export GOPATH="$HOME/go"
    pathmunge "${GOPATH}/bin"
    pathmunge "${GOROOT}/bin"
elif [[ -x /usr/local/go/bin/go ]]; then
    pathmunge "/usr/local/go/bin"
fi
