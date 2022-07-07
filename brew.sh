# The following script installs utilities via brew

# make sure we have xcode tools

echo "Installing XCode tools..."
xcode-select —-install

# update brew and any local packages

echo "Updating Homebrew..."
brew update
brew upgrade

# then get the good stuff

echo "Installing packages..."
brew install hugo
brew install node