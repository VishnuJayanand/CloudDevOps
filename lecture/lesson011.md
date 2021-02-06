# Lesson: Setup Linux locally

Install an own *Ubuntu 18.04* (server) as basis for the *whole* lecture.

> Note: There is a difference between "Ubuntu 18.04 server" and
> "Ubuntu 18.04 desktop"

Install alternatives:

- (multi boot) on local hard drive
- on USB drive
- local virtual machine (VM) using e.g. KVM, VirtualBox ...
- Windows Subsystem for Windows (WSL) (has some limitations)
- local virtualization server, e.g. Proxmox or VMware
- cloud VM, e.g. at Digital Ocean, Linode, Vultr ...

## Background explanation (theory)

- Guided walkthrough
  - UNIX philosophy, basic guidelines, and fundamentals, cp.
    - "The Art of Unix Programming" by Eric Steven Raymond
      - http://www.catb.org/~esr/writings/taoup/html/
      - (as PDF) https://nakamotoinstitute.org/static/docs/taoup.pdf

  - practical examples reflecting the UNIX philosophy

    ```bash
    # write programs that do one thing and do it well
    ls
    man ls
    cat /etc/passwd
    sort /etc/passwd

    # write programs to handle text streams,
    # because that is an universal interface
    df -h
    ps
    sort < /etc/passwd
    sort < /etc/passwd > out.txt

    # write programs to work together
    ls /bin | sort
    ls /bin | wc
    ls /bin | grep .*u.* | sort
    ls /bin | grep .*u.* | wc

    # everything is a file
    touch myfile.txt
    mkdir myfolder
    ls -al
    ps
    ls /proc
    ```

- Linux is as an re-programmed UNIX clone
- (UNIX) standards Linux builds upon
  - POSIX.1-2017
    - https://pubs.opengroup.org/onlinepubs/9699919799/
  - Linux Standard Base (LSB)
    - https://refspecs.linuxfoundation.org/lsb.shtml

- Linux
  - https://www.kernel.org/doc/html/latest

## Terms to know *and* use

- virtual machine
- Linux
  - Ubuntu
  - (long term support) LTS
  - terminal
  - command line interface (CLI)

## Guided examples

- Start Ubuntu in WSL
  - https://wiki.ubuntu.com/WSL
  - try `uname -a`

## References and expected reading

- "The Art of Unix Programming" by Eric Steven Raymond
  - http://www.catb.org/~esr/writings/taoup/html/
  - (as PDF) https://nakamotoinstitute.org/static/docs/taoup.pdf

## Practice - introduction to exercise