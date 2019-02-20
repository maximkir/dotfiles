# Maxim's dotfiles.

This repo contains my personal dotfiles and are heavily based on [addy](https://github.com/addyosmani/dotfiles)'s.

## Some differences

* Various scripts that used by launch daemon

## Install the neccessary apps

My basic setup is captured in `install-deps.sh` which adds homebrew, z, nave, etc.

## Private config

Toss it into a file called `.extra` which you do not commit to this repo and just keep in your `~/`

I do something nice with my `PATH` there:

```shell
# PATH like a bawss
      PATH=/opt/local/bin
PATH=$PATH:/opt/local/sbin
PATH=$PATH:/bin
PATH=$PATH:~/.rvm/bin
PATH=$PATH:~/code/git-friendly
# ...

export PATH
```

## Syntax highlighting

…is really important. even for these files.

add the below to this file: `~/Library/Application Support/Sublime Text 3/Packages/ShellScript/Shell-Unix-Generic.tmLanguage`

```xml
<string>.aliases</string>
<string>.bash_profile</string>
<string>.bash_prompt</string>
<string>.bashrc</string>
<string>.brew</string>
<string>.exports</string>
<string>.functions</string>
<string>.git</string>
<string>.gitattributes</string>
<string>.gitconfig</string>
<string>.gitignore</string>
<string>.inputrc</string>
<string>.osx</string>
<string>.vim</string>
<string>.vimrc</string>
```



### Sensible OS X defaults

When setting up a new Mac, you may want to set some sensible OS X defaults:

```bash
./.osx
```

## Similar projects

I recommend getting a [`.jshintrc`](https://github.com/jshint/node-jshint/blob/master/.jshintrc) and [`.editorconfig`](http://editorconfig.org/) defined for all your projects.


## My Favorite Parts


### Moving around in folders (`z`, `...`, `cdf`)
`z` helps you jump around to whatever folder. It uses actual real magic to determine where you should jump to. Seperately there's some `...` aliases to shorten `cd ../..` and `..`, `....` etc. Then, if you have a folder open in Finder, `cdf` will bring you to it.
```sh
z dotfiles
z blog
....      # drop back equivalent to cd ../../..
z public
cdf       # cd to whatever's up in Finder
```
`z` learns only once its installed so you'll have to cd around for a bit to get it taught.
Lastly, I use `open .` to open Finder from this path. (That's just available normally.)

## Overview of files

####  Automatic config
* `.ackrc` - for ack (better than grep)
* `.vimrc`, `.vim` - vim config, obv.

#### Shell environement
* `.aliases`
* `.bash_profile`
* `.bash_prompt`
* `.bashrc`
* `.exports`
* `.functions`
* `.extra` - not included, explained above

#### Manual run
* `install-deps.sh` - random apps i need installed
* `.osx` - run on a fresh osx machine
* `.brew` - homebrew intialization

#### git, brah
* `.git`
* `.gitattributes`
* `.gitconfig`
* `.gitignore`

* `.inputrc` - config for bash readline


## Installation

```bash
git clone https://github.com/maximkir/dotfiles.git && cd dotfiles && ./sync.sh
```

To update later on, just run the sync again.
