FROM debian:bookworm-slim

RUN apt update && apt install -y \
    apt-transport-https gpg wget && \
    wget -qO- https://deb.torproject.org/torproject.org/A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89.asc | gpg --dearmor | tee /usr/share/keyrings/tor-archive-keyring.gpg >/dev/null && \
    rm -rf /var/lib/apt/lists/*

COPY tor.list /etc/apt/sources.list.d/tor.list

RUN apt update && \
    apt install -y tor deb.torproject.org-keyring && \
    rm -rf /var/lib/apt/lists/*

CMD [ "tor", "-f", "/etc/tor/torrc" ]