# トラブルシューティング

zkit で起きやすい問題と確認手順をまとめます。

## まず確認すること

新しい shell を起動できる場合は、最初に診断コマンドを実行します。

```bash
~/.zkit/bin/zkit_doctor
```

続いて、読み込みログを出します。

```bash
ZKIT_DEBUG=true zsh -l
```

shell 起動自体が壊れる場合は、zkit を読まない shell を起動します。

```bash
zsh -f
# または
bash --noprofile --norc
```

## `zkit_doctor` で警告が出る

`zkit_doctor` は、環境変数、必要ファイル、代表コマンド、private repo、`rc.d` 候補、未定義変数リスクを確認します。

よくある警告と対応:

| 警告 | 対応 |
|---|---|
| `ZKIT missing` | `~/.zkit` が存在するか確認する |
| `ZDOTDIR missing` | `~/.zkit/zsh` が存在するか確認する |
| `ZKIT_PRIVATE missing` | `~/.zkit_private` を作成するか、`ZKIT_PRIVATE` を見直す |
| `command missing` | 必要コマンドを install する |
| `review listed lines` | 表示された行に `${VAR:-}` が必要か確認する |

未定義変数リスクスキャンは簡易的なものです。警告行がすべて問題とは限りませんが、`set -u` / zsh `nounset` 環境で落ちる可能性のある箇所を探す起点になります。

## `parameter not set` が出る

例:

```text
__zkit_title_command:12: VIRTUAL_ENV_NAME: parameter not set
```

原因は、zsh の `nounset` または `set -u` 相当の設定下で、未定義変数を直接参照していることです。

避けるべき書き方:

```zsh
if [[ -n $VIRTUAL_ENV_NAME ]]; then
    echo "$VIRTUAL_ENV_NAME"
fi
```

安全な書き方:

```zsh
if [[ -n "${VIRTUAL_ENV_NAME:-}" ]]; then
    echo "$VIRTUAL_ENV_NAME"
fi
```

`VIRTUAL_ENV` から venv 名を補完する場合:

```zsh
venv_name="${VIRTUAL_ENV_NAME:-}"
if [[ -z "$venv_name" && -n "${VIRTUAL_ENV:-}" ]]; then
    venv_name="${VIRTUAL_ENV##*/}"
fi
```

rc.d に追加するコードでは、未定義になり得る変数を必ず `${VAR:-}` で参照してください。

## 設定が反映されない

確認点:

1. ファイルが読み取り可能か
2. ファイル拡張子が shell に合っているか
3. ファイル名の番号が想定した順序になっているか
4. private rc.d に置いたつもりが別の場所にないか
5. 新しい shell で確認しているか
6. `zkit_doctor` でパス警告が出ていないか

zsh で読み込まれる拡張子:

```text
*.sh
*.zsh
```

bash で読み込まれる拡張子:

```text
*.sh
*.bash
```

確認コマンド:

```bash
~/.zkit/bin/zkit_doctor
ZKIT_DEBUG=true zsh -l
```

## `~/.zshrc` を変更したのに反映されない

zkit の zsh 構成では、`~/.zshenv` が `ZDOTDIR=$ZKIT/zsh` を設定します。そのため、通常の `~/.zshrc` ではなく、`$ZKIT/zsh/.zshrc` が読まれます。

カスタマイズは次のどこかに置きます。

- `~/.zkitrc`
- `~/.zkit_private/zkitrc`
- `~/.zkit_private/intrinsics/host-*`
- `~/.zkit_private/rc.d/*.zsh`
- `~/.zkit/rc.d/*.zsh`

個人設定は `~/.zkit_private/rc.d/` に置くのが基本です。

## PATH の順序がおかしい

確認します。

```bash
printf '%s\n' "$PATH" | tr ':' '\n'
type -a python3
type -a node
type -a git
```

ホスト固有の PATH は `~/.zkit_private/intrinsics/host-*` に置きます。

```zsh
# ~/.zkit_private/intrinsics/host-my-mac
__zkit_path+=( "$HOME/.local/bin" )
```

既存の rc.d が後から PATH を変更している場合があります。`ZKIT_DEBUG=true zsh -l` で読み込み順を確認してください。

