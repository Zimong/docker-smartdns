# SmartDNS on Docker

## Start Docker container

```
docker docker pull zimongmu/docker-overture:latest

docker run -d \
  --restart always \
  -p 53:53/udp \
  -v config-folder:/opt/smartdns/smartdns \
  --name=smartdns \
  zimongmu/docker-overture:latest
```    

TCP 可以按需映射，一般都是用 UDP，增加 TCP 使用 `-p 53:53/tcp`。

### 本项目使用 https://github.com/pymumu/smartdns 提供的程序制作。
