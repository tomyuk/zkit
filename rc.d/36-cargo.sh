# Cargo

home_dir="${HOME:-}"

if [[ -n "$home_dir" && -x "${home_dir}/.cargo/bin/cargo" ]]; then
    pathmunge "${home_dir}/.cargo/bin"
fi

unset home_dir
