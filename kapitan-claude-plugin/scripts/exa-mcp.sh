#!/bin/bash
# Wrapper script for exa-mcp-server that passes EXA_API_KEY via Smithery --config flag.
# exa-mcp-server v3+ uses Smithery and reads the API key from config, not from env vars.
# Claude Code plugin system doesn't interpolate ${ENV_VAR} in .mcp.json, so we use
# this script to expand the env var at runtime.
exec npx -y exa-mcp-server --config "{\"exaApiKey\":\"${EXA_API_KEY}\"}"
