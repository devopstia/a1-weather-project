# Clean Up

```
To stop and delete all containers
docker rm -f $(docker ps -aq)
Delete all images
docker rmi -f $(docker images -aq)
```