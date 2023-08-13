
### Child commands for Docker image
- docker image build
- docker image pull
- docker image inspect
- docker image history
- docker image load
- docker image save
- docker image ls
- docker image push
- docker image rm
- docker image tag
- docker image prune
- docker image import

### Docker image
Docker Image is file which contains all the neccessary dependency and configurations which are required to run an applicaton.

### Docker container
Docker containers is basically a running instance an image.

### Port Binding
By default Docker containers can make connections to the outside world,but the outside world cannot connect to containers.

If we want to containers to accept incomming connnection from the world, you will have to bind it to a host port.

### Commands:
```
docker images
docker run --name nginx-con -d -p 8080:80 nginx
docker ps
docker ps -a
docekr ps --all
docker container ls
docker container stop container-id
docker container stop $(docker container ls -aq)
docker container start $(docker container ls -aq)
docker container start container-id
docker container rm container-id
docker container rm $(docker container ls -aq)
docker container stop container-name
docker container start continer-name
docker contaiener exec -it container-name bash
docker container exec -it container-name sh
docker container exec -i container-name bash
docker container exec -t container-name bash
docker container exec conatiner-name ls -ltr
docker inspect container-id
docker inspect image-id
````
### Removing docker container images:
```
docker container stop container-name
docker container rm container-name
```
### Disk Usage Metrics for Docker
```
docker system df
```
### Component level disk usage
```
docker system df -v
```

### Automatically delete container on Exit
``````
docker container run -d --rm --name test-container nginx ping -c10 google.com
docker logs test-container
docker container ps|grep test-container
``````
Tagging Docker Images:
```
Existing docker image adding new tag
docker tag nginx:v1 nginx1:v2
Tag name will be same
docker images
docker build -t busybox:v1 .
docker  images

docker build .
docker images
docker tag image-id tagkey:tagvalue
docker tag image-id nginx1:v2
```

Docker commit
```

```
Layers of Docker images:
```
docker history image-id
```
--format:
```
docker image inspect nginx --format='{{.Id}}'
docker image inspect nginx --format='{{.ContainerConfig.Hostname}}'
```

### Pruning Docker images:
docker image prune

## This will remove all images without at least one container associated to them
docker image prune -a


**Reference document:**
- [DCA-Notes-1](https://docs.google.com/document/d/1LsQyB_9DlKkA2CfFgF0zkRclfO9lZT9ZoIHcANWzvxQ/edit)

- [DCA-Notes-2](https://docs.google.com/document/d/1n60n6MymydOjdXboqX1RCP-xklkjiJ-ClS2fjJTwsCY/edit#heading=h.zbd2vonu6n3)

- [DCA-Notes-3](https://docs.google.com/document/d/1eio9rL0doJGAwgrw-45V4qv5rfxIsFsE1rlD2aJxpuw/edit)

https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax#links




https://questglobal.udemy.com/course/docker-certified-associate/learn/lecture/13507452#overview

