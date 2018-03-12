docker stop nginx-proxy
docker rm nginx-proxy
docker run -p 80:80 -p 443:443 --name nginx-proxy --net nginx-proxy --network="nginx-proxy" -v /var/run/docker.sock:/tmp/docker.sock:ro jwilder/nginx-proxy
pause