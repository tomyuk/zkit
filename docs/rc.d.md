# rc.d リファレンス

`rc.d/` ディレクトリには、シェル起動時に順番に source される設定スクリプトが置かれます。

## 命名規則

ファイル名は **`{番号2桁以上}-{説明}.{拡張子}`** 形式です。

```
{番号}-{名前}.sh     # zsh / bash 共通
{番号}-{名前}.zsh    # zsh のみ
{番号}-{名前}.bash   # bash のみ
```

番号の先頭2桁（場合によっては3桁）がカテゴリを表します。

| 番号帯 | カテゴリ | 説明 |
|---|---|---|
| `00`-`09` | basic | 共通変数、初期化、環境変数 |
| `20`-`29` | tools | VCS や開発ツール（git, svn など） |
| `30`-`39` | languages | 言語ランタイム（Python, Ruby, Node, Go など） |
| `60`-`69` | applications | アプリケーション固有（Vagrant, Heroku など） |
| `70`-`79` | agents | gpg-agent, ssh-agent など |
| `80`-`89` | interactive | 対話シェル専用（プロンプト、補完、履歴、alias） |
| `90`-`99` | private / housekeeping | ホスト固有 rc、環境チェック、後処理 |

同じ番号帯内では **ファイル名の辞書順** で読み込まれます。細かい順序制御には `81-00-prompt-color.zsh` のようにサブ番号を使います。

## 拡張子の選び方

| 拡張子 | zsh | bash | 用途 |
|---|---|---|---|
| `.sh` | ○ | ○ | シェル非依存の設定（環境変数、PATH など） |
| `.zsh` | ○ | × | zsh 固有（bindkey, zstyle, PROMPT など） |
| `.bash` | × | ○ | bash 固有（shopt, PS1 など） |

## 現在の rc.d スクリプト一覧

### 基本設定（00-09）

| ファイル | 説明 |
|---|---|
| `00-common.sh` | `__zkit_path` など共通変数の定義 |
| `01-initialize.zsh` / `.bash` | ログインシェル判定、zsh オプション、Homebrew PATH |
| `03-environment.sh` | TERM, LANG, EDITOR, Homebrew 環境変数など |

### ツール（20-29）

| ファイル | 説明 |
|---|---|
| `21-svn.sh` | Subversion 設定 |
| `22-git.zsh` / `.bash` | Git 設定、プロンプト連携 |

### 言語・ランタイム（30-39）

| ファイル | 説明 |
|---|---|
| `30-python.sh` | Python / virtualenv |
| `31-perl.sh` | Perl |
| `32-rbenv.sh` | Ruby (rbenv) |
| `33-java.sh` | Java |
| `34-nvm.sh` / `34-nodebrew.sh` | Node.js |
| `35-go.sh` | Go |
| `36-cargo.sh` | Rust (cargo) |
| `63-anaconda.zsh` / `.bash` | Conda |

### アプリケーション（60-69）

| ファイル | 説明 |
|---|---|
| `60-vagrant.sh` | Vagrant |
| `62-heroku.sh` | Heroku CLI |
| `64-rvm.sh` | Ruby (RVM) |

### エージェント（70-79）

| ファイル | 説明 |
|---|---|
| `70-gpg-agent.sh` | GPG agent |

### 対話機能（80-89）

| ファイル | 説明 |
|---|---|
| `80-interactive.zsh` / `.bash` | bindkey, autojump, run-help など |
| `81-00-prompt-color.zsh` / `.zsh` | プロンプト色定義 |
| `81-prompt.zsh` / `.bash` | プロンプト設定 |
| `82-common-aliases.sh` | 共通 alias |
| `83-aliases.zsh` / `.bash` | 追加 alias |
| `84-history.zsh` / `.bash` | 履歴設定 |
| `85-completion.zsh` / `.bash` | 補完設定 |

### 後処理・ホスト固有（90-99）

| ファイル | 説明 |
|---|---|
| `90-private.sh` | ホスト別 rc.d の読み込み |
| `91-mactex.sh` | MacTeX |
| `92-lms.zsh` | LMS 関連 |
| `95-rvm-hosekeep.sh` | RVM 後処理 |
| `98-housekeep.sh` | bash 後処理 |
| `99-housekeep.zsh` | fpath 整理など zsh 後処理 |
| `99-macro-check.sh` | 環境チェック（`ZKIT_DEBUG` 時） |

## 新規スクリプトの追加例

```zsh
# ~/.zkit_private/rc.d/37-docker.zsh
# 言語・ツール帯（30-39）に Docker 設定を追加

if __zkit_have docker; then
    alias dps='docker ps'
fi
```

番号は **既存ファイルとの相対位置** を考慮して選びます。PATH 依存の設定は `01-initialize.*` より後、対話専用の設定は `80-*` 以降に置くのが安全です。
