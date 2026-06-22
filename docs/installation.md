# 導入手順

この文書は、zkit を新しい環境に導入するための手順です。

## 前提

最低限必要なものは次の通りです。

- `git`
- `bash`
- `zsh`（zsh を使う場合）
- macOS では Homebrew を入れておくと既存 rc.d の多くが自然に動きます

zkit は `~/.zkit` を本体、`~/.zkit_private` を個人・機密設定として扱います。

## 1. zkit 本体を clone する

```bash
git clone https://github.com/tomyuk/zkit.git ~/.zkit
```

既に `~/.zkit` がある場合は、先に内容を確認してください。

```bash
ls -la ~/.zkit
```

## 2. private repo を使う場合

private repo を自動 clone したい場合は、`~/.zkitrc` を先に作成します。

```zsh
# ~/.zkitrc
ZKIT_PRIVATE_REPO=git@github.com:yourname/zkit_private.git
```

private repo を使わない場合、この設定は不要です。`zkit_setup` は `~/.zkit_private` がなければ作成します。

## 3. 初回セットアップを実行する

```bash
~/.zkit/bin/zkit_setup
```

詳細表示したい場合は `-v` を付けます。

```bash
~/.zkit/bin/zkit_setup -v
```

`zkit_setup` は次の処理を行います。

1. `~/.zkitrc` を読み込む
2. `~/.zkit_private/zkitrc` があれば読み込む
3. `ZKIT_AUTOUPDATE=true` の場合、`~/.zkit` を `git pull` する
4. `~/.zkit_private` が git repo なら `git pull` する
5. `ZKIT_PRIVATE_REPO` が設定されていれば clone する
6. `~/.zkit_private/intrinsics/host-*` があれば読み込む
7. `ZKIT_SETUPS` と `ZKIT_SETUPS_LOCAL` に基づき `setup.d/*.sh` を実行する

## 4. zsh を有効化する

`zkit_setup` は、zsh が存在する場合に `setup.d/zsh.sh` を実行します。このスクリプトは `zsh/.zshenv` を `~/.zshenv` に配置します。

新しいログインシェルを起動します。

```bash
exec zsh -l
```

読み込み状況を確認するには次を実行します。

```bash
ZKIT_DEBUG=true zsh -l
```

## 5. bash を使う場合

bash 用には `setup.d/bash.sh` が以下を配置します。

- `~/.bashrc`
- `~/.bash_profile`
- `~/.bash_logout`

bash の新しいログインシェルを起動します。

```bash
exec bash -l
```

## 6. 既存 dotfiles がある場合

既存の `.zshenv`, `.zshrc`, `.bashrc`, `.bash_profile` がある環境では、導入前にバックアップしてください。

```bash
mkdir -p ~/dotfiles.backup.$(date +%Y%m%d-%H%M%S)
cp -p ~/.zshenv ~/.zshrc ~/.bashrc ~/.bash_profile ~/dotfiles.backup.$(date +%Y%m%d-%H%M%S)/ 2>/dev/null || true
```

zkit の `__zkit_install` は、既存ファイルと内容が異なる場合にバックアップを作ってから配置します。ただし、自分で既存 dotfiles の意味を確認しておくのが安全です。

## 7. macOS での推奨

Apple Silicon Mac では Homebrew の標準 prefix は `/opt/homebrew` です。Intel Mac では `/usr/local` です。

Homebrew の初期化はログインシェル側で行い、zkit の rc.d では PATH の重複を避ける方針が扱いやすいです。

```zsh
# 例: ~/.zprofile など
if [[ -x /opt/homebrew/bin/brew ]]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
elif [[ -x /usr/local/bin/brew ]]; then
    eval "$(/usr/local/bin/brew shellenv)"
fi
```

zkit 管理下では、個人差の大きい PATH は `~/.zkit_private/intrinsics/host-*` に置くのが安全です。

## 8. Linux / WSL での注意

Linux では Homebrew 前提の設定がそのまま使えない場合があります。必要に応じて private rc.d で PATH や alias を上書きしてください。

WSL では Windows 側 PATH が混入することがあります。意図しないコマンドが先に見つかる場合は、`~/.zkit_private/intrinsics/host-*` で PATH の順序を調整します。

## 9. private repo の最小構成

private repo は最初は次の程度で十分です。

```text
~/.zkit_private/
├── zkitrc
├── rc.d/
├── setup.d/
└── intrinsics/
```

例:

```zsh
# ~/.zkit_private/zkitrc
ZKIT_DEBUG=false
zkit_umask=0077
```

```zsh
# ~/.zkit_private/intrinsics/host-my-mac
__zkit_path+=( "$HOME/bin" )
```

```zsh
# ~/.zkit_private/rc.d/82-local-aliases.zsh
if [[ -n "${PS1:-}" ]]; then
    alias ll='ls -la'
fi
```

## 10. 導入後の確認

```bash
command -v zsh
printf 'ZKIT=%s\n' "$ZKIT"
printf 'ZDOTDIR=%s\n' "$ZDOTDIR"
printf 'ZKIT_PRIVATE=%s\n' "$ZKIT_PRIVATE"
ZKIT_DEBUG=true zsh -l
```

期待値は次の通りです。

- `ZKIT` が `~/.zkit` を指す
- `ZDOTDIR` が `~/.zkit/zsh` を指す
- `ZKIT_PRIVATE` が `~/.zkit_private` を指す
- `ZKIT_DEBUG=true zsh -l` で `rc.d` の読み込みが表示される

## 11. 更新

zkit 本体と private repo を更新します。

```bash
cd ~/.zkit && git pull
cd ~/.zkit_private && git pull
~/.zkit/bin/zkit_setup
```

`ZKIT_AUTOUPDATE=true` の場合、`zkit_setup` は本体を自動更新します。自動更新を止めたい場合は `~/.zkitrc` に書きます。

```zsh
ZKIT_AUTOUPDATE=false
```
