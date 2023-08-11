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

[Reference document](https://docs.google.com/document/d/1LsQyB_9DlKkA2CfFgF0zkRclfO9lZT9ZoIHcANWzvxQ/edit)

https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax#links


