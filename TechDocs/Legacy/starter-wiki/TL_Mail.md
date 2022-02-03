# Tool: mac Mail

## Contents
[Mail Configuration](#Mail-Configuration)

[Mail Shortcuts](#Mail-Shortcuts)

[Mail Conventions](#Mail-Conventions)

[Considerations](#Considerations)

---
## Mail Configuration

---
## Mail Shortcuts
| Group | Action | Shortcut |
|:---|:---|:---:|
| Mail app | full screen | crF |
| message list | get all new messages | csN |
| | search for senders or content | cF |
| current received message | mark as Junk | csJ |
| | delete all Junk messages | coJ |
| | add sender to Contacts | csY |
| | print  | cP |
| outgoing messages | attach a file | csF |
| | copy and paste formatting style | csC / csV |
| | send | csD |

- reference: [10 useful keyboard shortcuts for the Mail app on Mac](https://www.idownloadblog.com/2016/03/01/keyboard-shortcuts-mail-mac/)
---
## Mail Conventions

### Rules
- as we encounter items we want to have hidden
  - add rules to move most mail to the Junk or Trash mailboxes
    - for addresses of unwanted email, add Rules to move items to Trash or Junk
      - Junk: items we expect never to see; ok to delete without scan of items
        - rule Junk, supplied by Mail App
      - Trash: items to be deleted soon; may include items like advertising that we scan before deletion
        - rule Discard
  - *see [Considerations: Remove unwanted email from main mail list](https://github.com/carolclark/DevOps/wiki/TL_Mail#remove-unwanted-email-from-main-mail-list)*
### Clean Up Mailboxes monthly
- at the start of a new month n:
  - Junk: delete all items received prior to month n-1
  - Trash: delete all items received prior to month n-1; may scan first
  - Inbox: scan for items that may now be deleted

---
## Considerations
### Remove unwanted email from main mail list
Objective: manage our email so that:
- We can filter mail according to criteria we specify.
- We can read mail either from iMac or from iOS devices.
- We see generally the same email list from all devices.
  - Exceptions may apply to special folders, such as Receipts, that contain items saved on iMac.

Considerations:
- Apparently, our previous suboptimal attempt may have failed because of the folders we chose as destinations for Mail rules. We created separate folders for several categories, but others have had more success using the existing Junk and Trash folders.
- Initially, iCloud Mail appeared to be an attractive alternative. However, It does not handle mail from other addresses. It also lacks some other standard features, such as flagging messages, that we have been using.
- mac Mail's Smart Mailboxes store search criteria for items in other mailboxes. They might be useful for classifying existing mail, but will not work for this purpose.