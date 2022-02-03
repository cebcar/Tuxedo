Recover Unmerged/Broken Branch(es)
- ***Update Main Branch***
- if multiple branches
  - **Sort Branches in Chronological Order**
  - handle the oldest branch first
- on clean main:
  - ***new branch targetBranch (_TB)***
  - _TB=recover-target[-&lt;issueID&gt;]*
  - new task _TB; push --set-upstream origin _TB
- for each branch to recover
  - originalBranch (_OB): &lt;branchToRecover&gt;;
  - ***apply changes***
    - preview changes: on  _TB; compare (^V) with _OB
    - for each changelist
      - apply changes *compare (^V) with _OB`; commit*
      - ***push to remote tracking branch***
        - *git push origin _TB`*
  - ***merge to main***
    - *wait until all recovery complete before `Update Main Branch`*
    - git checkout Main
    - merge in changed branch
      - preview merge: `git difftool _TB`
      - `git merge --no-ff _TB`
  - ***push main to origin/main***
    - `git push`
- ***Update Main Branch***

Update Main Branch
- `git status; git branch --no-merged`
- IDE: fetch; if changes: git difftool origin/master; commit; push


Sort Branches in Chronological Order
- if multiple, get chronological order of existing open branches
  - `git for-each-ref --sort=committerdate refs/heads/ --format='%(color: red)%(committerdate:short) %(color: cyan)%(refname:short)'`
