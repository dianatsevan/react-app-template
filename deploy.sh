# define docker image
DOCKER_IMAGE=image-docker.jfrog.io/react-app-template

docker stop $(
  docker ps -a -q --filter ancestor=$DOCKER_IMAGE --format="{{.ID}}"
)
docker pull $DOCKER_IMAGE
docker run -d -p 80:80 $DOCKER_IMAGE
docker system prune -af
