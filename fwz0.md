# docker

To clean docker system:
```
docker images | awk '/^[^REPOSITORY]/ {print $3}' | xargs docker rmi -f
docker volume prune
docker system prune
```

To create user with passwordless sudo:
```
RUN adduser --disabled-password --uid 1000 --gecos "" mruser && \
  usermod -aG sudo mruser && \
  sed -i 's/^%sudo.*/%sudo   ALL=(ALL:ALL) NOPASSWD: ALL/g' /etc/sudoers
```

#docker #containers #images #virtual-machines

