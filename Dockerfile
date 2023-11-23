FROM scratch
ARG TARGETARCH
# Add rootfs
ADD alpine-minirootfs-3.18.4-$TARGETARCH.tar.gz /
# Install tftp-hpa
RUN apk --no-cache update \
&& apk upgrade \
&& apk add tftp-hpa \
&& mkdir -p /srv/tftpboot 

EXPOSE 69/udp

CMD ["in.tftpd","-L","-s","-a","0.0.0.0","-u","root","/srv/tftpboot"]

