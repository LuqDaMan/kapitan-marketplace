#!/bin/bash
# Wrapper script for mcp-google-sheets.
# Claude Code plugin system doesn't interpolate ${ENV_VAR} in .mcp.json, so we use
# this script to expand env vars at runtime.
export SERVICE_ACCOUNT_PATH="${GOOGLE_SERVICE_ACCOUNT_PATH}"
export DRIVE_FOLDER_ID="${HOJICHA_FOLDER_ID}"
exec uvx mcp-google-sheets@latest \
  --include-tools get_sheet_data,update_cells,add_rows,list_spreadsheets,find_in_spreadsheet
