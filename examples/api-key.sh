#!/usr/bin/env sh
# Raw MCP calls with an API key (Keyio → Settings → Developer). The server is stateless:
# each request stands alone, no session id is needed.
set -e
: "${KEYIO_API_KEY:?set KEYIO_API_KEY=kk_live_...}"
URL=https://gokeyio.com/api/mcp
H='-H Content-Type:application/json -H Accept:application/json,text/event-stream'

curl -s $H -H "Authorization: Bearer $KEYIO_API_KEY" "$URL" -d '{
  "jsonrpc": "2.0", "id": 1, "method": "initialize",
  "params": { "protocolVersion": "2025-06-18", "capabilities": {}, "clientInfo": { "name": "example", "version": "1.0.0" } }
}'
echo
curl -s $H -H "Authorization: Bearer $KEYIO_API_KEY" "$URL" -d '{ "jsonrpc": "2.0", "id": 2, "method": "tools/list" }' | head -c 2000
echo
curl -s $H -H "Authorization: Bearer $KEYIO_API_KEY" "$URL" -d '{
  "jsonrpc": "2.0", "id": 3, "method": "tools/call",
  "params": { "name": "list_properties", "arguments": {} }
}'
echo
