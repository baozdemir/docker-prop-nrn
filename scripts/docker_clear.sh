docker rm -f $(docker ps -aq)

docker rmi -f $(docker images -aq)

docker volume rm $(docker volume ls -q)

docker network rm $(docker network ls | tail -n+2 | awk '{if($2 !~ /bridge|none|host/){ print $1 }}')