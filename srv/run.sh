source .environment
DID=$(docker ps -a | grep 'forego' | awk '{print $1}')
if [ -n "$DID" ]; then docker stop $DID && docker rm $DID; fi
run_cmd "docker run \
          -p 80:80 \
          -p 443:443 \
          -v /var/run/docker.sock:/tmp/docker.sock \
          -v /var/docker/dnp/sites:/etc/nginx/sites-enabled \
          -v /var/docker/dnp/certs:/etc/nginx/ssl \
          $APPLICATION_NAME"
