# Exercise

Develop a Python 3 program

```sh
main.py
```

This program will be invoked by user 'root' using the
following procedure

```sh
cd feature041
python main.py > output.txt
```

and should fulfill the task described below (cp. 'Task').

(Git) stage, commit, and push your changes to feature
branch 'feature041'. Check, if the green check-mark appears in the
Gitea Web application at feature branch 'feature041'. If it appears,
submit a pull request via the Gitea Web application. If not, check your code.
It did not pass the tests.

  
#### Timetable - success points and due dates

Finish the exercise *before* the below given due date. If the exercise is
successfully finished and checked, you will be rewarded with the respective
amount of success points.

|Exercise    |points (obtainable)                   |due date (finish before)|
|:--------:  |:--------:                            |:--------:              |
|041|3|09.12.2020|


#### Hints

- The Python version that runs on the test server will be 3.8.3. So Python 3
  feature up to version 3.8.3 are available.
  - On Linux, `which python3` (or `which python`) and `python3 --version` may help
    to find out about Python versions that are already installed on your system.
- For Python 3.x cp.
  - https://docs.python.org/3/index.html
- For a Python tutorials cp. e.g.
  - https://docs.python.org/3/tutorial/index.html (recommended)
  - https://wiki.python.org/moin/BeginnersGuide
  - https://www.w3schools.com/python/default.asp (interactive)
  - ...
- Do not import non-standard Python packages.
- Read the docs!

#### Task

Create a string by concatenating the words 'mkwqnynhdpwjgaiu', 'eiovykirbfqrtwhf',
and 'mytepbkqqlzyggtm' with an "-" between the single words.
Print it 557 times with leading line numbers according to the
following pattern:

```sh
  <line number> : <word>-<word>-<word>
```

The first line number is 1.

