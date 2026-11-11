#!/usr/bin/env sh
# Add Keyio to Claude Code, then run /mcp inside Claude Code to sign in with OAuth.
claude mcp add --transport http keyio https://gokeyio.com/api/mcp

# Or, with an API key from Keyio → Settings → Developer (choose read-only unless it should make changes):
# claude mcp add --transport http keyio https://gokeyio.com/api/mcp --header "Authorization: Bearer $KEYIO_API_KEY"
