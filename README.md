# SmartDNS on Docker

## Start Docker container

```
    docker build -t smartdns:latest https://github.com/Zimong/docker-smartdns

    docker run -d \
      --restart always \
      -p 53:53/udp \
      -v config-folder:/opt/smartdns/smartdns \
      --name=smartdns \
      smartdns:latest
```    
