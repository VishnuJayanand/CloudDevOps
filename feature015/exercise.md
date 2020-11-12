# Exercise

Provide a **personal installation log** by writing a YAML file
that document how you installed (or got to use) the following
software components (on your computer or virtual machine):

- Virtualizer/virtual machine, e.g. VirtualBox, KVM, WSL,
  Digital Ocean/Linode/Vultr ...
- Ubuntu 18.04
- `bash`
- `git`

The documentation has to be pushed to the feature branch
'feature015', copied to the respective folder
(feature015), and named as follows:

```sh
mylog.yml
```

The YAML file has to be organized according to the following
pattern (schema):

```yml
setup:
- name: name of component, e.g. Ubuntu 18.04
  comment: optional explanation
  base-system: system part on which to install the component
  sources:
  - https://ubuntu.com/tutorials/install-ubuntu-server
  actions:
  - manual action or command
  version:
    action: manual action or command, e.g. uname -a
    version: output of the action above
- name: ...
  ...
```

The log ('mylog.yml') will **first** be checked against the following rules:

- Is has to be valid YAML.
- It has to fulfill all rules given by the schema below.

```yml
setup: list(include('setup'), min=4, max=4)
---
setup:
  name: str()
  comment: str(required=False)
  base-system: str()
  sources: list(include('url'))
  actions: list(include('action'))
  version:
    action: include('action')
    version: str()

url: regex('^http.*\://.*', name='URL', ignore_case=True)
action: str()
```

The **second** review will be a manual review that assess the log's content.

Do not forget to (Git) stage, commit, and push your changes to feature
branch 'feature015'. Check, if the green check mark appears in the
Gitea Web application at feature branch 'feature015'. If it appears,
the file passed the first check, and you may submit a pull request via the
Gitea Web application. If the green check mark does not appear, or a red 'x'
appears instead, check your file. It is still wrong and did not pass the
first tests.

  
#### Timetable - success points and due dates

Finish the exercise *before* the below given due date. If the exercise is
successfully finished and checked, you will be rewarded with the respective
amount of success points.

|Exercise    |points (obtainable)                   |due date (finish before)|
|:--------:  |:--------:                            |:--------:              |
|015|2|11.11.2020|


#### Hints

- For YAML and its usage cp.
  - https://yaml.org/spec/1.2/spec.html
- For details on how to read the schema definition cp.
  - https://github.com/23andMe/Yamale