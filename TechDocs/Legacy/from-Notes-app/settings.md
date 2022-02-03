settings

IntelliJ project DevOps  #5

- [ ] *create IntelliJ projectDevOps, connecting to existing Settings repository with markdown support*
  <br/>
- from IntelliJ: create project DevOps
  - [x] Get Repo from Version Control
    - from either:
      - IDE with existing projects: VCS/Git menu, or
      - IDE from JetBrains ToolBox with no open projects: Welcome Screen:
    - select "Get from Version Control"
    - provide:
      - repository URL
      - directory that will contain the new project
    - press Enter or click Clone
    - Git | Put Label: create tag "v0.1.0"
    - commit with tag
      <br/>
  - [ ] configure new project to create Task from GitHub issue
    - Version Control
      - Git
        - Tools | Tasks | Servers: connect to GitHub project
      - Issue Navigation: `do([\d]+)	https://github.com/cebcar/DevOps/issues/$1`
        <br/>
- [ ] update IntelliJ.md with info from this issue

#### Plugins
- ensure Plugin "Task Management" is enabled
  <br/>
  <br/>
- [ ] connect to current Settings repository
  - File : Manage IDE Settings : Sync with Settings Repository : Overwrite Local
 