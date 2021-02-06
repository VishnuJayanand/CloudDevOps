# Lesson: Linux - secure networking

> Without entropy no randomness, without randomness no security!

- ssh
- keys
- certificates
- openSSH
- openSSL

## Background explanation (theory)

- Guided documentation walkthrough
  - "UNIX and Linux System Administration Handbook", 5th Edition, by Evi Nemeth, Garth Snyder, Trent R. Hein, Ben Whaley, Dan Mackin
    - chapter 27.6, 27.7

## Terms to know *and* use

- private key
- public key
- ssh
- openSSH
- certificate
- sshd
- HTTPS
- SSL
- TLS
- entropy
- random number generator

## Guided examples

```bash
# random numbers and entropy
od -x /dev/urandom
od -x /dev/random

# generate a private key for a domain name CSR
openssl genrsa -out mydomain.org.key 2048
cat mydomain.org.key

# create the CSR
openssl req -new -sha256 -key mydomain.org.key -out mydomain.org.csr
cat mydomain.org.csr

# create a user key pair
ssh-keygen -t ecdsa -b 384 -f $(pwd)/mykey
ls -al
cat mykey

# key handling, list keys in keyring
ssh-add -l
```

## References and expected reading

- "UNIX and Linux System Administration Handbook", 5th Edition, by Evi Nemeth, Garth Snyder, Trent R. Hein, Ben Whaley, Dan Mackin
  - digitally available at university library
    - cp. https://www.ub.ovgu.de/ub/en/Literature+Search/Notes+for+accessing+eRessources/Specific+notes+for+publisher+offers-p-2004.html

- "Mastering Linux Security and Hardening", Second Edition, by Donald A. Tevault
  - digitally available at university library
    - cp. https://www.ub.ovgu.de/ub/en/Literature+Search/Notes+for+accessing+eRessources/Specific+notes+for+publisher+offers-p-2004.html

For a more detailed description of `sshd` and `ssh` cp.

- https://www.openssh.com/manual.html

as well as the `man` pages that comes together with the respective `sshd`, `ssh` installation.

For a more detailed description of the underlying TLS/SSL cp.

- https://www.openssl.org/docs/

## Practice - introduction to exercise