# 運用メモ

この文書は、zkit を日常的に運用するための手順をまとめます。

## 日常操作

### 新しいシェルで確認する

設定を変更したら、新しい login shell を起動して確認します。

```bash
exec zsh -l
```

現在の shell を残したまま確認したい場合は、別プロセスで起動します。

```bash
zsh -l
```

### 読み込み順を確認する

```bash
ZKIT_DEBUG=true zsh -l
```

`load: /path/to/rc.d/...` が表示されます。想定したファイルが出ない場合は、拡張子、権限、ファイル名の番号を確認してください。

### セットアップを再実行する

```bash
~/.zkit/bin/zkit_setup
```

verbose 表示は次の通りです。

```bash
~/.zkit/bin/zkit_setup -v
```

## 更新手順

### 通常更新

```bash
cd ~/.zkit && git pull
cd ~/.zkit_private && git pull
~/.zkit/bin/zkit_setup
```

private repo を使っていない場合、2行目は不要です。

### 自動更新を止める

`zkit_setup` 実行時の自動 `git pull` を止めたい場合は、`~/.zkitrc` に書きます。

```zsh
ZKIT_AUTOUPDATE=false
```

## rc.d 追加時の確認手順

新しい rc を追加したら、次の順で確認します。

1. ファイル名が `{番号}-{名前}.{sh|zsh|bash}` になっているか
2. zsh 専用なら `.zsh`、bash 専用なら `.bash`、共通なら `.sh` になっているか
3. 対話専用処理を `[[ -n "${PS1:-}" ]]` で囲んでいるか
4. 未定義になり得る変数を `${VAR:-}` で参照しているか
5. `ZKIT_DEBUG=true zsh -l` で読み込まれるか

例:

```zsh
# ~/.zkit_private/rc.d/37-docker.zsh
if __zkit_have docker; then
    alias dps='docker ps'
fi
```

対話専用 alias なら次のようにします。

```zsh
if [[ -n "${PS1:-}" ]]; then
    alias ll='ls -la'
fi
```

## private repo の運用

private repo には次のような情報を置きます。

- API key や token を参照する設定
- 会社・個人のメールアドレス
- ローカルだけの絶対パス
- ホスト固有の PATH
- 公開したくない alias や関数

公開 repo である `~/.zkit` には、誰が見てもよい汎用設定だけを置きます。

## intrinsics と rc.d の使い分け

`intrinsics/host-*` は、rc.d より前に読み込まれるホスト固有の初期変数用です。

```zsh
# ~/.zkit_private/intrinsics/host-my-mac
__zkit_path+=( "$HOME/bin" )
export WORKSPACE="$HOME/work"
```

`rc.d/host-*.zsh` は、rc.d の後半で読み込むホスト固有の shell 設定用です。

```zsh
# ~/.zkit_private/rc.d/host-my-mac.zsh
if [[ -n "${PS1:-}" ]]; then
    alias work='cd "$WORKSPACE"'
fi
```

初期変数は intrinsics、alias・関数・対話設定は rc.d と分けると保守しやすくなります。

## macOS での運用

Homebrew の位置は Apple Silicon と Intel Mac で異なります。

- Apple Silicon: `/opt/homebrew`
- Intel Mac: `/usr/local`

ホストごとの PATH 調整は `~/.zkit_private/intrinsics/host-*` に寄せます。公開 rc.d に個人端末固有の絶対パスを入れないでください。

## Linux / WSL での運用

Linux では distro ごとの差が大きいため、OS 固有設定は private 側に寄せます。

WSL では Windows 側の PATH が入ることで、意図しない `python`, `node`, `ssh` などが先に見つかることがあります。`command -v` と `type -a` で実体を確認してください。

```bash
type -a python3
type -a node
type -a ssh
```

## 安全な変更方針

zkit は shell 起動に関わるため、壊すと新しい shell が開きにくくなります。変更時は次を守ります。

1. 既存 shell を閉じずに、新しい shell で検証する
2. private rc.d の変更から試す
3. 公開 rc.d に入れる前に、macOS / Linux / WSL で未定義変数がないか確認する
4. `set -u` / `nounset` を想定して `${VAR:-}` を使う
5. PATH の重複や順序は `type -a` で確認する

## 復旧用の最小手順

zsh 起動が壊れた場合は、zkit を読まない shell を起動して退避します。

```bash
zsh -f
```

または bash を使います。

```bash
bash --noprofile --norc
```

その後、直近の変更を退避します。

```bash
mv ~/.zkit_private/rc.d/82-local-aliases.zsh ~/.zkit_private/rc.d/82-local-aliases.zsh.disabled
```

`~/.zshenv` を一時的に退避する方法もあります。

```bash
mv ~/.zshenv ~/.zshenv.disabled
```

復旧後に新しい shell を開き直してください。
