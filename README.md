# docker-lamp

[![](https://imagelayers.io/badge/witrdotnet/docker-lamp:latest.svg)](https://imagelayers.io/?images=witrdotnet/docker-lamp:latest 'Get your own badge on imagelayers.io')

Dockerized LAMP (Linux Apache Mysql Php)

[Checkout Dockerfile from github](https://github.com/witrdotnet/docker-lamp)

# Build new image

You can build new LAMP image

```
docker build -t mylamp .
docker run --name lamp -t mylamp
```

# Pull already built image

You can pull your docker image from [docker hub (witrdotnet)](https://registry.hub.docker.com/u/witrdotnet/docker-lamp)

```
docker pull witrdotnet/docker-lamp
docker run --name lamp -t witrdotnet/docker-lamp
```

# browse apache welcome page

Look for container IP

```
docker inspect lamp | grep IPAddress
```

http://containerIP/

# mount your php site

Run your php site under docker-lamp

```
docker run --name lamp -t -v path/to/your/app/apphome:/var/www/html/apphome  witrdotnet/lamp
```
