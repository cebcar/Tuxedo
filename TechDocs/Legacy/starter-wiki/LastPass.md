#### Install LastPass with CLI
install lastpass
install lastpass cli <https://github.com/lastpass/lastpass-cli>
  - install homebrew
    - "Homebrew has enabled anonymous aggregate formulae and cask analytics."
      -  see <https://docs.brew.sh/Analytics>
  - brew install lastpass-cli
    - installs lastpassCLI
      - with dependencies curl, openssl@1.1, libgpg-error, libassuan, pinentry
    - Bash completion @ /usr/local/etc/bash_completion.d

...w#3bd!here2b... 
me&gk3+1b32b33b3

#### Add SSH passphrase to LastPass
see <https://devopsheaven.com/ssh/security/lastpass/devops/2018/06/13/ssh-lastpass-cli.html>

export LPASS_HOME=~/.lpass
export LPASS_AGENT_TIMEOUT=0
lpass login <your_email@your_email_server>

echo "SSH passphrase? "; read passphrase; \
printf "Private Key: %s\nPublic Key: %s"\
"$(cat ~/.ssh/id_rsa)" "$(cat ~/.ssh/id_rsa.pub)" | \
lpass add --non-interactive \
--sync=now "${passphrase}" \
--note-type=ssh-key

lpass show ${passphrase}

#### SSH setup
echo "SSH passphrase? "; read passphrase; printf "Private Key: %s\nPublic Key: %s" "$(cat ~/.ssh/id_rsa)" "$(cat ~/.ssh/id_rsa.pub)" | lpass add --non-interactive --sync=now "${passphrase}" --note-type=ssh-key

lpass show ${passphrase}