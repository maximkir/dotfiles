#!/bin/bash
cd "$(dirname "$0")"
git pull

function doIt() {
	rsync   --exclude ".git/" \
	        --exclude ".DS_Store" \
	        --exclude "sync.sh" \
	        --exclude "README.md" \
	        --exclude ".idea/" \
	        --exclude ".brew" \
	        --exclude ".osx" \
	        --exclude "Caskfile" \
	        --exclude "install-deps.sh" \
	        --archive \
	        --verbose \
	        . \
	        ~
}

function addScriptsToLaunchDaemon() {

    for myPlistFile in $(find Library/LaunchAgents/ -name *.plist -type f -exec basename {} \;)
    do
        # Using '@' as delimiter since '$HOME' will probably contain a slashes
        sed -i.bak "s@USER_HOME@${HOME}@g" ~/Library/LaunchAgents/${myPlistFile}
        rm -f ~/Library/LaunchAgents/${myPlistFile}.bak

        echo "Adding Scripts to Launch Daemon of OSX: ~/Library/LaunchAgents/${myPlistFile}"
        launchctl unload -w ~/Library/LaunchAgents/${myPlistFile}
        launchctl load -w ~/Library/LaunchAgents/${myPlistFile}
    done
}


if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt
		addScriptsToLaunchDaemon
	fi
fi
unset doIt addScriptsToLaunchDaemon
source ~/.bash_profile