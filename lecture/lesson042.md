# Lesson: Python - tools and modules/packages

- Infrastructure as code

  > Remember the "UNIX philosophy":  
  > "Avoid hand-hacking; write programs to write programs when you can."

  > Remember "cloud native computing:  
  > "Technologies such as containers, microservices, serverless functions and immutable infrastructure, deployed via declarative code are common elements of this architectural style."

- The twelve-factor app
  - cp. "III. Config"

- Python packages
  - paramiko
  - fabric
  - invoke
  
- tools
  - pyenv

## Background explanation (theory)

- Guided documentation walkthrough
  - http://www.fabfile.org/
    - https://docs.fabfile.org/_/downloads/en/2.5/pdf/
  - https://www.pyinvoke.org/
    - http://docs.pyinvoke.org/_/downloads/en/stable/pdf/
  - https://www.paramiko.org/
    - http://docs.paramiko.org/_/downloads/en/stable/pdf/
  
## Terms to know *and* use

- decorator
- Python virtual environment
- configuration management
- Salt
- Ansible

## Guided examples

```bash
python --version

pyenv versions
pyenv local 3.7.1

pyenv virtualenvs
pyenv virtualenv venv37
pyenv shell venv37
# pyenv activate venv37

pip install fabric
python

pyenv deactivate
pyenv uninstall venv37

```

```python
>>> from fabric import Connection

>>> with open(*secret*) as fp:
...   p = fp.read().strip()

>>> c = Connection('vm01', user='user', connect_kwargs={'password': p})
>>> c.run('hostname -I')
>>> c.run('who -a')
>>> c.close()

>>> exit()
```

## References and expected reading

- http://www.fabfile.org/
  - https://docs.fabfile.org/_/downloads/en/2.5/pdf/
- https://www.pyinvoke.org/
  - http://docs.pyinvoke.org/_/downloads/en/stable/pdf/
- https://www.paramiko.org/
  - http://docs.paramiko.org/_/downloads/en/stable/pdf/

Optional reading:

- https://12factor.net/
- https://github.com/pyenv/pyenv

## Practice - introduction to exercise