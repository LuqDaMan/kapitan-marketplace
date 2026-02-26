#!/bin/bash
# Wrapper script for mcp-google-sheets via Cloud Run SSE endpoint.
# Uses mcp-remote to bridge stdio (Claude) ↔ SSE (Cloud Run).
# Same pattern as egg/scripts/exa-mcp.sh.
exec npx -y mcp-remote "https://mcp-google-sheets-595255742975.asia-southeast1.run.app/sse"
