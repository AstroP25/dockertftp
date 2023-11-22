# Docker TFTP
Simple TFTP server based off of Alpine Linux and TFTP-HPA.

## Building Container
```git clone  https://github.com/AstroP25/dockertftp.git```
```cd dockertftp```
```docker build -t tftp-hpa:latest .```

## Running Container

```docker run -d --restart unless-stopped -p 69:69/udp -v $(pwd)/tftpboot:/srv/tftpboot --name tftp-srv tftp-hpa:latest```
