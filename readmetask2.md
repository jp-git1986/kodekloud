
for i in 1 2 3; do
aws ec2 run-instances --image-id ami-0a313d6098716f372 --instance-type t2.micro --key-name kk --user-data file://bootstrap.txt
done


docker swarm init --advertise-addr 172.31.88.38


docker swarm join --token <token> 172.31.88.3:2377

===========================================================================================
Installed go pkg on both worker nodes as like below

wget https://go.dev/dl/go1.18.3.linux-amd64.tar.gz

tar -C /usr/local -xzf go1.18.3.linux-amd64.tar.gz

chown -R root:root /usr/local/go


export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOPATH/bin:/usr/local/go/bin

===============================================================================================
bane install

go install github.com/genuinetools/bane

root@ip-172-31-31-85:~# bane sample.toml 
Profile installed successfully you can now run the profile with
`docker run --security-opt="apparmor:docker-nginx-sample"`

===================================================================================
