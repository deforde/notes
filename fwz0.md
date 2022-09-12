# docker

To clean docker system:
```
docker images | awk '/^[^REPOSITORY]/ {print $3}' | xargs docker rmi -f
docker volume prune
docker system prune
```

#docker #containers #images #virtual-machines

