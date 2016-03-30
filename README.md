This image is meant to be used as an openvpn client.

The container looks for a *.conf file in /etc/openvpn, therefore such a file should be mounted as an external volume.
For example:

```
docker run --name openvpn-client -d --cap-add=NET_ADMIN --device /dev/net/tun -v /conf/dir/on/host:/ect/openvpn lgpasquale/openvpn-client
```

Other containers that need to use this openvpn connection can be run using the option `--net=container:openvpn-client`
```
docker run --name jessie -ti --net=container:openvpn-client debian:jessie bash
```
