Dockerfile for Tiarra
=====================

## About

Dockerfile for [Tiarra](http://www.clovery.jp/tiarra/)

Tiarras is most famous IRC Proxy software.

## SYNOPSIS

```
mkdir -p $HOME/tiarra/conf
vi $HOME/tiarra/conf/your.conf
docker run -d --name tiarra -v $HOME/tiarra:/data:rw -p 6667:6667 nekoruri/tiarra:0.1 your.conf
```

## TODO

- SSL Support
