source .environment
DID=$(docker ps -a | grep $APPLICATION_NAME | awk '{print $1}')
run_cmd "docker run \
          -p 80:80 \
          -p 443:443 \
          -v /var/run/docker.sock:/tmp/docker.sock \
          -v /var/docker/dnp/sites:/etc/nginx/sites-enabled \
          -v /var/docker:/etc/nginx/ssl \
          $APPLICATION_NAME"
