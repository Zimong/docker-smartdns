FROM alpine:latest
ENV TZ=Asia/Shanghai
RUN set -xe && \
    wget --no-check-certificate "https://github.com/pymumu/smartdns/releases/download/Release33/smartdns.1.2020.09.08-2235.x86_64-linux-all.tar.gz" && \
    tar zxvf smartdns.*.tar.gz && \
    mkdir -p /opt/smartdns && \
    mv ./smartdns/etc/smartdns ./smartdns/usr/sbin /opt/smartdns/ && \
    rm -rf smartdns*
VOLUME ["/opt/smartdns/smartdns"]
ENTRYPOINT ["/opt/smartdns/sbin/smartdns"]
CMD ["-f", "-c", "/opt/smartdns/smartdns.conf"]

