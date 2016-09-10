## Usage

```bash
    docker run -d --rm --name openvpn-client -v /my/client.conf:/opt/openvpn/client.conf --net=host --cap-add=NET_ADMIN --device /dev/net/tun skopciewski/openvpn-client
```

## Entrypoint

Redirects all params to the `openvpn` command. Workdir is `/opt/openvpn`.

### Default params

```bash
    --config client.conf
```

### Escape to

If you want to execute other command than `openvpn`, run docker container with `escto` as first param:

```bash
    docker run -d --rm --name openvpn-client -v /my/client.conf:/opt/openvpn--net=host --cap-add=NET_ADMIN  --device /dev/net/tun skopciewski/openvpn-client escto sh
```

## Dependencies and requirements

* mount /opt/openvpn with:
  * client.conf - openvpn client config file

