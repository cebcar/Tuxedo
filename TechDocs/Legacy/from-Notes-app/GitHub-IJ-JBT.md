IntelliJ

initial configuration

VCS: GitHub: select and signin to GitHub

skeleton gitignore file at ~/Dev
to facilitate new project to be opened in IntelliJ before its ‘real' .gitignore is added
uncache: git rm —cached — <filename>

- [ ] set settings repo to [cebcar/ijconfig](https://github.com/cebcar/ijconfig)

git merge —abort
git restore --staged <file>..." to unstage


ccToolFile Template:
```
#set( $h2 = '##' )
#set( $h4 = '####' )
$h2 Tool ${NAME}
  - % @ %  
    *%*
  - **Version**: %
  - **Source**: %
  - **License**: %
  - **Critical Data**: %
  - **Source**: %
  - **Installation**: %
  - **Documentation**: %
$h4 ${NAME} **Configuration**: %
$h4 ${NAME} **Customization &amp; Automation**: %
$h4 ${NAME} **Shortcuts**: %

$h2 Using ${NAME}
```

JetBrains Toolbox
configuration:
| Category | Name | JetBrains ToolBox Setting | comment |
|:---|:---:|:---:|:---|
| ToolBox App Updates | Update ToolBox App automatically | TRUE | |
| Tools | Update all tools automatically | TRUE | |
| | Keep only the latest version | FALSE | |
| Shell Scripts | Generate shell scripts | TRUE | generated shell script can open IDE even if the full UI cannot be displayed, such as could occur with a plug-in problem |
| | Shell script path | /usr/bin/local/jetbrains | |
| Proxy | Proxy | disabled | |
| Appearance and behavior | run at login | TRUE | |
| | Send anonymous statistics to JetBrains | TRUE | |
| Shortcuts | Global shortcut to open ToolBox app | TRUE | |

shortcuts:
rcJ: open JetBrains ToolBox





token ff8fe3588a63f078061639c36968867aae2c11eb
