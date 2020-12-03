# Exercise

Develop a (Ubuntu bash) shell script

```sh
main.sh
```

This program will be invoked by user 'root' using the
following procedure

```sh
cd feature035
chmod +x main.sh
bash ./main.sh
```

and should fulfill the task described below (cp. 'Task').

(Git) stage, commit, and push your changes to feature
branch 'feature035'. Check, if the green check-mark appears in the
Gitea Web application at feature branch 'feature035'. If it appears,
submit a pull request via the Gitea Web application. If not, check your code.
It did not pass the tests.

  
#### Timetable - success points and due dates

Finish the exercise *before* the below given due date. If the exercise is
successfully finished and checked, you will be rewarded with the respective
amount of success points.

|Exercise    |points (obtainable)                   |due date (finish before)|
|:--------:  |:--------:                            |:--------:              |
|035|5|02.12.2020|


#### Hints

- For proper bash scripting and usage cp.
  - https://www.gnu.org/software/bash/manual/bash.html
- For Nginx installation and operation cp.
  - https://docs.nginx.com/nginx/
  A change of Nginx's configuration may require to restart the Nginx
  server to put the changes into action. Try `nginx -s reload`.
- For coding valid html documents cp.
  - https://www.w3schools.com/html/default.asp
- A service that validates html documents can be found at
  - https://validator.w3.org/
- Read the docs!

#### Task

Change the settings of a pre-installed Nginx Web server. It is installed
with its default parameters, but not yet running. As default, in an Ubuntu
environment, it uses the following folders:

```sh
/etc/nginx/sites-enabled
/etc/nginx/sites-available
/var/www/html/
```

It delivers, after starting it, the following default html document:

```sh
/var/www/html/index.nginx-debian.html
```

Change the Nginx settings so, that it listens for http requests on

1. sub-domain 'fpdvso' of domain 'ws.local', which, if called via

```sh
curl http://fpdvso.ws.local
```

  returns a **valid** html document containing the
  following HTML block as part of it:

```html
    <p>
        veojpsxwrnht
    </p>
```

2. sub-domain 'lsjhkz' of domain 'ws.local', which, if called via

```sh
curl http://lsjhkz.ws.local
```

  returns a **valid** html document containing the
  following HTML block as part of it:

```html
    <p>
        ejazutqepwtg
    </p>
```

3. Start Nginx as a daemon.

Proper functionality, as described above, will be checked with

```sh
curl http://fpdvso.ws.local
curl http://lsjhkz.ws.local
```

Note: Local DNS is setup to correctly route to

- fpdvso.ws.local
- lsjhkz.ws.local

The DNS entries point to 'localhost' and may be used for Nginx setup.