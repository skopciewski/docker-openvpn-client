## Usage

```bash
    docker run -d --rm --name openvpn-client -v /my/client.conf:/mnt/openvpn/client.conf --net=host --cap-add=NET_ADMIN --device /dev/net/tun skopciewski/openvpn-client
```

## Entrypoint

Redirects all params to the `openvpn` command. Workdir is `/mnt/openvpn`.

### Default params

```bash
    --config client.conf
```

### Escape to

If you want to execute other command than `openvpn`, run docker container with `escto` as first param:

```bash
    docker run -d --rm --name openvpn-client -v /my/client.conf:/mnt/openvpn/client.conf --net=host --cap-add=NET_ADMIN --device /dev/net/tun skopciewski/openvpn-client escto sh
```

## Dependencies and requirements

* mount /mnt/openvpn with:
  * client.conf - openvpn client config file

