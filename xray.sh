#!/bin/sh
if [ ! -f UUID ]; then
  UUID="edb5e496-61bf-476d-9631-3eb8fbf4d8b5"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

