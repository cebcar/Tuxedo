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

### **Git Customization &amp; Automation**<br/>

### **Git Shortcuts**<br/>

## Using Git<br/>

## Git Tasks

### Working with Remote
#### Push branch to upstream
> git push --set-upstream (-u) origin &lt;branch&gt;

### Tagging
#### Tag
- on clean main branch:
  - create annotated tag (requires comment)
  > git tag -a &lt;tagName&gt; -m &lt;comment&gt;

### Branches
#### Push Remote Branch
> git push --set-upstream (-u) origin &lt;branch&gt;
#### list branches sorted by date
> git for-each-ref --sort=committerdate refs/heads/ --format='%(committerdate:short) %(refname:short)'

### Rebase
- reapply commits on top of another base tip
> git rebase
- edit list of the commits before rebasing; can also be used to split commits
> git rebase -i (--interactive)

### Merge
#### Revert just-committed merge
> git revert -m 1 &lt;merge-commit-hash&gt;

### Directories
#### remove non-empty directory with all contents
```shell
rm -rf <dirname>
```