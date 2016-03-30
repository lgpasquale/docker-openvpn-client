#!/bin/bash

cp -rp /etc/openvpn-orig/* /etc/openvpn
conf_file=$(find /etc/openvpn -type f -iname *.conf|head)
if [ "${conf_file}" = "" ]; then
    echo "No openvpn configuration file found in /etc/openvpn. A volume containing a configuration file should be mounted in this location"
    exit 1
fi

cd /etc/openvpn
openvpn --config ${conf_file}
