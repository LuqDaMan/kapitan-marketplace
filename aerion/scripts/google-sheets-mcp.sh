#!/bin/bash
# Wrapper script for mcp-google-sheets.
# Claude Code plugin system doesn't interpolate ${ENV_VAR} in .mcp.json args,
# and MCP server processes don't inherit the user's shell environment.
# We source ~/.zshenv to pick up GOOGLE_SERVICE_ACCOUNT_PATH and HOJICHA_FOLDER_ID.

# Source user env vars (MCP processes don't inherit shell environment)
[[ -f "$HOME/.zshenv" ]] && source "$HOME/.zshenv"

# === DEBUG LOGGING (temporary) ===
LOG="/tmp/gsheets-mcp-debug.log"
echo "=== $(date -Iseconds) ===" >> "$LOG"
echo "PID: $$" >> "$LOG"
echo "PATH: $PATH" >> "$LOG"
echo "GOOGLE_SERVICE_ACCOUNT_PATH: ${GOOGLE_SERVICE_ACCOUNT_PATH:-UNSET}" >> "$LOG"
echo "HOJICHA_FOLDER_ID: ${HOJICHA_FOLDER_ID:-UNSET}" >> "$LOG"
echo "CLAUDE_PLUGIN_ROOT: ${CLAUDE_PLUGIN_ROOT:-UNSET}" >> "$LOG"
echo "which uvx: $(which uvx 2>&1)" >> "$LOG"
echo "/opt/homebrew/bin/uvx exists: $(test -f /opt/homebrew/bin/uvx && echo YES || echo NO)" >> "$LOG"
# === END DEBUG ===

export GOOGLE_APPLICATION_CREDENTIALS="${GOOGLE_SERVICE_ACCOUNT_PATH}"
export DRIVE_FOLDER_ID="${HOJICHA_FOLDER_ID}"
exec /opt/homebrew/bin/uvx mcp-google-sheets 2>/dev/null
