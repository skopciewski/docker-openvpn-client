FROM gliderlabs/alpine:3.4

RUN apk-install openvpn bash
COPY data/entrypoint /entrypoint
RUN chmod 755 /entrypoint

ENV OPENVPN_HOME /mnt/openvpn
VOLUME [${OPENVPN_HOME}]
WORKDIR ${OPENVPN_HOME}

ENTRYPOINT ["/entrypoint"]
CMD ["--config", "client.conf"]
