# Lesson: Container - Docker's Linux Base Technology

- Docker's Linux base technology

- Docker networking

- What Docker really is, cp. "Container Security" by Liz Rice, chapter 4

  > Although they are called containers, it might be more accurate to use the term “containerized
  > processes.” A container is still a Linux process running on the host machine, but it has a
  > limited view of that host machine, and it has access to only a subtree of the filesystem and
  > perhaps to a limited set of resources restricted by cgroups. Because it’s really just a
  > process, it exists within the context of the host operating system, and it shares the host’s
  > kernel ...

## Background explanation (theory)

- Guided documentation walkthrough
  - "Container Security" by Liz Rice
    - chapter 4
  - "Docker networking"
    - "Docker Quick Start Guide" by Earl Waud
      - chapter 6

## Terms to know *and* use

- namespace
- cgroup
- Docker network
  - none
  - host-only
  - bridge
  - overlay
- endpoint
- load balancing

## Guided examples

```bash
sudo lsns
watch ps fa

# UTS namespace
sudo unshare --uts sh
hostname
hostname myhostname

# process IDs
sudo unshare --pid sh
sudo unshare --pid --fork sh

# chroot
mkdir myroot
sudo chroot myroot

cd myroot
curl -o alpine.tar.gz https://dl-cdn.alpinelinux.org/alpine/v3.13/releases/x86_64/alpine-minirootfs-3.13.0-x86_64.tar.gz
tar xvf alpine.tar.gz
cd ..
sudo chroot myroot sh

sudo unshare --pid --fork chroot myroot sh
mount -t proc proc proc
ps
mount
umount proc

# Docker networking
docker network ls
docker container inspect

```

## References and expected reading

- "Docker Quick Start Guide" by Earl Waud
  - digitally available at university library
    - cp. https://www.ub.ovgu.de/ub/en/Literature+Search/Notes+for+accessing+eRessources/Specific+notes+for+publisher+offers-p-2004.html

- "Container Security" by Liz Rice
  - digitally available at university library
    - cp. https://www.ub.ovgu.de/ub/en/Literature+Search/Notes+for+accessing+eRessources/Specific+notes+for+publisher+offers-p-2004.html

- https://alpinelinux.org/downloads/

## Practice - introduction to exercise