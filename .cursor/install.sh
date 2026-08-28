#!/usr/bin/env bash
set -euo pipefail

# This repository is a GitHub profile README. The only "app" is a
# GitHub-flavored Markdown preview of README.md, served by grip.

# Install uv (used to install/run grip in an isolated tool environment)
# if it is not already available.
if ! command -v uv >/dev/null 2>&1; then
  curl -LsSf https://astral.sh/uv/install.sh | sh
fi

export PATH="$HOME/.local/bin:$PATH"

# Idempotent: uv reports and exits cleanly if grip is already installed.
uv tool install grip
