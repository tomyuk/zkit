# -*- shell -*-
#!/usr/bin/env bash
# macOS環境チェック

if [[ -n "${PS1:-}" ]] && [[ "${ZKIT_DEBUG:-false}" == true ]]; then
    echo "=== Zkit macOS環境チェック ==="

    # Homebrew確認
    if command -v brew >/dev/null 2>&1; then
        echo "✓ Homebrew: $(brew --version | head -1)"
    else
        echo "✗ Homebrew: 未インストール"
    fi

    # 各言語環境確認
    if command -v python3 >/dev/null 2>&1; then
        echo "✓ Python: $(python3 --version)"
    fi

    if command -v node >/dev/null 2>&1; then
        echo "✓ Node.js: $(node --version)"
    fi

    if command -v ruby >/dev/null 2>&1; then
        echo "✓ Ruby: $(ruby --version)"
    fi

    if command -v go >/dev/null 2>&1; then
        echo "✓ Go: $(go version)"
    fi

    if [[ -n "${JAVA_HOME:-}" ]]; then
        echo "✓ Java: $JAVA_HOME"
    fi

    echo "==================="
fi
