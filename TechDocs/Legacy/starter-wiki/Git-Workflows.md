# Git Workflows
document our git workflows

---
### Contents
[Conventions](Git-Workflows.md#Conventions)

[Workflows](Git-Workflows.md#Workflows)

- [Starter Workflow](Git-Workflows.md#Starter-Workflow)

- [Feature Workflow](Git-Workflows.md#Feature-Workflow)

[Functions][Functions_]
- [Sync local and remote master branches][Sync-Master_]

[Basic Git Commands](Git-Workflows.md#Basic-Git-Commands)
- [Repositories](Git-Workflows.md#repositories)
- [Branch Management](Git-Workflows.md#branch-management)

[References](Git-Workflows.md#References)

---

## Conventions

- in documentation, items marked with \TODO\ are not yet completed

- branch naming

  branchName:
> &lt;topicTag&gt;/[&lt;subtag&gt;/]+&lt;workDesc&gt;-&lt;PR&gt;#&lt;issueNum&gt;

  - branchName components
    | identifier | description |
    | --- | --- |
    | &lt;topicTag&gt; | short lower-case tag identifying project component; e.g. docs; ui |
    | &lt;workDesc&gt; | 2-3 word lower-case description of the work-being-done |
    | &lt;PR&gt; | 2-character upper-case product code |
    | &lt;issueNum&gt; | number of GitHub issue for this work |

- commit message
  - first line
    - brief description
    - may include link to issue
    - maximum 72 characters for full display in GitHub
      - see (https://github.com/tpope/vim-git/issues/29)(2015) for discussion
  - blank line
  - additional paragraphs as needed to describe motivation, intent, approach

---

# Workflows

## Starter Workflow
- *git workflow for one branch at a time*  
**status**: on clean master branch; no other active branches exist  
  - *if necessary, stash or push other branches*

- new branch/Task
- until **branch/task** work complete
  - until **push** master {
    - until **merge** {
      - until **commit** {
        - until **cache** {
          - test / develop / test
          - diff local changes
        - } **cache**
          - add changed files as indicated (IDE add: ocA)
      - } @IDE: commit
    - } @Shell: **merge** &lt;branchName&gt; into main line of development
      - **status**:
        - ensure
          - now on &lt;branchName&gt;
          - &lt;branchName&gt; is clean
      - push &lt;branchName&gt; to remote
      - checkout master
      - fetch; if changed: diff; commit
      - preview merge: `diff &lt;branchName&gt;`
      - @Shell/master: `merge --no-ff $cb`
  - } **push**
    - @IDE: push master
- } **branch**: delete || **Task** close

## Feature Workflow
\TODO\ 2020-05-01 finish this workflow at basic level *see comment*
<!--
*this section was started prematurely, but the work done appears OK*  
- *initially tried to use workflow from last-used Feature Branch Workflow, which provided for multiple branches, contributors*  
  - *multiple branches needed to support closing an active branch and coming back to it, but it's too big for now*  
    - [x] *rework first stage to require one active (checked-out) branch only*
    - [ ] *later, come back and finish this workflow*
    - [ ] *support stashes (workaround for no multiple branches)*
    - [ ] *support multiple branches*
    - [ ] *add pull requests (closing a pull request probably closes issue)*
-->

#### Open Issue
- verify not pending changes; clean up stashes\TODO\
---

# Procedures
#### Merge Current Branch
  *merge current branch into main line of development*  
  **status**: on clean branch to be merged up
- [preview merge]
  > git difftool HEAD origin
- fetch changes
  > git fetch [-v] origin [--dry-run]
- merge in changes
  > git merge --no-ff  
  - if indicated, break merge into smaller pieces using P4merge diff view

#### Update Branch 
  *update a branch with changes from remote/master*  
  **status**: branch to be updated is clean
- [sync master][#sync-master]
- [switch to existing branch](#switch-to-existing-branch) &lt;target&gt;
- merge in local master
- test
- \TODO\


#### Sync Master
  *synchronize local master branch with remote master*  
  **status**: on clean local branch master
- determine whether local and remote master branches still match
  > git diff master origin/master
- if no differences: done
- if differences found:
  - fetch changes pushed to master since we last pushed
    > fetch origin/master
  - merge any changes into our master branch
    > merge --no-ff origin/master
  - rerun tests
  - commit
  - push master: [push the current local branch to its remote](#push-the-current-local-branch-to-its-remote)

#### Push
  *push the current local branch to its remote*  
  **status**: on clean local branch
- download any changes from remote
  > git fetch [origin]
- merge those changes into current branch
  > [merge another branch into current branch](#merge-another-branch-into-current-branch)
- push updated branch to remote
  > git push

---
# Basic Git Commands
## Repositories
*this section uses CC-specific paths*
##### create new repository
- GitHub:  create repository
  - in GitHub, go to organization ‘cebcar’
  - click ‘Create a New Repository’
  - supply repo Name and Description
  - make repository “Private”
    - initialize repo with a README
    - add license, normally MIT

##### check out a repo we own
- ensure $REPO/.gitignore exists and contains line ```.DS_Store```
- clone from command line
  - switch to destination folder
  > cd ~/Dev
  - clone the repo
  > git clone https://github.com/cebcar/$REPO.git
  - OR, from GitHub repo page ```clone``` button
    - select "Clone with https" to protect ```clone``` data transmission
    - ```Clone```

---
## Branch Management

##### create and switch to new branch
> git checkout -b &lt;branchName&gt;

##### switch to existing branch
> git checkout &lt;branchName&gt;

##### delete branch
> git branch -d &lt;branchName&gt;

##### add files
- add all changed files
  > git add *
- add specific file
  > git add &lt;filename(s)&gt;

##### commit changes
- commit, supplying message
  > git commit -m "commit message"
- commit, taking message from a file
  > git commit -F message.txt
- allow editing of message in file
  > git commit -eF message.txt

##### push the current local branch to its remote
> git push origin &lt;branchName&gt;

##### fetch changes
- fetch recent changes from another branch
  > git fetch [origin]
- from another branch
  > git fetch &lt;branchName&gt;

##### merge another branch into current branch
> git merge --no-ff &lt;branchName&gt;
- *--no-ff: always mark a commit even if there are no changes*

---
## Comparing (git diff)
- compare current changes with their index
  > git diff
- view changes that have been staged
  > git diff --staged
- compare two `git` commits
  - use git log to find commit hashes
  > git diff &lt;hash1&gt; &lt;hash2&gt;
- show only name and status for each changed file
  > git diff --name-status
- warn if changes introduce conflict markers or whitespace errors
  > git diff --check
### Git Configuration
- [First-Time Git Setup](https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup)
- [gitconfig: diff/merge tool](https://stackoverflow.com/questions/6412516/configuring-diff-tool-with-gitconfig#20123093)
- [git Alias](https://git-scm.com/book/en/v2/Git-Basics-Git-Aliases)

---
## References
- [Feature Branch Workflow](http://candcsoft.com/TechnicalDocs/DevSupport/Git.html#Feature_Branch_Workflow_)
  - our previously active workflow
  - has complexities from
    - use of [GitFlow](https://nvie.com/posts/a-successful-git-branching-model/)
      - we like the concept, but our implementation, straight from the graphic, got pretty complex
      - use [HubFlow](https://datasift.github.io/gitflow/index.html) to figure out what we really need and how to implement it
    - use of JetBrains Tasks; probably will be replaced by use of GitHub/ZenHub project Boards
- [Git - the simple guide](http://rogerdudler.github.io/git-guide/)
  - *provides a much simpler approach to start; does not include all we need now, e.g. diffs*
- [Atlassian Tutorial: git diff](https://www.atlassian.com/git/tutorials/saving-changes/git-diff)
- [Git Docs Book](https://git-scm.com/docs)
  - [git diff](https://git-scm.com/docs/git-diff)
- GitHub's [HubFlow](https://datasift.github.io/gitflow/index.html)

[push-the-current-local-branch-to-its-remote]: <https://github.com/carolclark/DevOps/wiki/Git-Workflows#push-the-current-local-branch-to-its-remote>  
[switch-to-existing-branch]: <https://github.com/carolclark/DevOps/wiki/Git-Workflows.md#switch-to-existing-branch>
[fetch-recent-changes-from-another-branch]: <https://github.com/carolclark/DevOps/wiki/Git-Workflows.md#fetch-recent-changes-from-another-branch>
[merge-another-branch-into-current-branch]: <https://github.com/carolclark/DevOps/wiki/Git-Workflows.md#merge-another-branch-into-current-branch>
[Workflows]: <https://github.com/carolclark/DevOps/wiki/Git-Workflows.md#Workflows>
[Functions]: <https://github.com/carolclark/DevOps/wiki/Git-Workflows.md#Functions>
[sync-master]: <https://github.com/carolclark/DevOps/wiki/Git-Workflows.md#Sync-Master>
[Basic-Git-Commands]: <https://github.com/carolclark/DevOps/wiki/Git-Workflows.md#Basic-Git-Commands>
