# Git

*version control system*<br/>
shell tool @ /usr/bin/git<br/>
  - **Version**: 2.24.3 (Apple Git-128)<br/>
  - **License**: GNU General Public License version 2.0<br/>
  - **Critical Data**: folder .git at project root<br/>
  - **Source**: supplied with macOS<br/>
  - **Documentation**: [Git Book](https://git-scm.com/book/en/v2)

### **Git Configuration**<br/>

#### gitignore
- initial lines:
```.gitignore
  !.gitignore
  .cebcar
```
- then use [gitignore.io](http://gitignore.io) to add additional items, including macos and JetBrains

#### core.attributesfile
git core.attributesfile:
- relevant when there are multiple git base configurations
- see end of "DESCRIPTION" on gitattributes Manual page

### **Git Customization &amp; Automation**<br/>

### **Git Shortcuts**<br/>

## Using Git<br/>

## Git Tasks

### Remotes
- Push branch to upstream
> git push --set-upstream (-u) origin &lt;branch&gt;

### Tagging
- create annotated tag:
> git tag -a &lt;tagName&gt; -m &lt;comment&gt;

### Branches
- Push Remote Branch
> git push --set-upstream (-u) origin &lt;branch&gt;

- list branches sorted by date
> git for-each-ref --sort=committerdate refs/heads/ --format='%(committerdate:short) %(refname:short)'

### Stashes
- stash away the changes in a working directory
> git stash [push -m message]

- list stashes; also shows '@{n}' argument for use below
> git stash list

- apply stash on top of the current working tree
> git stash apply '@{n}'

- show a stash
> git stash show [stash@{n}]

- drop a stash
> git stash drop [stash@{n}]

- stash selectively (cycle through available hunks)
> git stash [push] --patch [-m]

- create new branch from stash
> git stash branch &lt;branchname&gt;<br>

  - useful if `git stash apply` fails due to too many changes in branch
  - creates new branch from parent of original stash

### Rebase
- reapply commits on top of another base tip
> git rebase
- edit list of the commits before rebasing; can also be used to split commits
> git rebase -i (--interactive)

### Merge
- Revert just-committed merge
> git revert -m 1 &lt;merge-commit-hash&gt;

### Related Maintenance
- remove a non-empty (.git) directory with all contents
> rm -rf <dirname>
