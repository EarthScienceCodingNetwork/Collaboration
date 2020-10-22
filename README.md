# Collaboration


General Topics:

-   Remote vs. Local repositories
-   What is branching? Why Branch?
-   How to deal with merge conflicts Using Atom
-   How to go back (restoring and resetting)?
-   GitHub projects

Tasks for Practicing with GIT:

| Task \# | Description                  | Action                     |
|---------|------------------------------|----------------------------|
| 1       | Create a Project             |                            |
| 2       | Create a File                |                            |
| 3       | Update Remote                |                            |
| 4       | Update Remote                |                            |
| 5       | Create Branches              | Branch                     |
| 6       | Edit a File at the Same Time | Pull **→** Code **→** Push |
| 7       | Navigate Merge Conflicts     | Restore / Reset            |
| 8       | Going Back                   | Restore / Reset            |

Tracking remote branches locally:

`git branch` (to see branches, including which one you're on)

`git branch <branchname>` (create a new branch)

`git checkout --track origin/figureUpdate`

Restore:

`git add .` (commit everything)

`git commit -m "add your message here"` (commit it)

`git restore --staged <filename>` (to remove file from the commit)

Reset:

`git reset --hard <commitnumber>` <https://stackoverflow.com/questions/4114095/how-do-i-revert-a-git-repository-to-a-previous-commit>

Other Links: - Closing issues from commmit messages: <https://docs.github.com/en/enterprise/2.16/user/github/managing-your-work-on-github/closing-issues-using-keywords> - Change main branch name: <https://medium.com/faun/git-step-by-step-renaming-a-master-branch-to-main-16390ca7577b> - Jenny Bryan on Git/GitHub in R: <https://happygitwithr.com/>
