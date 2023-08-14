### Docker Enterprise Trial Link
https://hub.docker.com/editions/enterprise/docker-ee-trial/trial

### Important Note
Sometimes it takes around 30-60 minutes for the link to be activated. When you try opening that link in the browser and if you see contents like amazonlinux, centos and others in the list, that means the link has been activated. If you are seeing a blank page or 403 forbidden, that means that it is still in the activating stage.

### Steps to Install Docker EE
Note: Due to some changes at the docker level, we have added one more step (step 2) as part of the installation process document.

export DOCKERURL="INSERT-YOUR-URL-HERE"
echo "7" > /etc/yum/vars/dockerosversion
sudo -E sh -c 'echo "$DOCKERURL/centos" > /etc/yum/vars/dockerurl'
yum-config-manager --add-repo $(cat /etc/yum/vars/dockerurl)/docker-ee.repo;
yum -y install docker-ee docker-ee-cli containerd.io
systemctl start docker

## Installing Docker UCP
https://docs.docker.com.zh.xy2401.com/v17.09/engine/installation/

docker container run --rm -it --name ucp -v /var/run/docker.sock:/var/run/docker.sock docker/ucp:3.1.4 install --host-address 139.59.82.72 --force-minimums

### Document - Installation of Docker DTR
docker run -it --rm docker/dtr install --ucp-node node01 --ucp-username admin --ucp-url https://159.89.168.70 --ucp-insecure-tls


### Document - Un-Installing DTR
#### Installing DTR:
docker run -it --rm docker/dtr install --ucp-node node01 --ucp-username admin --ucp-url https://159.89.168.70 --ucp-insecure-tls

### Uninstalling DTR:
docker run -it --rm docker/dtr:2.6.3 destroy --ucp-insecure-tls

### Blog to remove DTR entry from UCP:
https://success.docker.com/article/extra-dtr-listed-in-ucp-31x-requiring-removal

### TLS Output:
INFO[0006] Generated TLS certificate. dnsNames="[*.com *.*.com example.com *.dtr *.*.dtr]" domains="[*.com *.*.com 172.17.0.1 example.com *.dtr *.*.dtr]" ipAddresses="[172.17.0.1]"

### Document - Configuring Trusted CA and Pushing Images to DTR
wget https://159.65.151.132/ca --no-check-certificate
cp ca /etc/pki/ca-trust/source/anchors/example.com.crt
update-ca-trust
systemctl restart docker
docker tag busybox:latest example.com/admin/webserver:v1
docker push exam
docker push example.com/admin/webserver:v1

### Document - DTR Backup Command
docker run --log-driver none -i --rm docker/dtr backup --ucp-url https://172.31.40.237 -ucp-insecure-tls --ucp-username admin --ucp-password YOUR-PASSWORD-HERE > backup.tar

### Implementing Swarm Routing Mesh
docker service create --name webserver --publish published=8080,target=80 --replicas 1 nginx
docker service ps webserver
netstat -ntlp

### Documentation Referred
https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region

#### Configurations used in video:
Regional Endpoint = https://s3.us-east-1.amazonaws.com
AWS Region = us-east-1

### Document - Configuring DTR HA
### Join the DTR Replica
docker run -it --rm docker/dtr join --ucp-insecure-tls

### Connect to Endpoints:
curl -k https://142.93.213.134/_ping
curl -ksl -u admin:88DBJTWmxMCL6J9KpfgpGBq5UvsMfxL1 https://142.93.213.134/api/v0/meta/cluster_status

- [DCA-Notes ](https://docs.google.com/document/d/1La9THWSlX2AW7LCbAUzLQqP3bOPuoK-xBWzdEeniXgY/edit?usp=sharing)

