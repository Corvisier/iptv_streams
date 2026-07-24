#!/bin/bash

# Method 1

# Update the stream URL of all TVI channels

TOKEN=$(wget -qO- --timeout=15 --tries=2 https://services.iol.pt/matrix?userId)

# If the token comes back empty (endpoint down), keep the existing valid token
# instead of blanking it across all files.
if [ -z "$TOKEN" ]; then
  echo "Empty token from IOL endpoint — keeping existing tokens."
  exit 0
fi

sed -i "s#wmsAuthSign=[^&]*#wmsAuthSign=${TOKEN}#g" *.m3u8

exit 0