#!/bin/bash
# hs-weekly-report 一键安装脚本
# 用法：curl -fsSL https://raw.githubusercontent.com/handsomeng/hs-weekly-report/main/install.sh | bash
set -e

# 安装目标：用户级 skills 目录
TARGET_DIR="${HOME}/.workbuddy/skills/weekly-report"
TMP_DIR="$(mktemp -d)"

echo "📦 正在下载 hs-weekly-report ..."
curl -fsSL https://github.com/handsomeng/hs-weekly-report/archive/refs/heads/main.tar.gz | tar -xz -C "$TMP_DIR"

echo "📁 正在安装到 ${TARGET_DIR}"
mkdir -p "${HOME}/.workbuddy/skills"
rm -rf "$TARGET_DIR"
mv "${TMP_DIR}/hs-weekly-report-main" "$TARGET_DIR"

rm -rf "$TMP_DIR"

echo ""
echo "✅ 安装完成！"
echo ""
echo "现在对你的 AI 说一句话就能用："
echo "  「帮我写周报」或「把这周的事整理成周报」"
echo ""
echo "第一次使用，AI 会让你列一下手头的项目，以后每周直接发流水账就行。"
