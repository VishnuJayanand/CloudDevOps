# Lesson: Linux - TCP/IP networking stack

#### Recap I

Remember the "UNIX philosophy":

> write programs to work together

This also holds true for programs that run on distributed, networked computers.

#### Recap II

Everything one should (already) know about networking and protocols.

- client/server
- IP4, IP6
- TCP/IP stack and protocols
- DNS
- HTTP

## Background explanation (theory)

- Guided documentation walkthrough
  - "The TCP/IP Guide: A Comprehensive, Illustrated Internet Protocols Reference" by Charles M. Kozierok
    - chapters 1, 8, 13, 16-17, 42-43, 51-58, 70, 72, 79-84, 87-88

## Terms to know *and* use

- client/server
- port
- socket
- stateless
- localhost
- hosts file
- NFS
- ftp (sftp)
- DNS
- URL/URI
- Web, WWW
- Web server
- HTML
- HTTP
- HTTP header
- HTTP authentication
- HTTPS
- certificate

## Guided examples

```bash
# names and IP addresses
hostnamectl
hostname -I
ip addr show

cat /etc/hosts

# DNS (reverse) name resolution
host

# CLI tools
curl
```

## References and expected reading

- "The TCP/IP Guide: A Comprehensive, Illustrated Internet Protocols Reference" by Charles M. Kozierok
  - digitally available at university library
    - cp. https://www.ub.ovgu.de/ub/en/Literature+Search/Notes+for+accessing+eRessources/Specific+notes+for+publisher+offers-p-2004.html

- https://www.nginx.com/wp-content/uploads/2017/07/Complete-NGINX-Cookbook-2019.pdf

For most recent information towards NGINX refer to

- https://docs.nginx.com/nginx/

## Practice - introduction to exercise