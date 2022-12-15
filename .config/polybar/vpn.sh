#!/bin/sh
if [ "$(pgrep -x openconnect)" != "" ]; then
  echo "vpn"
else
  if [ "$(pgrep -x openvpn)" != "" ]; then
    echo "vpn"
  else
    echo ""
  fi
fi
