# Exercise

Develop a (Ubuntu bash) shell script

```sh
main.sh
```

This program will be invoked by user 'root' using the
following procedure

```sh
cd feature031
chmod +x main.sh
bash ./main.sh
```

and should fulfill the task described below (cp. 'Task').

(Git) stage, commit, and push your changes to feature
branch 'feature031'. Check, if the green check-mark appears in the
Gitea Web application at feature branch 'feature031'. If it appears,
submit a pull request via the Gitea Web application. If not, check your code.
It did not pass the tests.

  
#### Timetable - success points and due dates

Finish the exercise *before* the below given due date. If the exercise is
successfully finished and checked, you will be rewarded with the respective
amount of success points.

|Exercise    |points (obtainable)                   |due date (finish before)|
|:--------:  |:--------:                            |:--------:              |
|031|5|25.11.2020|


#### Hints

- If commands, which you are calling in your bash script, 
  are not pre-installed on the server, you will have to install them
  yourself as part of your bash script. Consider using `apt install` in
  unsupervised mode to do so.
- For proper bash scripting and usage cp.
  - https://www.gnu.org/software/bash/manual/bash.html
- For Nginx installation and operation cp.
  - https://docs.nginx.com/nginx/
- Read the docs!

#### Task

Setup a Nginx Web server that listens for http requests on

```sh
localhost
```

and start it as a daemon. If called with

```sh
curl --silent --head http://localhost
```

it is supposed to return an html 'OK' code (200).