source .environment
run_cmd "docker run \
          -p 80:80 \
          -p 443:443 \
          -v /var/run/docker.sock:/tmp/docker.sock \
          -v /var/docker/dnp/sites:/etc/nginx/sites-enabled"