### System Installation

*When installing a new computer, we prefer to reinstall from scratch rather than attempting to restore the hard drive to its previous state. This helps us to keep track of what applications, tools, and other files we actually use; helps to avoid fossils in the installation process; and eliminates the risk of replicating problems from one Installation to the next.*

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
- run Software Update until it finds nothing more to update
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
