# zkit

zkit は、zsh / bash の起動設定を `rc.d/` に分割して管理する dotfiles フレームワークです。

主対象は zsh です。bash も同じ思想で扱えます。公開できる共通設定は `~/.zkit` に、個人情報・機密情報・ホスト固有設定は `~/.zkit_private` に分離します。

## 何を解決するか

zkit は、ホームディレクトリ直下の `.zshrc` や `.bashrc` に設定を積み上げ続ける代わりに、役割ごとに小さな rc スクリプトへ分割します。

- shell 起動フローを明示する
- macOS / Linux / WSL で共通設定とホスト固有設定を分離する
- private repo に機密設定を逃がす
- `setup.d/` に dotfile 配置や初回設定を集約する
- `rc.d/` の番号順で読み込み順を制御する

## 最短導入

```bash
git clone https://github.com/tomyuk/zkit.git ~/.zkit
~/.zkit/bin/zkit_setup
exec zsh -l
```

private repo を併用する場合は、初回実行前に `~/.zkitrc` を作成します。

```zsh
ZKIT_PRIVATE_REPO=git@github.com:yourname/zkit_private.git
```

詳細は [導入手順](docs/installation.md) を参照してください。

## 基本構成

```text
~/.zkit/                  # zkit 本体・公開可能な共通設定
├── bin/                  # zkit_setup など
├── rc.d/                 # shell 起動時に source される設定
├── setup.d/              # zkit_setup が実行する初期設定
├── zsh/                  # zsh 用起動ファイル・関数
├── bash/                 # bash 用起動ファイル・関数
├── templates/            # dotfile 生成用テンプレート
└── var/                  # cache / tmp / log

~/.zkit_private/          # private repo: 機密・個人・ホスト固有設定
├── zkitrc
├── rc.d/
├── setup.d/
├── intrinsics/
└── bin/
```

## 起動時の大まかな流れ

zsh では、`~/.zshenv` が `ZKIT` と `ZDOTDIR` を設定し、以後の `.zshrc` は `$ZKIT/zsh/.zshrc` から読み込まれます。

```text
~/.zshenv
  -> $ZKIT/zsh/.zshrc
  -> $ZKIT/zsh/startup.sh
  -> ~/.zkitrc
  -> ~/.zkit_private/zkitrc
  -> ~/.zkit_private/intrinsics/host-*
  -> ~/.zkit/rc.d/*.sh, *.zsh
  -> ~/.zkit_private/rc.d/*.sh, *.zsh
```

詳しくは [起動フロー](docs/startup-flow.md) を参照してください。

## よく使う操作

```bash
# セットアップを再実行
~/.zkit/bin/zkit_setup

# 詳細表示つきでセットアップ
~/.zkit/bin/zkit_setup -v

# 起動時に読み込まれる rc を確認
ZKIT_DEBUG=true zsh -l

# zkit 本体を更新
cd ~/.zkit && git pull

# private repo を更新
cd ~/.zkit_private && git pull
```

## ドキュメント

- [ドキュメント入口](docs/README.md)
- [導入手順](docs/installation.md)
- [起動フロー](docs/startup-flow.md)
- [カスタマイズ](docs/customization.md)
- [rc.d リファレンス](docs/rc.d.md)
- [運用メモ](docs/operations.md)
- [トラブルシューティング](docs/troubleshooting.md)

## 設定を書く場所の原則

公開してよい共通設定は `~/.zkit/rc.d/` に置きます。

API key、メールアドレス、社内パス、個人端末固有の PATH などは `~/.zkit_private/` に置きます。

ホスト起動初期に必要な変数は `~/.zkit_private/intrinsics/host-*` に置きます。alias や対話シェル向け補助設定は `~/.zkit_private/rc.d/` に置きます。

## 安全な rc.d の書き方

`set -u` / zsh `nounset` 環境でも壊れないよう、未定義になり得る変数は `${VAR:-}` で参照します。

```zsh
if [[ -n "${VIRTUAL_ENV:-}" ]]; then
    venv_name="${VIRTUAL_ENV##*/}"
fi
```

対話シェル専用処理は `PS1` を安全に確認します。

```zsh
if [[ -n "${PS1:-}" ]]; then
    alias ll='ls -la'
fi
```

## 対応環境の目安

- macOS: 主対象。Homebrew と zsh 前提の設定が多い。
- Linux: bash / zsh の共通部分は利用可能。ディストリビューション固有の PATH は private 側で調整する。
- WSL: Linux と同様に扱えるが、Windows 側 PATH 混入や権限差に注意する。

## ライセンス

この repository のライセンスに従います。
