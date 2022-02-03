Feature Branch Workflow
## Feature Branch Workflow

- new branch/Task
  - ensure: on clean master branch; no other open branches<br/>
    *if necessary, stash or shelve other branches*
  - create and checkout new branch/Task
- until **branch/task** work complete {
  - until **push** master {
    - until **merge** to master {
      - until **commit** {
        - until **cache** {
          - test / develop / test
          - diff local changes
        - } **cache**
          - add changed files as indicated (IDE add: ocA)
      - } @IDE: commit
        - *use IntelliJ-based IDE for message support*
    - } @Shell: **merge** &lt;branchName&gt; into main line of development
      - ensure: on clean &lt;branchName&gt;
      - push &lt;branchName&gt; to remote
      - checkout master
      - fetch; if changed: diff; commit
      - preview merge `diff with &lt;branchName&gt;`
      - @Shell/master: `merge --no-ff &lt;branchName&gt;`
  - } **push**
    - @IDE: Push Master
- } **branch**: delete || **Task** close

IntelliJ
# Tool: IntelliJ Platform
- Application @ ~/Applications/JetBrains Toolbox/&lt;IDEName&gt;  
  *configuration and functionality shared by all IntelliJ Platform IDEs*
- Version: WebStorm 2020.1.1
- Source: JetBrains Subscription
- Critical Data: configuration @ ~/Application Support/&lt;IDEName&gt;&lt;major&gt;.&lt;minor&gt;
- Installation: via JetBrains Toolbox
- Documentation: [Discover IntelliJ IDEA](https://www.jetbrains.com/help/idea/discover-intellij-idea.html)

## IntelliJ Platform Configuration

#### Preference Profiles
- support custom profile names for storing and referencing groups of settings
- we normally use our GitHub organization name `cebcar` to name custom profiles
  - `cebcar IDE Default` for IDE-based preferences
  - `cebcar Project Default` for Project-based

### Appearance & Behavior
#### Scopes
- docs
  - file:*.md||file:*.html
- scripts
  - file:*.zsh
- config
  - file:*.xml
  - file:*.iml
  - files:.gitignore .gitconfig
- not included in any scope
  - LICENSE
  - workspace.xml

### KeyMap
*`cebcar IDE default`*

#### Main Menu
- Help
  - Find Action<br/>
    *replace rcA with scA; scA conflicts with a Terminal shortcut and opens Terminal*
    - Help | Find Action | rcA; remove scA

### Editor
#### General
- Smart Keys
  - *use CamelHumps*
    - [+] use "CamelHumps" words
    - [+] honor "CamelHumps" word settings when selecting on double click

#### Code Style
- *indentation 2 for html, markdown*
  - HTML: Tab Size 2; Indent 2; Continuation Indent 4
  - Markdown: based on HTML

#### Proofreading
- Grammar
  - *disable checks inconsistent with our technical writing style*
    - [_] Articles: article missing before a countable noun
    - [_] Commas after conjunctive/linking adverbs in front of a new sentence
      - *If we could edit the rule, we could maybe just exclude 'currently'.*
    - [_] Loose punctuation mark.
      - conflicts with braces anchoring workflows
      ```
        until done { steps
        } done'
        ^
      ```
    - [_] Miscellaneous: hyphenated words
      - fails 'hidden folder at top level of repo'
- Spelling
  - [+]use single dictionary for storing words: application-level
    - *apparently: use hand-editing to ¢populate a custom dictionary,
      presumably from words saved to a built-in wordlist*
    - *suggests we could add cebcar/cebcar.DIC later*

#### Version Control
- Version Control System: Git
  - GitHub
    - provide GitHub credentials

### IntelliJ Customization &amp; Automation

### IntelliJ Keymap
| Group | | Shortcut | Action |
| ---:|:---:|:---:|:--- |
| Main menu | Code | |
| | | socI | Inspect Code... |
| | | &lt;none&gt; | Run Inspection by Name... |
| Tool Windows | | sc&lt;arrow&gt; | resize tool window |
| | | F12 | last tool window
| | | sEsc | hide active tool window |
| | | scF12 | close all tool windows |

# Using IntelliJ Platform IDEs

## Tasks

We use IntelliJ [Tasks](https://www.jetbrains.com/help/idea/managing-tasks-and-context.html)
to organize work into smaller tasks.

The Task workflow helps keep our workflow anchored.

Features Include:
- automatically offers configurable suggestions for branch and changelist names
- saves and restores context
- context: branch, open files, favorites, breakpoints, tool window status
- stashes (or shelves) existing changes when switching between branches
- available automatic time tracking per Task

To configure, see (#Settings/Plugins)

### Conventions

- top-level Task normally named with &lt;PR&gt;#&lt;issueNum&gt; &lt;issueSummary&gt;,
  where &lt;PR&gt; is the 2-character abbreviation for this project
  - &lt;issueSummary&gt; shortened/abbreviated as indicated
- Task BranchName generally matches TaskName
  - exceptions: BranchName all  lower-case, with spaces replaced with '-'
- top-level Task may use multiple branches
  - then branch names replace &lt;issueSummary&gt; with &lt;branchSummary&gt;

# [gnu nano](https://linuxhint.com/gnu_nano_editor/)
- shortcuts
  - rG get Help
  - rX exit
  - rO write out
  - rR read file
  - rW where is
  - r\ replace
  - rK cut text
  - rU uncut text
  - rJ justify
  - rT to spell
  - rC cur pos
  - r(space?) go to line
  - M-U undo
  - M-E Redo


https://www.freecodecamp.org/news/how-to-configure-your-macos-terminal-with-zsh-like-a-pro-c0ab3f3c1156/

IntelliJ Plugin Customization:
- [_] Java Frameworks
- [+] Build Tools
- [+] JavaScript Development
- Version Control
  - [+] Git
  - [+] GitHub
- [+] Test Tools
- [_] Application Servers
- [_] Swing
- [_] Android
- [+] Database Tools
- [+] Other Tools
- [_] Plugin Development
