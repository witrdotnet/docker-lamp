# docker-lamp

Dockerized LAMP (Linux Apache Mysql Php)

# Build new image

You can build new LAMP image

```
docker build -t mylamp .
docker run --name lamp -t mylamp
```

# Pull already built image

You can pull your docker image from [docker hub (witrdotnet)](https://registry.hub.docker.com/u/witrdotnet/docker-lamp)

```
dokcer pull witrdotnet/docker-lamp
docker run --name lamp -t witrdotnet/docker-lamp
```

# browse apache welcome page

Look for container IP

```
dokcer inspect lamp | grep IPAddress
```

http://containerIP/

# mount your php site

Run your php site under docker-lamp

```
docker run --name lamp -t -v path/to/your/app/apphome:/var/www/html/apphome  witrdotnet/lamp
```
