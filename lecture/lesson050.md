# Lesson: Container - basic containerization (Docker)

Lightweight virtualization technology

- Docker, cp. https://docs.docker.com/get-started/overview/

  > Docker is an open platform for developing, shipping, and running applications.
  > Docker enables you to separate your applications from your infrastructure so
  > you can deliver software quickly.

## Background explanation (theory)

- Guided documentation walkthrough
  - "Docker overview"
    - https://docs.docker.com/get-started/overview/
  - "Docker Quick Start Guide" by Earl Waud
    - chapter 2, 3, 4
  
## Terms to know *and* use

- container
- virtual machine
- Docker
- image
- registry
- Docker Hub
- official image
- Dockerfile
- isolation
- volume
- dockerd

## Guided examples

Common commands

```bash
docker --version
docker version
docker help

docker container run --name test --rm -it ubuntu:18.04 /bin/bash
docker container ls --all
docker container ls --all --quiet

docker container rm --force $(docker container ls --all --quiet)

docker container logs --follow --timestamps
docker container logs --tail 5

docker container top

docker container ps

docker container inspect

docker container inspect --format '{{json .State}}' | jq
docker inspect --format='{{range .NetworkSettings.Networks}}{{println .IPAddress}}{{end}}'

# Notes:
# - the format option uses Go templates (from the Go programming language),
#   cp. https://docs.docker.com/config/formatting/
# - jq is a command line JSON parser

docker container run --detach
# use <ctrl> <p> <q> to detach container when in interactive mode
docker container attach

# play around
docker container run --name test --rm -it ubuntu:18.04 /bin/bash
sleep 300 &
ps
# use <ctrl> <p> <q> to detach container
docker container ps
docker container top test
docker container attach test
exit

docker container exec test sleep 300

docker container commit
```

Dockerfile

```Dockerfile
FROM ubuntu
RUN useradd --create-home -m -s /bin/bash dev
RUN echo 'PS1="\[$(tput bold)$(tput setaf 4)\]my-app $(echo -e "\xF0\x9F\x90\xB3") \[$(tput sgr0)\] [\\u@\\h]:\\W \\$ "' >> /home/dev/.bashrc && \
    echo 'alias ls="ls --color=auto"' >> /home/dev/.bashrc
USER dev
CMD ["/bin/bash"]
```

Test the Dockerfile

```bash
docker image build --tag mydemo .
docker container run --name test --rm -it mydemo

# change/initially set root password
docker container exec -itu root test passwd
```

## References and expected reading

- https://docs.docker.com

- "Docker Quick Start Guide" by Earl Waud
  - digitally available at university library
    - cp. https://www.ub.ovgu.de/ub/en/Literature+Search/Notes+for+accessing+eRessources/Specific+notes+for+publisher+offers-p-2004.html

## Practice - introduction to exercise