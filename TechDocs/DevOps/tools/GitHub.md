# GitHub
## Tool GitHub
WebApp @ https://github.com<br/>
*provides hosting for software development and version control using Git*<br/>
**Documentation**: %
### GitHub **Configuration**: %
### GitHub **Customization &amp; Automation**: %
### GitHub **Shortcuts**: %

## Using GitHub

### Create New Repository
- GitHub:  New Repository
  - GitHub : ‘cebcar’ : New
    - supply repo Name and Description
    - make repository “Public”
    - do not add .gitignore
    - initialize repo with a README
    - add license, normally MIT
  - create

- edit Repository Settings
  - use cebcar-settings - see github-repository-settings below(@link)<br/><br/>

### GitHub Repository Settings
*categories shown with no content are not now being used*
- Options
  - Settings
    - if public, can add social image (photo or GitHub avatar?)<br/><br/>
  - Features (cebcar settings)
    - [-] **Wikis**
    - [+] **Restrict editing to users in teams with push access only**
    - [+] **Issues**
    - [-] **Allow Forking**
    - [-] **Sponsorships**
    - [-] **Projects** *projects provided by ZenHub*
    - [-] **Preserve this repository** *intended for long-term preservation of important open-source code*
    - [+] **Table of contents** *autogenerate TOC for markdown files*
    - [-] **Discussions**<br/><br/>

  - Merge Button (cebcar settings)
      - [+] Allow merge commits
      - [-] Allow squash merging
      - [-] Allow rebase merging
      - [-] Allow auto-merge
      - [-] Automatically delete head branches<br/><br/>
  - we do not now use Archives or GitHub Pages<br/><br/>
- Manage Access
  - invite collaborators here
- Security and Analysis
  - security analysis for project dependencies; add if and when indicated
- Branches
  - see [Defining the mergeability of pull requests](https://docs.github.com/en/github/administering-a-repository/defining-the-mergeability-of-pull-requests)
- Webhooks
- Notifications
- Integrations
  - set up GitHub Learning Lab from here
- Deploy keys
- Actions
  - scriptable CI Actions
- Secrets

### OAuth Tokens
*from [Access Tokens @ oauth.com](https://www.oauth.com/oauth2-servers/access-tokens/)*
``` text
Access tokens are the thing that applications use to make API requests on behalf of a user.
The access token represents the authorization of a specific application to access specific parts of a user’s data.

Access tokens must be kept confidential in transit and in storage.
```

We use Personal Access Tokens for:
  - [access for products](https://docs.github.com/en/developers/apps/about-apps#about-oauth-apps), including JetBrains apps, to our repositories, and
  - interaction with GitHub via automated scripts; see [Git automation with OAuth tokens](https://docs.github.com/en/github/extending-github/git-automation-with-oauth-tokens)

#### Personal Access Token Permissions
  - *recommended permissions based on JetBrains request, plus .gif at [create a personal access token](https://docs.github.com/en/github/authenticating-to-github/creating-a-personal-access-token)*
    - for JetBrains Project access: repo; admin:repo-hook; gist; read:org
    - for admin access: repo; admin:repo-hook; delete repo
    - for read access: repo; read:repo-hook

#### Create Personal Access Token
- GitHub: [create a personal access token](https://docs.github.com/en/github/authenticating-to-github/creating-a-personal-access-token):
  - from [GitHub Developer Settings](#access-github-developer-settings): Settings > Developer Settings > Personal Access Tokens
    - set [Personal Access Token Permissions](#personal-access-token-permissions)
    - Generate New Token

### Tasks
#### Access GitHub Repository Settings
- from repo button bar: 'Settings'

#### Access GitHub Developer Settings
- from Developer avatar at top right of any GitHub screen: Settings > Developer settings

#### Delete an Issue
- ***Warning***: the only reason we now know for deleting a GitHub issue is<br/>
  to remove an unwanted issue from a ZenHub Roadmap

- reference: [ZenHub: Deleting GitHub Issues or ZenHub Epics](https://help.zenhub.com/support/solutions/articles/43000480335-deleting-github-issues-or-zenhub-epics)

- from GitHub
  - to enable/disable issue deletion:
    - under personal icon at far top right
      - select 'Your Organizations' and switch to cebcar account
    - left sidebar: select Member Privileges
    - toggle "Allow members to delete issues for this organization"
  - so:
    - enable issue deletion
    - display the issue's screen
    - select trashcan next to "Delete Issue", near bottom of left panel
    - disable issue deletion
