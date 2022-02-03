Move to Zsh

*from conference-docs/macsysadmin.se*
*speaker Armin Briegel*
Multi IO
- redirect streams to multiple targets
- Multiple input streams are concatenated￼
  More/less
- `< file.txt` equivalent to `more file.txt`
- (But not less : investigate more vs less)
  Auto cd
- type a path -> assumes `cd`￼
- enable with `setopt autocd`￼
  Correction
- Nice interface; probably worth trying
- Enable with `setopt correct`￼￼￼
  `setopt sharehistory`
- share history among windows
  ~/.zshrc
  PROMPT ideas
- colored emoji depending on whether last command succeeded or failed
- Different prompt character depending on whether sudo
  Completions (tabkey)
- Default: paths, commands
- For rest of these: `autoload -Uz compinit && compinit`
- partial path (u/l/b to /usr/local/bin)
- Argument completion: type `cmdname -` - then tab shows options
- Many mac-specific Commands also included￼
- Build your own: see github.com/scriptingosx/mac-zsh-completions
  Scripting
- breaking differences to bash
  - Word splitting
    - not necessary to￼ double-quote string variables passed￼ as arguments
      - $wordlist and “$wordlist” are the same
    - To get old way:
      - countArgs ${=wordlist}
      - Or better:
      - `for x in ( ${(s/ /)wordlist ) do`
  - Array splitting
    - ```
            - macOSversion=$(sw-vers -productBuild) #10.14.6
            - versionList=$(s/./macOSversion} # ( 10 14 6 )
    - ```
  - Arrays are 1-based
  - bashisms
    - include [[ ... ]], *heredoc*, others
    - fail if run under zsh
  - Python-free one liner to get Current logged-in user @ 41:36￼
  - ```loggedInUser=$( "show State:/Users/ConsoleUser" | scutil  | awk '/Name :/ && ! /loginwindow/ { print $3 }' )```
    - shellcheck: checks for shell language issues
    - deprecated scripting languages
            - Catalina release notes state that some shells will be discontinued in a future version of macOS
            - those shells are ￼referred to here as deprecated￼
    - [about MacOS Recovery](https://support.apple.com/en-us/HT201314)
        - apparently used in Recovery mode, and also for some low level administrative operations￼
        - Shells
            - POSIX: original shell
            - sh
                - does not reject constructs it does not understand, which can result ￼in unexpected behavior
            - zsh: not installed yet￼
            - bash: deprecated in Catalina￼
                - bash scripts fall back to sh
        - dash: minimal implementation of POSIX shell￼￼
            - dash as sh will error out on "bashisms"
        - shellcheck.net/wiki/SC2039
        - /var/select/sh
        - scripting in future macOS
            - in fully booted macOS￼
                - ￼`zsh` for automation and workflows
                    - zsh scripts are backwards compatible￼
                - `sh` for installation scripts
                - other scripting languages:
                    - *could be discontinued by Apple; we would have to support ourselves*￼
                    - Python 2.7: currently installed, but no further updates are accepted
                    - Python 3: already must be installed by user
                    - speaker is not confident that Perl, ruby will be supported in the future￼
    - Swift
        -  can be run as shell script with swift shebang￼
        - but￼
            - compiled on the fly
            - requires  Xcode
        - especially good for scripting Xcode￼
 