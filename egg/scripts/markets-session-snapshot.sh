#!/bin/bash
# PreCompact hook: Write a minimal procedural reminder before context compaction.
# No transcript parsing, no semantic extraction — just a procedural nudge.

SCRATCHPAD="$HOME/.local/share/claude/markets-session-state.md"
INPUT=$(cat)
TRANSCRIPT=$(echo "$INPUT" | jq -r '.transcript_path // empty' 2>/dev/null)

# Only write if this looks like a markets-teacher session
if [ -n "$TRANSCRIPT" ] && [ -f "$TRANSCRIPT" ] && grep -q "global-markets-teacher" "$TRANSCRIPT" 2>/dev/null; then
  SESSION_ID=$(echo "$INPUT" | jq -r '.session_id // "unknown"' 2>/dev/null)
  if [ -z "$SESSION_ID" ] || [ "$SESSION_ID" = "null" ]; then
    SESSION_ID="unknown"
  fi

  EXISTING_TS=""
  if [ -f "$SCRATCHPAD" ]; then
    EXISTING_TS=$(grep -o 'Session Timestamp: [0-9T:-]*' "$SCRATCHPAD" | sed 's/Session Timestamp: //')
  fi
  SESSION_TS="${EXISTING_TS:-$(date +%Y-%m-%dT%H:%M)}"

  cat > "$SCRATCHPAD" << EOF
# Markets Teacher Session In Progress (saved before compaction)
- You are in a global-markets-teacher session. Read ~/.local/share/claude/markets-teacher-profile.md for context.
- Session ID: ${SESSION_ID}
- Session Timestamp: ${SESSION_TS}
- Write-back required at session end: Step 8B (learning), R7B (recall), or M6B (mock interview).
- Write ledger row first, then profile entry.
EOF
fi

exit 0
