# The following script installs utilities via homebrew

# Make sure we have root access
sudo -v
# Then make sure we have brew installed
echo "Checking to see if Homebrew is installed"
brew -v
if [ $? -eq 0 ]; then
   echo "Homebrew is installed. Continuing..."
   echo
else
   echo "Homebrew is not installed. Working on it...."
   echo
   cd ~
   #installation
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   #add it to the path
   echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
   eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# update brew and any local packages
echo
echo "Updating Homebrew..."
brew update --force --quiet
brew upgrade

# then get the good stuff
echo
echo "Installing packages..."
brew install hugo
brew install node
brew install thefuck
brew install tmux
