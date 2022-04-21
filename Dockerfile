FROM debian:11
ARG http_proxy
ARG https_proxy
ARG all_proxy
RUN apt-get update && \
      apt-get install -y nsis p7zip-full wget curl && \
      wget -O /tmp/nsis7z.7z https://nsis.sourceforge.io/mediawiki/images/6/69/Nsis7z_19.00.7z && \
      7z x /tmp/nsis7z.7z -o/usr/share/nsis/ && \
      wget -O /tmp/nsjson.zip https://nsis.sourceforge.io/mediawiki/images/f/f0/NsJSON.zip && \
      7z x /tmp/nsjson.zip -o/usr/share/nsis && \
      rm -rf /var/lib/apt/lists/*

