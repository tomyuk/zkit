#!/usr/bin/env bash
# Go環境設定（macOS向け）

homebrew_prefix="${HOMEBREW_PREFIX:-}"
home_dir="${HOME:-}"

# Go設定
if [[ -n "$homebrew_prefix" && -x "${homebrew_prefix}/bin/go" ]]; then
    export GOROOT="${homebrew_prefix}/opt/go/libexec"
    if [[ -n "$home_dir" ]]; then
        export GOPATH="${home_dir}/go"
        pathmunge "${GOPATH}/bin"
    fi
    pathmunge "${GOROOT}/bin"
elif [[ -x /usr/local/go/bin/go ]]; then
    pathmunge "/usr/local/go/bin"
fi

unset homebrew_prefix home_dir
