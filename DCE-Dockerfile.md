### Dockerfile
A Dockerfile must start with a FROM instruction

COPY takes in an src and destination. It only lets you copy in a local file or directory from your host

ADD lets you do that too, but it also supports 2 other sources.
 
First, you can use a URL instead of a local file/directory. 
Secondly, you can extract a tar file from the source directly into the destination

The EXPOSE instruction informs Docker that the container listens on the specified network ports at runtime.

The EXPOSE instruction does not actually publish the port. 

HEALTHCHECK instruction Docker allows us to tell the platform on how to test that our application is healthy.

Document - HealtCheck Document Resource
Documentation Referred:

https://docs.docker.com/engine/reference/builder/

https://docs.docker.com/engine/reference/run/#healthcheck

### Code Used:
```
docker run -dt --name tmp  --health-cmd "curl --fail http://localhost" --health-interval=5s busybox sh
 
docker run -dt --name tmp2 --health-cmd "curl -f http://localhost" --health-interval=5s --health-retries=1 busybox sh
 
curl  http://dexter.kplabs.in/test
 
curl -f http://dexter.kplabs.in/test214.txt
```

### Dockerfile:
```
FROM ubuntu
RUN apt-get update
RUN apt-get install -y nginx
COPY index.nginx-debian.html /var/www/html
CMD nginx -g 'daemon off;'

docker build .
docker build -t testimgage .
docker images
docker container run -d -p 8080:80 
``````