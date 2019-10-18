---
id: Mac
title: Mac
sidebar_label: Mac
---

https://www.google.com/favicon.ico

Mac

# Alias

Show all Aliases
> alias

## Create Alias

1. nano .bash_profile

2. At the end write:
> alias name='open /Users/akonhardt/Desktop/myGithub/Mac.md'

3. source ~/.bash_profile

## Delete Alias

simply delete it from the ~/.bash_profile - File

## My Aliases

alias openconf="open ~/.bash_profile"
alias endconf="source ~/.bash_profile"

# Paths

/Users/akonhardt/Desktop

Bemerkung Die Überschrifft und/oder was genau gemacht wurde
epo 120 in interne bemerkung

# Shortcuts

## Klammern & Others

{} = Option + 8
[] = Option + 5

/ = Shift + 7
\ = Option + Shift + 7
| = Option + 7

Tab wiederherstellen
>Cmd + Shift + T

## Go to next Editor
Old: >Opt. + Cmd + Left
Now: >Ctrl + Tab
# Terminal

# Environmental Variable

Show Variables:
    echo $PATH
    echo $NODE_PATHS
    
    pico /etc/paths



Edit Path:
    https://hathaway.cc/2008/06/how-to-edit-your-path-environment-variables-on-mac/

    1. touch ~/.bash_profile; open ~/.bash_profile         / ls -l ~/.bash_profile; open ~/.bash_profile
    2. write at the end of File:
        export PATH="$HOME/.rbenv/bin:$PATH"
        e.g.
        export PATH=/Users/akonhardt/Desktop/apache-maven-3.6.1:$PATH
        OR
        export PATH=$PATH:/Users/akonhardt/Desktop/apache-maven-3.6.1
    3. source ~/.bash_profile

- python

    import os
    os.environ["GOOGLE_APPLICATION_CREDENTIALS"] = "path_to_your_.json_credential_file"

## Navigation

cd
ls

> pwd - Show Current Path


## Create

File
>touch asd.txt

Directory
>mkdir Asd

## Text Editor in Terminal

pico textfile.txt
nano textfile.txt

## Others

sudo shutdown -h now

### Lock Screen

Ctrl + Cmd + Q

1. set Mission Control to a Corner
2. Desktops, Swipe with 3 Fingers; CMD ->

3. CMD + N new Winwod
4. CMD + Q quit, instead of minimize

3 Finger nach oben
3 Finger nach rechts/links		wechsel Desktop

# Installations

brew install git

git config --global user.name "Your Name"
git config --global user.email "you@your-domain.com"

- generate ssh key

brew install node@10

- Add the bin/ directory for this Node.js installation to your PATH:
- /usr/local/opt/node@10/bin


brew install yarn


brew install mysql

brew cask install libreoffice
brew cask install docker


# Ssh

e.g. 
ssh search-app.twt.intern

Username ist devel, dann:
- ssh devel@search-app.twt.intern


# Installed Apps

- Spectacle (Short Keys to change display)
- Alfred
- Pulse Secure (VPN connection)
- Filezilla (work with files from ssh connection)


## Spectacle - Short Keys

- install Spectacle App
    - Maximize Window   -> Cmd + Up
    -  Next Display     -> Cmd + Right
    - Previous Display  -> Cmd + Left

# Alfred

- install Alfred (Ctrl + Space)

- Search for Files
    - open file.txt
    - find file.txt



# Virtual Box

- Fangen auflösen:
    - Cmd Links


# Search Files for specific Phrase

grep -rnw /path/for/search/ -e 'insert phrase here'