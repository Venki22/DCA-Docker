### Documentation Referred:
https://docs.docker.com/compose/install/

### Commands used for Installing Docker Compose in Linux:
curl -L "https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

### Start Docker Compose
docker-compose up -d

### Bring Down application started via Docker Compose
docker-compose down