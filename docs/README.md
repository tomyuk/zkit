# zkit ドキュメント

zkit は、シェル起動時の環境設定を `rc.d/` の小さなスクリプト群で管理する dotfiles フレームワークです。zsh を主対象とし、bash にも対応しています。

このドキュメントは、初回導入から日常運用、トラブルシュート、rc.d の追加までを一通り辿れるように整理しています。

## 読む順序

初めて使う場合は、次の順で読むのが最短です。

1. [導入手順](./installation.md)
2. [起動フロー](./startup-flow.md)
3. [カスタマイズ](./customization.md)
4. [rc.d リファレンス](./rc.d.md)
5. [運用メモ](./operations.md)
6. [トラブルシューティング](./troubleshooting.md)

## ドキュメント一覧

| ドキュメント | 内容 |
|---|---|
| [導入手順](./installation.md) | clone、private repo、初回セットアップ、macOS / Linux / WSL 注意点 |
| [起動フロー](./startup-flow.md) | `~/.zshenv` から zkit が読み込まれるまでの流れ |
| [カスタマイズ](./customization.md) | 設定ファイル・ディレクトリ構成と拡張方法 |
| [rc.d リファレンス](./rc.d.md) | `rc.d/` の命名規則と各スクリプトの役割 |
| [運用メモ](./operations.md) | 更新、読み込み確認、private repo、復旧手順 |
| [トラブルシューティング](./troubleshooting.md) | `parameter not set`、PATH、prompt、private repo などの問題対応 |

## 概要

### ディレクトリ構成

```text
~/.zkit/                  # ZKIT（公開設定・本体）
├── bin/                  # zkit_setup などのユーティリティ
├── rc.d/                 # 起動時に読み込まれる設定スクリプト群
├── setup.d/              # 初回セットアップ用スクリプト（dotfile 配置など）
├── zsh/                  # ZDOTDIR（.zshrc など）
│   ├── .zshenv           # テンプレート（~/.zshenv に配置される）
│   ├── .zshrc
│   └── functions/        # zsh 関数（fpath）
├── bash/                 # bash 用 dotfile テンプレート
├── templates/            # __zkit_template 用テンプレート
└── var/                  # 一時ファイル・キャッシュ・ログ

~/.zkit_private/          # ZKIT_PRIVATE（個人・機密設定）
├── zkitrc                # プライベート設定
├── rc.d/                 # プライベート rc スクリプト
├── setup.d/              # プライベート setup スクリプト
├── intrinsics/           # ホスト固有の初期変数
└── bin/                  # プライベートコマンド

~/.zkitrc                 # ユーザー個別設定（任意）
```

### 主要な環境変数

| 変数 | デフォルト | 説明 |
|---|---|---|
| `ZKIT` | `~/.zkit` | zkit 本体のパス |
| `ZKIT_PRIVATE` | `~/.zkit_private` | プライベート設定のパス |
| `ZDOTDIR` | `$ZKIT/zsh` | zsh の `.zprofile` 以降の読み込み元 |
| `ZKIT_DEBUG` | `false` | `true` にすると rc 読み込みメッセージを表示 |
| `ZKIT_AUTOUPDATE` | `true` | `zkit_setup` 実行時に git pull するか |
| `ZKIT_PRIVATE_REPO` | （空） | プライベート repo の git clone URL |

### 初回セットアップ

zkit を clone したあと、以下を実行します。

```bash
~/.zkit/bin/zkit_setup      # bash 版
# または
~/.zkit/bin/zkit_setup.zsh  # zsh 版
```

`zkit_setup` は以下を行います。

1. `~/.zkitrc` と `~/.zkit_private/zkitrc` を読み込む
2. zkit 本体（および private repo）を git pull
3. `setup.d/` のスクリプトを実行（dotfile の配置、各種ツール設定など）

zsh 向けには `setup.d/zsh.sh` が `zsh/.zshenv` を `~/.zshenv` にコピーします。以降、zsh 起動のたびに zkit が自動的に読み込まれます。

### zsh と bash の違い

| 項目 | zsh | bash |
|---|---|---|
| エントリポイント | `~/.zshenv` → `$ZDOTDIR/.zshrc` | `~/.bash_profile` / `~/.bashrc` |
| rc.d の読み込み対象 | `*.sh`, `*.zsh` | `*.sh`, `*.bash` |
| 起動スクリプト | `zsh/startup.sh` | `bash/startup.sh` |

zsh では `ZDOTDIR` を `$ZKIT/zsh` に向けることで、ホーム直下の `.zshrc` ではなく zkit 管理下の設定ファイルが使われます（`~/.zshrc` に zkit への参照が残っていても、`ZDOTDIR` 設定後は無視されます）。

## 変更時の注意

shell 起動に関わるため、変更後は既存 shell を閉じずに別 shell で確認してください。

```bash
ZKIT_DEBUG=true zsh -l
```

`set -u` / zsh `nounset` 環境でも落ちないよう、未定義になり得る変数は `${VAR:-}` で参照します。

```zsh
if [[ -n "${PS1:-}" ]]; then
    alias ll='ls -la'
fi
```
