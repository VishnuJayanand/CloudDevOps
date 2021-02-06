# Lesson: Setup a Gitea account and the personal project

- where to find the lecture
- where to find the personnel repo

## Background explanation (theory)

- Guided documentation walkthrough
  - https://github.com/progit/progit2/releases/download/2.1.266/progit.pdf
    - cp. https://git-scm.com/book/en/v2

## Terms to know *and* use

- versioning servers, git providers, e,g, GitLab, GitHub, Gitea ...
- repository (repo)
- feature branch (workflow pattern)
  - https://git-scm.com/book/en/v2/Distributed-Git-Contributing-to-a-Project
- puĺl request, merge request

## Guided examples

- example user's repo, commit graph, and pull requests
  - https://magitea.cloudlv.site

- use a local development environment for experiments
  - most needed commands to examine

    ```bash
    git init
    git status

    git config --local --list
    git config --local --add user.email
    git config --local --add user.name

    git add
    git commit -m
    git branch
    git checkout
    ```

- example repo to use for *local* Git experiments (do not push!)
  - https://github.com/plantuml/plantuml-server.git

    ```bash
    git clone

    git remote show origin
    git diff HEAD HEAD^
    git log --oneline --decorate --all --graph

    git pull
    git push
    ```

## References and expected reading

- Pro Git book
  - https://git-scm.com/book/en/v2

Hint:

> For those that are already familiar with Python and like to better understand how `git` is implemented and how its concepts are put into action see
>
> - https://www.leshenko.net/p/ugit

## Practice - introduction to exercise