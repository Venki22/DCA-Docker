### Docker Restart policies:
By default, Docker containers will not start when they exit or when docker daemon is restarted.
Docker provides restart plolicies to control whether your containers start automatically when they exit, or when Docker restarts.

We can specify the restart policy by using the --restart flag with docker run command.

| Flag            | LastName      |   
| --------------- | ------------- | 
| `no`            | Do not automatically restart the container.(the default)         | 
| `on-failuer`    | Restart the container if it exits due to an error, which manifests as a non-zero exit code.         | 
| `unless-stopped`| Restart the container unless it is explicitly stopped or Docker itself is stopped or restarted.              |
| `always`        | Always restart the container if it stopes.   

### Commands:
``````
docker container run -d --restart on-failuer nginx
docker container run -d --unless-stopped nginx
docker container run -d --always nginx
``````