## Homebrew のコマンドが見つからない

macOS では Homebrew の prefix が機種で異なります。

```bash
/opt/homebrew/bin/brew --version
/usr/local/bin/brew --version
```

Apple Silicon では `/opt/homebrew/bin/brew`、Intel Mac では `/usr/local/bin/brew` が一般的です。

必要であれば login shell 側で Homebrew を初期化します。

```zsh
if [[ -x /opt/homebrew/bin/brew ]]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
elif [[ -x /usr/local/bin/brew ]]; then
    eval "$(/usr/local/bin/brew shellenv)"
fi
```

## prompt が壊れる、またはタイトル更新でエラーが出る

prompt 系は `80` 番台で読み込まれます。

関連ファイル:

- `rc.d/81-00-prompt-color.zsh`
- `rc.d/81-prompt.zsh`
- `rc.d/81-prompt.bash`

private 側で prompt を上書きする場合は、`82-` 以降の番号にします。

```zsh
# ~/.zkit_private/rc.d/82-my-prompt.zsh
if [[ -n "${PS1:-}" ]]; then
    PROMPT='%n@%m:%~%# '
fi
```

## venv 名が表示されない

Python の標準 venv は `VIRTUAL_ENV` を設定します。virtualenvwrapper を使う場合は `VIRTUAL_ENV_NAME` が設定されることがあります。

確認:

```bash
printf 'VIRTUAL_ENV=%s\n' "${VIRTUAL_ENV:-}"
printf 'VIRTUAL_ENV_NAME=%s\n' "${VIRTUAL_ENV_NAME:-}"
```

zkit の prompt は、`VIRTUAL_ENV_NAME` があればそれを使い、なければ `VIRTUAL_ENV` の末尾ディレクトリ名を使います。

## private repo が clone / pull されない

確認点:

1. `~/.zkitrc` に `ZKIT_PRIVATE_REPO` があるか
2. `~/.zkit_private` が既に存在していないか
3. SSH key または GitHub 認証が有効か
4. `ZKIT_AUTOUPDATE=false` にしていないか

確認:

```bash
cat ~/.zkitrc
ls -la ~/.zkit_private
git -C ~/.zkit_private remote -v
ssh -T git@github.com
```

private repo を使わない場合、`~/.zkit_private` は通常ディレクトリとして作成されます。

## `zkit_setup` が途中で止まる

verbose で再実行します。

```bash
~/.zkit/bin/zkit_setup -v
```

よくある原因:

- `git pull` に失敗している
- private repo の認証に失敗している
- `setup.d/*.sh` の中でエラーが起きている
- 既存 dotfile の権限が不正

一時的に自動更新を止める場合:

```zsh
# ~/.zkitrc
ZKIT_AUTOUPDATE=false
```

## shell が起動できない場合の復旧

zkit を読まない zsh を起動します。

```bash
zsh -f
```

private rc.d の直近変更を無効化します。

```bash
mv ~/.zkit_private/rc.d/82-my-prompt.zsh ~/.zkit_private/rc.d/82-my-prompt.zsh.disabled
```

それでも難しい場合は、`~/.zshenv` を退避して zkit の自動読み込みを止めます。

```bash
mv ~/.zshenv ~/.zshenv.disabled
```

復旧後、必要に応じて再セットアップします。

```bash
~/.zkit/bin/zkit_setup
```

## 問題調査用コマンド集

```bash
# 診断
~/.zkit/bin/zkit_doctor

# shell と起動モード
printf 'SHELL=%s\n' "$SHELL"
printf 'ZSH_VERSION=%s\n' "${ZSH_VERSION:-}"
printf 'BASH_VERSION=%s\n' "${BASH_VERSION:-}"

# zkit 関連
printf 'ZKIT=%s\n' "${ZKIT:-}"
printf 'ZDOTDIR=%s\n' "${ZDOTDIR:-}"
printf 'ZKIT_PRIVATE=%s\n' "${ZKIT_PRIVATE:-}"

# 読み込み確認
ZKIT_DEBUG=true zsh -l

# PATH 確認
printf '%s\n' "$PATH" | tr ':' '\n'

# コマンド解決順
type -a git
type -a python3
type -a node
```
