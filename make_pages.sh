#!/bin/bash
# 新アプリのプライバシーポリシーページを生成する。使い方: ./make_pages.sh <repo名> <アプリ表示名>
set -euo pipefail
REPO="${1:?repo名}"
NAME="${2:?アプリ表示名}"
mkdir -p "$REPO"
sed "s/__APP_NAME__/$NAME/g" _template_privacy.html > "$REPO/privacy.html"
echo "generated: $REPO/privacy.html"
