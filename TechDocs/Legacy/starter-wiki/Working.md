# Working
- temporary `docs` content for what we are working on now (2020/06/25)
- used until we have WebStorm installed and ~/Dev/DevOps/docs exists

## GitHub
#### create repository
- in GitHub, go to organization ‘cebcar’
  - click ‘Create a New Repository’
  - supply repo Name and Description
  - make repository “Private”
  - include .gitignore
  - initialize repo with a README
  - add license, normally MIT
- create
- in .gitignore, add lines:
  - `.DS_Store`
  - `workspace.xml`
  - optionally: !.gitignore”

#### Verify/Create GitHub personal access token
- `me` icon : Settings : Developer Settings : Personal Access Tokens : Generate New Token
- if desired token does not exist
  - provide description
  - set access permissions
  - `Generate Token`
  - copy to clipboard for immediate use

## Git
- uncache:
  - `git rm —cached — <filename>`
  - `git restore --staged <file>..." to unstage`
- `git merge —abort`
- merge conflicts
  - IDE
	  - operation causing conflict will display conflict dialog
		- close dialog to get all conflicts in merge folder inside changelist

## IntelliJ Platform

#### Initial IDE configuration
- [Connect IDE to settings repository](Working.md#connect-ide-to-settings-repository)
- for now: skeleton .gitignore file at ~/Dev
  - *TODO: replace with officially-installed skeleton .gitignore file ~/Dev*
  - *to facilitate new project opened in IntelliJ before adding its ‘real' .gitignore*
  - `.DS_Store`
  - `workspace.xml`

##### Connect IDE to settings repository
- GitHub: confirm exists [Personal Access Token](# "Verify/Create GitHub Personal Access Token) for `JetBrains Toolbox`
- launch IDE from [JetBrains ToolBox](DX_BasicSettings.md "JetBrains ToolBox")
- Welcome Screen : Configuration
  - set settings repo to [cebcar/ij-config](https://github.com/cebcar/ij-config)

#### IntellJ Platform IDE Settings
| Category | Name | IntelliJ IDE Setting | comment |
|:---|:---:|:---:|:---|
| VCS | GitHub | $lt;RepoName&gt; | select and sign in to GitHub |


## WebStorm
#### ccToolFile Template
``` velocity
- #set( $h2 = '##' )
- #set( $h4 = '####' )
- $h2 Tool ${NAME}
  - ${TOOLTYPE} @ ${LOCATION}
  - *${BLURB}*
  - **Installed Version**: ${VERSION}
  - **Source**: ${SOURCE}
  - **License**: ${LICENSE}
  - **Critical Data**: ${CRITICAL-DATA-LOCATION}
  - **Source**: ${SOURCE} # where we got it from
  - **Installation**: %
  - **Documentation**: %
- $h4 ${NAME} **Configuration**: %
- $h4 ${NAME} **Customization &amp; Automation**: %
- $h4 ${NAME} **Shortcuts**: %

- $h2 Using ${NAME}
```

## JetBrains Toolbox
#### Configuration

| Category | Name | JetBrains ToolBox Setting | comment |
|:---|:---:|:---:|:---|
| ToolBox App Updates | Update ToolBox App automatically | TRUE | we save previous tool versions as a precaution |
| Tools | Update all tools automatically | TRUE | |
| | Tools install location | ~/Applications/JetBrains/ToolBox | location inside 'Application Support' suggested, but want IDEs accessible as normal apps |
| | Keep only the latest version | FALSE | |
| Shell Scripts | Generate shell scripts | TRUE | generated shell script can open IDE even if the full UI cannot be displayed, such as could occur with a plug-in problem |
| | Shell script path | /usr/local/bin/jetbrains | |
| Proxy | Proxy | disabled | |
| Appearance and behavior | run at login | TRUE | |
| | Send anonymous statistics to JetBrains | TRUE | |
| Shortcuts | Global shortcut to open ToolBox app | rcJ | |

## Using JetBrains ToolBox
#### Install IDE
- JetBrains ToolBox
  - select indicated IDE to install
  - Install: main Install button for latest stable version
  - Connect to Settings Repository
    - GitHub: confirm exists [Personal Access Token](#verifycreate-github-personal-access-token) for `JetBrains Toolbox`
      - name: JetBrains-ToolBox
      - permissions:
        - `repo`: all
        - `admin-repo : read:repo-hook` only
    - JetBrains ToolBox: launch new IDE
      - on Welcome Screen
        - Connect to Settings Repository
          - select repo "https://github.com/cebcar/ij-config"

#### Open Repository as Project
- *GitHub's `Clone Repo` would create repo not connected to our assistive launch tool `JetBrains ToolBox`*
- ToolBox
  - Open IDE : Welcome window
  - `Get from Version Control`
    - url: https://github.com/cebcar/&lt;repo-name&gt;
    - destination: /users/carolclark/Dev/&lt;project-name&gt;
  - connect to settings repo
    - File | Manage IDE Settings | Settings Repository
      - repo URL; Overwrite Local
  - tag and commit v0.1.0

## GitHub Project Settings
##### Options
*Some Options may be read-only once the Clone has been created.*

| Category | Name | Setting |
|:---|:---:|:---:|
| Features | Wikis | on |
| | Restrict editing to collaborators only | on |
| | Issues | on |
| | Sponsorships | off |
| | Projects | on |
| Data Services | Security alerts | on |
| Merge Button | Allow merge commits | off |
| | Allow squash merging | off |
| | Allow rebase merging | off |
| | Automatically delete head branches | off |
| GitHub Pages | Source | master branch /docs folder |
| | Theme | Cayman? Cobalt? Amy(heading? for editing?)? |
