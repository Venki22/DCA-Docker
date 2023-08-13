### Documentation:
``````
https://docs.docker.com/engine/install/ubuntu/

### Commands used for docker installation:

apt-get update
 
 
apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
 
 
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
 
 
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
 
 
apt-get update
apt-get install docker-ce docker-ce-cli containerd.io
 
systemctl status docker
docker info
``````
### Product Page for Docker Desktop:
``````
https://www.docker.com/products/docker-desktop
``````

### Install docker using sript:
Please make sure that you make use of the same OS that we have used during videos (CentOS 7). If you are making use of some different OS, then the steps would be a little different.

Step 1: Open a text file named docker-install.sh via the vi editor

vi docker-install.sh

Step 2: Paste the following script within the text file and save it

#!/bin/bash
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum -y install docker-ce
systemctl start docker
systemctl enable docker
Step 3: Make the script executable:

chmod +x docker-install.sh

Step 4: Run the script:

./docker-install.sh