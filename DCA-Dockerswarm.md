### Create a new docker service:
docker service create --name webserver --replicas 1 nginx

### Verify service status:
docker service ps webserver


### Scaling Up Operation:
docker service scale webserver=5

### Scaling Down Operation:
docker service scale webserver=1

### Verify Service Details:
docker service ps webserver

### Two Approaches:
docker service scale service01=1
docker service update --replicas 1 service02

### Scaling Multiple Services Together:
docker service scale service01=3 service02=3

### Global Service
docker service create --name antivirus --mode global -dt ubuntu
docker service ps antivirus

### Replicated Service
docker service create --name myreplica --replicas 1 nginx

### Change the Node Availability to Drain
docker node update --availability drain swarm03

### Verify Node status
docker node ls

### Change the Node Availability To Active
docker node update --availability active swarm03

### Inspecting a Service
docker service inspect demotroubleshoot
docker service inspect demotroubleshoot --pretty

### Inspecting a Node
docker node inspect swarm01 
docker node inspect swarm01 -pretty

### Create a Service by Publishing port
docker service create --name mywebserver --replicas 1 --publish 8080:80 nginx

### Verify Ports in Linux Server
netstat -ntlp

### Verify IP address
ifconfig eth0
Curl Request to IP on port 8080
curl 142.93.214.57:8080

### Create Service with Volume
docker service create --name myservice --mount type=volume,source=myvolume,target=/mypath nginx

### Verify the Host where service is created:
docker service ps myservice

### Connect to Container and Verify Mount
docker container exec -it [CONTAINER-ID] bash
ls -l /

### Verify Volume Information
docker volume ls

### Remove Service
docker service rm myservice

### Creating Service with Node Label Constraints
docker service create --name myconstraint --constraint node.labels.region==blr --replicas 3 nginx

### Add a Label to Node:
docker node update --label-add region=mumbai swarm03

### Running Nodes in Mumbai Region
docker service create --name myconstraint --constraint node.labels.region==mumbai --replicas 3 nginx

### Create Service with Custom Overlay Network:
docker service create --name myoverlay --network mynetwork --replicas 3 nginx

### Verify Networks:
docker network ls

### Find the IP of Container
docker container inspect [CONTAINER-NAME]

### Connect to Container and Install Ping
docker container exec -it [CONTAINER-NAME]
apt-get update && apt-get install iputils-ping
ping [IP]

### Forcing New Cluster
docker swarm init --force-new-cluster --advertise-addr 206.189.139.211:2377

### docker system commands
https://docs.docker.com/engine/reference/commandline/system_events/

