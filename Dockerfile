FROM alpine:3.8

RUN apk add --no-cache openvpn bash
COPY data/entrypoint /entrypoint
RUN chmod 755 /entrypoint

ENV OPENVPN_HOME /mnt/openvpn
WORKDIR ${OPENVPN_HOME}

ENTRYPOINT ["/entrypoint"]
CMD ["--config", "client.conf"]
