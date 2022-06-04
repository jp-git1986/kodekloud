nohup dockerd &
sleep 30
service apparmor restart
apparmor_status
for i in 1 2; do docker run -d --privileged --security-opt="apparmor=docker-nginx-sample" -p 800$i:80 --name=apparmor-$i jayaprakashsaranya/kkimages:apparmnginxlatest;done;sleep infinity
