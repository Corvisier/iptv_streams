#!/bin/bash

cd /home/runner/work/iptv_streams/iptv_streams/iptv-org-epg && npm install

# IPTVSTREAMS EPG

npm run grab --- --channels=../EPG/iptv_streams.channels.xml --output=../EPG/epg-iptv-streams.xml --days=7 --maxConnections=20

# RTP EPG

npm run grab --- --sites=rtp.pt --output=../EPG/epg-rtp-pt.xml --days=7 --maxConnections=20

# SIC EPG

npm run grab --- --sites=opto.sic.pt --output=../EPG/epg-sic-pt.xml --days=7 --maxConnections=20

# TVI EPG

npm run grab --- --sites=tvi.iol.pt --output=../EPG/epg-tvi-pt.xml --days=7 --maxConnections=20

# SportTV EPG

npm run grab --- --sites=sporttv.pt --output=../EPG/epg-sporttv-pt.xml --days=7 --maxConnections=20

# Vodafone PT EPG

npm run grab --- --sites=vodafone.pt --output=../EPG/epg-vodafone-pt.xml --days=7 --maxConnections=20

# Nos EPG

npm run grab --- --sites=nostv.pt --output=../EPG/epg-nos-pt.xml --days=7 --maxConnections=20

# Meo EPG

npm run grab --- --sites=meo.pt --output=../EPG/epg-meo-pt.xml --days=7 --maxConnections=20

# Mi.tv EPG

npm run grab --- --channels=sites/mi.tv/mi.tv_br.channels.xml --output=../EPG/epg-mitv-br.xml --days=7 --maxConnections=20

# Vivo Play EPG

npm run grab --- --sites=vivoplay.com.br --output=../EPG/epg-vivoplay-br.xml --days=7 --maxConnections=20

# Sky IT EPG

npm run grab --- --sites=guidatv.sky.it --output=../EPG/epg-sky-it.xml --days=7 --maxConnections=20

# Sky UK EPG

npm run grab --- --sites=sky.com --output=../EPG/epg-sky-uk.xml --days=7 --maxConnections=20

# Freeview Play EPG

npm run grab --- --sites=freeview.co.uk --output=../EPG/epg-freeview-uk.xml --days=7 --maxConnections=20

# Sky DE EPG

npm run grab --- --sites=sky.de --output=../EPG/epg-sky-de.xml --days=7 --maxConnections=20

# Rytec EPG

cd ../EPG && wget -O epg-rytec-pt.xml.xz "http://www.xmltvepg.nl/rytecPT.xz"

# Compress EPG xml files

xz -k -f -9 epg*.xml && gzip -k -f -9 epg-iptv-streams.xml

# Remove EPG xml files

rm epg*.xml

exit 0
