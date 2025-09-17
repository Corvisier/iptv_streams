#!/bin/bash

# Método 1

# TVI - Actualiza a URL da TVI

sed -i "/live_tvi\/live_tvi/ c https://video-auth6.iol.pt/live_tvi/live_tvi/playlist.m3u8?wmsAuthSign=$(wget https://services.iol.pt/matrix?userId= -o /dev/null -O -)/" iptv_streams.m3u

# CNN Portugal - Actualiza a URL da CNN Portugal

sed -i "/live_cnn/ c https://video-auth7.iol.pt/live_cnn/live_cnn/playlist.m3u8?wmsAuthSign=$(wget https://services.iol.pt/matrix?userId= -o /dev/null -O -)/" iptv_streams.m3u

# TVI Internacional - Actualiza a URL da TVI Internacional

sed -i "/live_tvi_internacional/ c https://video-auth6.iol.pt/live_tvi_internacional/live_tvi_internacional/playlist.m3u8?wmsAuthSign=$(wget https://services.iol.pt/matrix?userId= -o /dev/null -O -)/" iptv_streams.m3u

# Método 2

# TVI - Actualiza a URL da TVI

sed -i "s#wmsAuthSign=[^&]*#wmsAuthSign=$(wget -qO- https://services.iol.pt/matrix?userId -o /dev/null)#g" "TVI.m3u"

# TVI Internacional - Actualiza a URL da TVI Internacional

sed -i "s#wmsAuthSign=[^&]*#wmsAuthSign=$(wget -qO- https://services.iol.pt/matrix?userId -o /dev/null)#g" "TVI_Internacional.m3u"

# CNN Portugal - Actualiza a URL da CNN Portugal

sed -i "s#wmsAuthSign=[^&]*#wmsAuthSign=$(wget -qO- https://services.iol.pt/matrix?userId -o /dev/null)#g" "CNN_Portugal.m3u"

exit 0
