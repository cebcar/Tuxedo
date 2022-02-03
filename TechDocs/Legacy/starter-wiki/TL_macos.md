### BookmarksNinja

### SSH
- fetch existing key
  - scp username@hostname:/path/to/remote/file /path/to/local/file

### Mail
- save Mail settings:
  - ~/Library/Mail/V2/MailData: Accounts.plist, MessageRules.plist, Signatures/AllSignatures.plist

### Xcode
- Export Developer Account
  - Xcode : Preferences : Accounts: click settings button at bottom of list
  - save at ~/Archives
- Watchdog for Xcode

### P4Merge
- download: [Perforce p4merge downloads](https://www.perforce.com/downloads/visual-merge-tool)
- version: 2020.1
- docs: see [P4Merge User Guide](https://www.perforce.com/manuals/p4merge/Content/P4Merge/Home-p4merge.html#About_the_P4Merge_User_Guide)

### iA Writer
- for Markdown on iPad


### Finder
##### Permanently Show ~/Library Folder
  - ensure Home is in Finder favorites: Sidebar: mark Home folder for inclusion
  - Sidebar &gt; Home folder &gt; View Menu &gt; Show Library folder

***

### Catalina (10.15.4) Set Up New System

#### Preparation

git repositories
- test all targets
- check in, push, archive, tag all active repositories
- upload TechnicalDocs to candcsoft.com

run all backups: Time Machine; (??)

archive to ~/Archives:
- Contacts, Calendars
- Xcode: Xcode Developer Accounts
- Mail: Mail settings

copy ~/Archive to external location
- target: for&lt;SystemName&gt;_&lt;date&gt;
- create folder /Archives/&lt;target&gt;
- copy ~/Archives to external location /Archives/&lt;target&gt;

Mail: turn off automatic check for new mail

#### Set Up New System
- rename volume as indicated
- install new system from App Store installer
- if needed:
  - hold 'option' while restarting to boot into new system
  - hold 'cmd-R' while restarting to launch Recovery volume
    - includes Startup Disk selection

#### In New System
- update from App Store until nothing more to update
- [Finder: Permanently Show Library Folder](https://github.com/carolclark/DevOps/wiki/TL_macos#permanently-show-library-folder)
- [SSH](#SSH): fetch existing key

### Mavericks (10.9) System Installation (retired 2020/04/08)

*When installing a new computer, we prefer to reinstall from scratch rather than attempting to restore the hard drive to its previous state.
This helps us to keep track of what applications, tools, and other files we actually need; helps to avoid fossils in the installation process;
and eliminates the risk of problems from one Installation replicating onto the next.*

#### Preparation
Accessor: if indicated: customize for external partition
- to customize for external partition; see CommonSlates_C9.h leading defines
  - for external partition, runs Applications from the boot volume; uses folder Dev from main volume, CCDev from boot volume
- archive Contacts to /Archives/Contacts
- archive Calendars to /Archives/Calendars
- copy/export to external location /Archives/for<SystemName>_<date>
  - Accessor application, customized if indicated
  - Xcode Developer Accounts: Preferences:Accounts:ActionMenu
    - process requires encryption key
  - visible copy of ~/.ssh
  - ~/Library/Mail/V2/MailData: Accounts.plist, MessageRules.plist, Signatures/AllSignatures.plist
  - ~/Library/Safari/Bookmarks.plist
  - ~/Library/Keychains/login.keychain (to use, Add Keychain from Keychain Access menu)
  - Terminal settings, Contacts, Calendars
- print copy of login information
- git repositories
  - test all targets
  - check in, push, archive, tag all active repositories
  - upload TechnicalDocs to candcsoft.com
- run all backups
- Mail: turn off automatic check for new mail
#### Install System
- download OS X (for previous Systems, see App Store > Purchases); install
- copy the customized Accessor to ~/Applications; run
- make ~/Library visible: in a Finder window, select home folder; show view options; select Show Library Folder
- copy ssh data to ~/.ssh
#### Install Xcode for editing these documents
- download and install
- create folder ~/Dev
- for repositories DevSupport, Accessor, Punkin:
  - git clone https://github.com/carolclark/<Repository>.git ~/Dev/<Repository>
  - can copy repo name from GitHub site
  - build Cdoc targets
#### System Preferences
- configure, except TimeMachine
#### Connect to personal data
- copy in ~/Documents from Backup
- iTunes: configure
- iPhoto: configure
- Mail: configure
- Safari: configure
#### Support full Development functionality
- AppleScript: configure
- python3: install
- Xcode: config; build targets DevSupport/Developer, DevSupport/Cdoc
- Doxygen: configure
- Terminal:
  - configure
  - create branches as indicated for edited documents
- FileMerge
- Dash
- TextEdit: create plain text document ~/Library/CCDev/tmp/gitmessage.txt - Menlo regular 11; exactly 50 chars wide
- BBEdit: download; install; configure
- Xcode: build and test all targets
- PaintCode
- Reminders
- alias to ~/Library/CCDev/Sites/TechnicalDocs/DevSupport/Development.html to ~ and ~/Documents
- Transmit: configure
#### implement Backup
- System Preferences: Time Machine: turn on
- ChronoSync: configure
#### Additional Tools & Applications
- Marked
- iWork
- UI Browser
- Stickies
- StuffIt Expander
- Disk Inventory X
- MacPorts
- Homebrew
#### Cleanup
- delete visible copy of ~/.ssh, copy of login information