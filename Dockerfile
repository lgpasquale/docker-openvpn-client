FROM debian:jessie

RUN apt-get update && apt-get -y install openvpn
RUN cp -pr /etc/openvpn /etc/openvpn-orig
ADD init.sh /init.sh
RUN chmod u+x /init.sh

CMD ["/init.sh"]
