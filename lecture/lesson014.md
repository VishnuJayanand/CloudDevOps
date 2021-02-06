# Lesson: Linux - basic commands

Remember the "UNIX philosophy":

> write programs to work together

Compiled for Linux ("the kernel") there are additional programs that may be fused together via a shell.

- Linux commands:
  - shell commands
  - additional commands
- shell, terminal, ssh client

## Background explanation (theory)

- Operating systems
  - UNIX-kind systems
    - kernel, applications, shell
- Guided documentation walkthrough
  - Linux CLI fundamentals
    - "The Linux Command Line" by William E. Shotts, Jr.
      - https://wiki.lib.sun.ac.za/images/c/ca/TLCL-13.07.pdf

## Terms to know *and* use

- terminal, ssh client
- command line interface (CLI)
- shell
- bash

## Guided examples

Basic commands:

```bash
# terminal session and kinds of users
sudo su
exit
date
df -h

# navigating the directory tree
pwd
cd
ls -al

# special files and the directory tree
less /var/log/syslog
less /var/log/dmesg
```

Special files and folders

> - /dev/null
> - /dev/zero
> - /proc
> - /sys

```bash
# manipulating files and directories
touch
rm
mv
cp
mkdir
rmdir

# status information and help
whoami
hostname -I
type
which python
help
man
info
man -k
apropos

# I/O redirection
cat /dev/null > myfile.txt
cat > myfile.txt
grep
tail -f /var/log/syslog
```

Basic CLI key bindings

> - \<ctrl>c
> - \<ctrl>d
> - \<ctrl>z
> - \<tab>

```bash
# shell expansion
echo abc
echo *
echo "*"
```

## References and expected reading

- "The Linux Command Line" by William E. Shotts, Jr.
  - https://wiki.lib.sun.ac.za/images/c/ca/TLCL-13.07.pdf

- Filesystem Hierarchy Standard
  - https://refspecs.linuxfoundation.org/fhs.shtml

- test your knowledge
  - https://linuxjourney.com/
    - "Grasshopper: Command Line"
      - Quiz
    - "Grasshopper: Text-Fu"
      - Quiz

## Practice - introduction to exercise