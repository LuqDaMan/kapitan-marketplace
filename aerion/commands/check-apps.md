---
description: Scan Gmail for job application updates and sync to Job Tracker sheet
argument-hint: [days] (default: 7)
allowed-tools: mcp__gmail__*, mcp__google-sheets__*
---

# Check Applications

Scan Gmail for job application status updates and sync them to the Job Tracker Google Sheet.

## Prerequisites

The Gmail MCP requires OAuth authentication via browser. If this is your first time, run `/check-apps` in an **interactive session** (not Cowork) to complete the OAuth flow. Once authenticated, subsequent sessions reuse the token.

If the Gmail or Google Sheets MCP tools are not available, stop immediately and tell the user: "MCP servers are not connected. Run this command in an interactive session first to complete OAuth."

## Steps

### 1. Determine Time Range

Use `$ARGUMENTS` as the number of days to look back. Default to 7 if not provided.

### 2. Search Gmail

Use the `mcp__gmail__*` search tool (e.g., `mcp__gmail__search_emails` or similar — check available tools) with this query:

```
to:lluqmannurhakim@gmail.com (subject:application OR subject:interview OR subject:offer OR subject:assessment OR subject:"online assessment" OR subject:"phone screen" OR subject:"coding challenge" OR subject:"not moving forward" OR subject:congratulations OR from:greenhouse.io OR from:lever.co OR from:ashbyhq.com OR from:myworkdayjobs.com OR from:icims.com OR from:smartrecruiters.com) newer_than:${days}d
```

### 3. Read Matched Emails

For each search result, use the `mcp__gmail__*` read/get tool to retrieve the full email content.

### 4. Read Current Sheet

Use `mcp__google-sheets__list_spreadsheets` to find "Job Tracker" in the hojicha folder, then `mcp__google-sheets__get_sheet_data` to read all current rows.

### 5. Classify and Match

Invoke the `job-tracker` skill knowledge to:
- Classify each email into a Stage
- Extract Company, Role, Date, and Note
- Match against existing sheet rows by Company + Role
- Apply stage progression rules (forward-only, except Rejected/Ghosted)

### 6. Present Summary

Show the user:
- **Updates** — existing rows with stage changes (old → new)
- **New applications** — rows to add (Stage = Applied)
- **Ambiguous** — emails that need user input

### 7. Confirm and Write

Ask the user to confirm. On confirmation:
- Use `mcp__google-sheets__update_cells` for existing row updates
- Use `mcp__google-sheets__add_rows` for new applications
- Do NOT write anything the user rejected or skipped
