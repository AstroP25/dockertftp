FROM alpine:3.18

RUN apk --no-cache update \
&& apk upgrade \
&& apk add tftp-hpa \
&& mkdir -p /srv/tftpboot 

EXPOSE 69/udp

CMD ["in.tftpd","-L","-s","-a","0.0.0.0","-u","root","/srv/tftpboot"]

