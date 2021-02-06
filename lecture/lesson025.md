# Lesson: Linux - networking

Remember the "UNIX philosophy":

> write programs to work together

This also holds true for programs that run on distributed, networked computers.

- ssh
- Linux networking tools

## Background explanation (theory)

- Guided documentation walkthrough
  - "Linux Networking 101" by David M. Davis
    - chapter 3 and chapter 4
  - "How Linux Works: What Every Superuser Should Know" by Brian Ward
    - chapter 10.3 (SSH)

## Terms to know *and* use

- ssh (telnet)
- OpenSSH server
- localhost
- hosts file
- Web server

## Guided examples

```bash
# about the local network
ip link
ip addr
hostnamectl
hostname -I

# testing the network
ping
ip neighbor show
ip route show
ss -tr4 (netstat)

cat /etc/hosts
cat /etc/services

# DNS (reverse) name resolution
host
dig
nslookup
cat /etc/resolv.conf

# processes that use ports
lsof -i

# CLI-based server communication
curl --head https://www.google.com
curl -v --head https://www.google.com

```

## References and expected reading

- "Linux Networking 101" by David M. Davis
  - chapter 3 and chapter 4
  - https://cumulusnetworks.com/learn/resources/linux-101/linux-networking-101
- "How Linux Works: What Every Superuser Should Know" by Brian Ward
  - chapter 10.3
  - digitally available at university library
    - cp. https://www.ub.ovgu.de/ub/en/Literature+Search/Notes+for+accessing+eRessources/Specific+notes+for+publisher+offers-p-2004.html
- "NGINX Cookbook" by Derek De Jonghe
  - chapter 1
  - https://www.nginx.com/wp-content/uploads/2017/07/Complete-NGINX-Cookbook-2019.pdf

For most recent information towards NGINX refer to

- https://docs.nginx.com/nginx/

## Practice - introduction to exercise