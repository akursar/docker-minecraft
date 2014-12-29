#!/bin/sh

cd /minecraft

cp -fr /var/lib/minecraft/* .

exec java -d64 -Xms2048M -Xmx2048M -jar minecraft_server.jar nogui
