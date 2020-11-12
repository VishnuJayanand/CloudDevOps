# Exercise

Develop a (Ubuntu bash) shell script

```sh
main.sh
```

This program will be invoked using the following procedure

```sh
cd feature022
chmod +x main.sh
bash ./main.sh < input.txt > output.txt
```

from user 'root'. Take file

```sh
input.txt
```

as input file. You find it in the 'exercises' folder of feature branch
'feature022'. Process the input file as described below (cp. 'Task'),
and copy your program that produces the output to

```sh
main.sh
```

Do not forget to (Git) stage, commit, and push your changes to feature
branch 'feature022'. Check, if the green check mark appears in the
Gitea Web application at feature branch 'feature022'. If it appears,
submit a pull request via the Gitea Web application. If not, check your code.
It did not pass the tests.

  
#### Timetable - success points and due dates

Finish the exercise *before* the below given due date. If the exercise is
successfully finished and checked, you will be rewarded with the respective
amount of success points.

|Exercise    |points (obtainable)                   |due date (finish before)|
|:--------:  |:--------:                            |:--------:              |
|022|5|18.11.2020|


#### Hints

- Useful commands may be, e.g. `sed`, `awk`, `grep`, `bc`, `cut`, `cat` ...
  - See the respective `man` or, often more detailed, `info` pages
  - If the commands (in case you are calling them in your bash script)
    are not pre-installed on the server, you will have to install them
    yourself as part of your bash script. Consider using `apt install` in
    unsupervised mode to do so.
  - Processing commands as user 'root' can also be tested locally, e.g. by
    using `sudo` (single command) or `sudo su` (multiple commands in a row,
    use `exit` to return to unprivileged user shell).
- For proper bash scripting and usage cp.
  - https://www.gnu.org/software/bash/manual/bash.html
- For proper use of regular expressions cp.
  - https://regex101.com/
- Read the docs!

#### Task


Calculate the sum of the values of lines 98 to 427 of column 3, store the computed number.

