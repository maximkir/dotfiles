# https://github.com/jamiew/git-friendly
# the `push` command which copies the github compare URL to my clipboard is heaven
sudo bash < <( curl https://raw.github.com/jamiew/git-friendly/master/install.sh)

# https://rvm.io
# rvm for the rubiess
curl -L https://get.rvm.io | bash -s stable --ruby

# homebrew!
# you need the code CLI tools YOU FOOL.
[[ "$OSTYPE" == "darwin"* ]] && /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# https://github.com/rupa/z
# z, oh how i love you
mkdir -p ~/dotfiles/z
curl -L https://raw.github.com/rupa/z/master/z.sh > ~/dotfiles/z/z.sh
chmod +x ~/dotfiles/z/z.sh
