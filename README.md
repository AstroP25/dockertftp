# Docker TFTP
Simple TFTP server based off of Alpine Linux and TFTP-HPA.

## Running Container

```docker run -d --restart unless-stopped -p 69:69/udp -v $(pwd)/tftpboot:/srv/tftpboot --name tftp-srv tftp-hpa:latest```
