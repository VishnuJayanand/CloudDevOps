# VLBA Cloud DevOps Techniques

## Introduction and Mission

- Understand *cloud native computing*
  - cp. https://en.wikipedia.org/wiki/Cloud_native_computing
- Understand and use selected related technologies, architectures, and workflows
  - for an overview on related technologies cp. https://landscape.cncf.io/
- Understand and know to use techniques like a participant in a distributed international project
  - overall organization: project repo managed according to the **feature branch pattern**
    - weekly feature branch
    - forbidden to change master branch
    - **mandatory** pull request **after** successful test
    - automatic merge, new feature branch thereafter
  - consider homeworks as sprints
  - lecture and consultation/exercise encompass SCRUM meeting

## Lessons and Exercises/Labs (Outline)

> 'E' stands for exercise, the leading numbers for the respective lesson.

- 000: Mission/Introduction
- 000: vision, e.g. scalable, software-defined, -deployed, micro-service
       architecture
- 000: Setup a Gitea account and the personal project
- 000: Working with git, pull, push, checkout, commit, features and features
       branches, pull request, overall workflow, examples
  - E010: git, upload (student-specific) file to feature branch
- 000: Setup a local Linux VM and how to work with WSL, install alternatives
       (own Ubuntu, WSL, Digital Ocean/Linode/Vultr VM, VirtualBox)
- 000: YAML and YAML linting
- 000: bash and bash scripting (part 1), Linux, basic commands (cd, cat, nano,
       echo, ps)
  - E015: YAML file with detailed install logs for: OS, VM,
          Ubuntu, git, Bash
- 000: bash and bash scripting (part 2), basic scripting, io-redirection, set,
       bash debugging, return codes, bash variables, tools(grep, cut, tr, sed, awk, tee)
  - E022: bash script, (student-specifically) filter/process (student-specific)
          input text file
- 000: Networking (part 1), IP 4, Ports, tools (ip, ping, route, ssh)
  - E031: bash script, install Nginx
- 000: Networking (part 2), DNS, HTTP, tools (curl, dig)
  - E035: bash script, setup (student-specific) sub-domains for Nginx
- 000: Python (part 1), basic Python, tools (python, pip, Spyder, VScode)
  - E041: Python program, print (student-specific) text to stdout
  - E043: Python program, (student-specifically) filter/process (student-specific)
          input text file
- 000: Python (part 2), string processing, Python packages (paramiko, fabric,
       invoke), tools (virtual environments)
- 000: Networking (part 3), HTTPS, tools (ssh, keys, certificates, openSSL)
  - E049: Python program, setup public-key-based, secure ssh access via ssh
          on remote machine
- 000: Container (part 1), introduction, Dockerfile, single container, volumes,
       techniques (Docker)
  - E052: Docker, Dockerfile, Ubuntu 18.04, minimal, Nginx, Web site from
          feature branch
  - E054: Docker, Dockerfile for Ubuntu 18.04, minimal, pre-seeded, secured
          public key root access, running openSSH, running Nginx
- 000: Container (part 2), networking, connected containers,
       techniques (Docker)
- 000: Networking (part 4), reverse proxy, load balancer, tools (Nginx, Traefik)

- 000: APIs (part 1), introduction, techniques (http header, json)
- 000: APIs (part 2), techniques (REST)
  - E070: bash script, (student-specific) API calls
          to remote machine

## Organization

### Privacy

Do not record the lecture.

### Credit Points and Examination

- Lecture, 6 CP, English, part of (German and English) master programs
- Lecture/Consultation on Thursday/Tuesday

- Review organization/examination: multiple homeworks (no written exam)
  > ("Prüfungsform: mehrere Hausarbeiten")

### Personnel Repository (repo) and Login

- Git Server URL
- https://magitea.cloudlv.site
- User name and password
  - The official OvGU student e-mail address is used for user name generation. The respective user name is everything *before* '@st.ovgu.de'.
    - '\<user name\>@st.ovgu.de'
  - The initial password **must be changed** after first login.
    - It is 'Cloud19.'

### Consultation's Organization

First of all: questions towards the exercises are OK! **But** we will only
discuss *informed* and *well-prepared* questions concerning a specific task
within an exercise. *Informed* and *well-prepared* means:

- First, post your problem as an issue (to the **lecture** repo)
- Describe the problem as detailed as possible, e.g.: "Its not working ..."
  will not be considered.  

  We expect something like this:
  > "this is my source code ..."  
  "there is a problem at line ..."  
  "according to \<documentation\>, p. \<page\> ..." (provide an URL or copy the respective text)  
  > "I expect ... to happen, but ..."

### General Communication

- Use *Markdown* to write down explanations, issues, etc. For Markdown's *basic* syntax see e.g. https://www.markdownguide.org/basic-syntax/