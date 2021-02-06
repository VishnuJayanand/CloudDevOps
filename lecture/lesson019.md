# Lesson: Linux - bash and bash scripting

Remember the "UNIX philosophy":

> write programs to work together

Linux can be seen as a component playground. Primary components are the available commands.
Components may be fused together via a shell - thus generating new commands (and components),

- permissions
- processes
- packages and package manager
- regular expressions
  > Remember the "UNIX philosophy":  
  > "Avoid hand-hacking; write programs to write programs when you can."

- text processing
- bash scripting
- nano

## Background explanation (theory)

- Guided documentation walkthrough
  - "The Linux Command Line" by William E. Shotts, Jr.
    - chapters 9-10, 14, 19-20, 24-33
    - https://wiki.lib.sun.ac.za/images/c/ca/TLCL-13.07.pdf

## Terms to know *and* use

- multi-tasking
- multi-user
- bash/shell expansion
- bash/shell script
- subshell
- operating system process
- PID, process ID
- daemon
- running in background
- package manager
- package maintainer
- upstream (source code) provider
- repository
- (Linux) distribution
- regular expression
- shebang
- here document
- EOF, end of file
- shell function
- exit status
- debugging and tracing
- positional parameters

## Guided examples

```bash
# users and permissions
ls -al
id
passwd
sudo su
exit

# processes
ps
pstree
top
kill -9
sudo shutdown -h now

# package manager (aka "the component repository")
sudo apt update
sudo apt install

# regular expressions
ls /bin | grep grep

# text processing
#   ... see exercise

# bash script
#   '#!/bin/bash'
touch myscript
chmod +x myscript
./myscript
echo $?
set -x
```

## References and expected reading

- "The Linux Command Line" by William E. Shotts, Jr.
  - https://wiki.lib.sun.ac.za/images/c/ca/TLCL-13.07.pdf
- Bash manual
  - https://www.gnu.org/software/bash/manual/bash.html

> Notes:
>
> - For `nano` cp. https://www.nano-editor.org/dist/latest/nano.html
> - For interactive best practices and bug checking while developing shell scripts cp. https://www.shellcheck.net/

Optional reading
- "UNIX and LINUX System Administration Handbook" by Evi Nemeth, Garth Snyder, Trent R. Hein and Ben Whaley
  - https://web.nmsu.edu/~enanawa/toc_it/pdf/linux-system-admin-handbook.pdf

## Practice - introduction to exercise