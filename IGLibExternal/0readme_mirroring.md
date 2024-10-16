
# Maintaiing Mirrored Forks

This document contains **most useful stuff** for maintaining **mirrored forks**:

**GitHub help on mirroring**, etc.:
Duplicating a repository
  https://docs.github.com/en/repositories/creating-and-managing-repositories/duplicating-a-repository
See in particular:

* Mirroring a repository in another location
  * This involves creating a bare mirrored clone of the repository, then fetch / push whenever	you want to update.

> How do I **update my GitHub mirror due to the master/main change**?
> https://stackoverflow.com/questions/64618081/how-do-i-update-my-github-mirror-due-to-the-master-main-change
  - contains some generally useful manipulation

> How to **change a bare repository to a normal one**:
Execute:
`  git config --unset core.bare`
Then rename its directory to .git and move it to an empty directory. That directory becomes a non-bare repository with nothing checked out. Just check out a branch to populate the working directory.

> How to **push all branches from one remote to another remote**?
See:
https://stackoverflow.com/questions/37884832/git-push-all-branches-from-one-remote-to-another-remote
One way is through intermediate bar / mirror clone, see this answer:
https://stackoverflow.com/a/54454345/3887591
;
There is a more direct way when you already have a local clone, see this (just use quotes around refs, as mentioned by Stefano):
This copies branches from origin to new origin:
`  git remote add neworigin url-to-new-remote `
`  git push neworigin --tags refs/remotes/origin/*:refs/heads/* `

> Several **ways to mirror remote repository** (i.e., copy all its remote branches to local branches):
WARNING: doing this without consideration is not good, can lead to many stale branches that ere behind remote repository and this causes problems if you are doing
`  git push --all`
This can maybe be done as temporary solution for switching between several remotes.
> **By defining an alias**:
See this answer:  https://stackoverflow.com/a/16563327/3887591
Define an alias (command) by executing:
`  git config --global alias.clone-branches '! git branch -a | sed -n "/\/HEAD /d; /\/master$/d; /remotes/p;" | xargs -L1 git checkout -t' `
Then use the alias like this:
`  git clone-branches`
**Warning - does not work**, you should run this command in unix shell (e.g. you run bash), but then you don't have connection with Git installation on Windows.

> **via clone bare or clone mirror**:
From  https://stackoverflow.com/a/13575102/3887591 :

> **By creating a new clone** (see this answer: ):
`  mkdir repo `
`  cd repo `
`  git clone --bare path/to/repo.git .git `
`  git config --unset core.bare `
`  git reset --hard `
Use `--mirror` instead of `--bare` if your remote repo has remotes of its own. This is a similar but more detailed answer:
https://stackoverflow.com/a/34122093/3887591 

