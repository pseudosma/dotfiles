# The following script will set up a gitconfig for use with VSCode:

echo "Be sure to run this script from within the dotfiles folder."
cp filesToCopy/.gitconfig ~
mkdir -p ~/src
echo
echo "Copying git settings and ~/src directory. Be sure to install VSCode."
echo
read -r -p 'Enter username for git: ' uservar
echo "Adding username for" $uservar
git config --global user.name $uservar
read -r -p 'Enter email for git: ' emailvar
echo "Adding email for" $emailvar
git config --global user.email $emailvar
