#!/bin/bash
# Double-click this file to start the game server.
# It serves the game on your home WiFi so the iPad can open it.

cd "$(dirname "$0")"

PORT=8000

# Find this Mac's WiFi IP address
IP=$(ipconfig getifaddr en0 2>/dev/null)
[ -z "$IP" ] && IP=$(ipconfig getifaddr en1 2>/dev/null)
[ -z "$IP" ] && IP="<your-computer-IP>"

echo ""
echo "==================================================="
echo "   ZOMBIE RAID 3D is running!"
echo "==================================================="
echo ""
echo "   On your son's iPad (same WiFi), open Safari and go to:"
echo ""
echo "        http://$IP:$PORT"
echo ""
echo "   Tip: in Safari tap Share -> 'Add to Home Screen'"
echo "        for a full-screen app icon."
echo ""
echo "   Leave this window open while he plays."
echo "   Close it (or press Control-C) to stop the server."
echo "==================================================="
echo ""

python3 -m http.server $PORT
