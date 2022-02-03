Iter0 planning #3

#### First Try at Release content

*stable, satisfactory development environment*

- documentation
  - includes all relevant content created since repository DevSupport, last changed 9 Nov 2019
  - all content in its permanent folder
  - moving toward creation of images for inclusion in documentation<br/><br/>

- keymaps
  - define document type for Keymap
    - supports eventually
      - parsing special keys to display with their established icons
      - marking some rows to be included in a learning / summary reference
        - as shortcuts are learned, move learned shortcuts out and new ones in
  - document Keymaps<br/><br/>

- IDE
  - review settings
  - for performance: remove many libraries<br/><br/>

- shell support
  - Z shell
    - see "Move to Zsh", notes from conference-docs/macsysadmin.se, speaker Armin Briegel
    - basic scripting support, including configuration
      - see DevOps "Developer Support" #3
      - reduce/remove shell use from Feature-Branch-Workflow.md
  - evaluate iTerm<br/><br/>

- accessibility
  - learn and adopt macOS Voice Control (see macOS System)
  - maybe some basic workflow support
  - understand basic accessibility support options for macOS and iOS
  - some basic macos/ios support<br/><br/>

- Continuing Education
  - new project LearningActivities
    - for now: hosts Kanban board for Continuing Education for Carol
    - ultimately: data for Tuxedo website
      - must be private?
  - ZenHub Board Continuing Education
  - IntelliJ Features tutorials<br/><br/>

- macOS System adoption and configuration
  - Time Machine
  - learn and adopt macOS Voice Control<br/><br/>

#### "Iter0" stuff
*prepare milestone 2021Q1-1 for first sprint to start 02/15/2021*

- [ x ] dev-proj Iteration-0 (this document)<br/><br/>

- [ x ] IntelliJ config: Tasks<br/><br/>

- [ x ] update Feature Branch Workflow<br/><br/>

- [ ] ZenHub/Development Workflow
<br/><br/>
  - [ ] workflow Design-Develop: development process from the perspective of ZenHub Roadmaps and Boards<br/><br/>

  - [ ] workflow Sprint (implements a Milestone)<br/><br/>

- [ x ] reorganize \docs folder
  - now:
    - \docs/
      - DevOps/
        - from-Notes-app/; starter-wiki/ (documents to be incorporated via Epic Gather-Info)
        - tools/
        - workflows/
          - Feature Branch Workflow
      - Tuxedo
        - TuxedoDev.md (-&gt;cebcar-entities)
  - target:
    - \docs
      - cebcar-dev/
        - (disappearing soon) from-Notes-app/; starter-wiki/ (documents to be incorporated via Epic Gather-Info)
        - tools
        - workflows
          - Feature Branch Workflow
        - dev-proj
          - tx0-Iteration-0 (this content)
        - Entities.md (from TuxedoDev.md)<br/><br/>

- [ ] documentation passes inspection<br/><br/>

- [ ] cebcar-dev Entities.md (from TuxedoDev.md)
  - Repo Project
  - Sprint: time-blocked development effort to implement a Milestone
  - Workflow
  - ZenHub Workflow (manage Design and Develop boards)<br/><br/>

- ??
```text

- [ ] workflow Design-and-Develop: development process from the perspective of ZenHub Roadmaps and Boards<br/><br/>

- [ ] workflow Sprint (implements a Milestone)<br/><br/>
```

- [ ] cebcar-dev Conventions.md
  - leading backslash (`\docs`) to represent a root directory
    - backslash character renders correctly in [standard(?](https://markdowntohtml.com) markdown;
      IntelliJ Preview displays as double;
      using character #92 does not help<br/><br/>
  - add blank line to text
    - ZenHub issues use '<br/><br>' at end of previous line(!) for vertical separation
    - in IntelliJ, use line '<br/>\n'(?)
  - info for todos in documentation
    - standard todos: html comment containing `\todo`
    - documentation todos: html comment containing `\docs`

- [ ] dev project Gather Existing Info
  
  *gather relevant documentation and issues from our previous development work*
  - in previous development, little has been done to capture previous documentation and issues when starting a new Repo Project<br/><br/>

- [ ] dev project Establish Development Environment
  
  *establish a stable and satisfactory development environment*
  - link from Dev Project issues to their documents
  - plan for showing documentation "not yet implemented" in rendered document`
