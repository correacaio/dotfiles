#!/bin/sh
if [ "$(pgrep -x openvpn)" != "" ]; then
  echo "vpn"
else
  echo ""
fi
