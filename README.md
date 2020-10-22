# Collaboration

General Topics:

- Remote vs. Local repositories
- What is branching? Why Branch?
- How to deal with merge conflicts Using Atom
- How to go back (restoring and resetting)?
- GitHub projects


Tasks for Practicing with GIT:

|Task|Description|Major Action
|1|Create a project|Initial Commit|
|2|Create a file|Write Code|
|3|Update remote|Commit & Push|
|4|Create branches|Branch|
|5|Navigating branches Checkout|
|6|Edit File at same time (on dev branch)|Pull / Code / Push|
|7|Navigate merge conflicts|Restore / Reset|
|8|Going back|Restore / Reset|


Tracking remote branches locally:

`git branch` (to see branches, including which one you're on)

`git branch <branchname>` (create a new branch)

`git checkout --track origin/figureUpdate`


Restore:

`git add .` (commit everything)

`git commit -m "add your message here"` (commit it)

`git restore --staged <filename>` (to remove file from the commit)


Reset:

`git reset --hard <commitnumber>`
https://stackoverflow.com/questions/4114095/how-do-i-revert-a-git-repository-to-a-previous-commit


Other Links:
- Closing issues from commmit messages: https://docs.github.com/en/enterprise/2.16/user/github/managing-your-work-on-github/closing-issues-using-keywords
- Change main branch name: https://medium.com/faun/git-step-by-step-renaming-a-master-branch-to-main-16390ca7577b
- Jenny Bryan on Git/GitHub in R: https://happygitwithr.com/
