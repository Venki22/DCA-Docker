### Deploy Stack
docker stack deploy --compose-file docker-compose.yml mydemo

### Remove Stack
docker stack rm mydemo

### Setting up Autolock
docker swarm update --autolock=true
systemctl restart docker
docker node ls
docker swarm unlock
To Retrieve Key after swam is unlocked

docker swarm unlock-key

### To rotate the key
docker swarm unlock-key --rotate