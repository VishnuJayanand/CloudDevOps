# Exercise

Develop a Dockerfile

```Docker
Dockerfile.main.df
```

A container will be build from it and invoked using the
following procedure

```sh
cd feature052
docker build -t feature052.main -f Dockerfile.main.df .
docker run --rm --name server.local \
       feature052.main /bin/sh
docker exec server.local nginx
```

So **no** docker `ENTRYPOINT` or `CMD` directives are needed.
The container should be developed according to the description below
(cp. 'Task').

(Git) stage, commit, and push your changes (the Docker file) to feature
branch 'feature052'. Check, if the green check-mark appears in the
Gitea Web application at feature branch 'feature052'. If it appears,
submit a pull request via the Gitea Web application. If not, check your code.
It did not pass the tests.

  
#### Timetable - success points and due dates

Finish the exercise *before* the below given due date. If the exercise is
successfully finished and checked, you will be rewarded with the respective
amount of success points.

|Exercise    |points (obtainable)                   |due date (finish before)|
|:--------:  |:--------:                            |:--------:              |
|052|4|20.01.2021|


#### Hints

- For Docker and and Dockerfile cp.
  - https://docs.docker.com/get-started/
  - https://docs.docker.com/engine/reference/builder/
- For Nginx installation and operation cp.
  - https://docs.nginx.com/nginx/
- For coding valid html documents cp.
  - https://www.w3schools.com/html/default.asp
- Read the docs!

#### Task

Taking Ubuntu 18.04 as the base image, the container should install and setup
Nginx as a Web server. The Web server should deliver the Nginx default Web
page.

The running image will be checked for

- using Nginx to serve Web pages,
- running on Ubuntu, and
- serving the Nginx default welcome page when called under

```sh
http://server.local
```