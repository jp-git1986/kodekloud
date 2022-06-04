nohup dockerd &
sleep 30
for i in 1 2; do docker run -d  --privileged --security-opt="apparmor=docker-nginx-sample" -p 800$i:80 --name=apparmor-$i jayaprakashsaranya/kkimages:apparmnginx sh -c 'sleep infinity';docker exec apparmor-$i sh -c 'service apparmor restart;apparmor_status';service apparmor restart;apparmor_status;done;sleep infinity
