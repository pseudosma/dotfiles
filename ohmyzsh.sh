# Installs and configures OhMyZsh

cd ~
echo "Getting OhMyZsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" --unattended

# change the shell to zsh

chsh -s $(which zsh)
echo
echo "Installing plugins..."
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
echo
echo "Installing Powerline fonts"
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
echo
echo "Be sure to update the ~/.zshrc file and add the following plugins:"
echo "---"
echo "plugins=(git brew ansible battery cp doctl extract history npm oc pm2 thefuck tmux vagrant vagrant-prompt zsh-navigation-tools
zsh-autosuggestions zsh-syntax-highlighting zsh-completions)"
echo
echo "Be sure to update the theme:"
echo "---"
echo 'ZSH_THEME="agnoster"'
echo "---"
echo
echo "Remember to set your terminal's font to 'Roboto Mono Light for Powerline'"
echo
echo "Would you like to make the changes to the zsh config now?"

#input

read -r -t 20 -p 'Y/N ' a
if [[ $a = "Y" || $a = "y"  ]]; then
    open ~/.zshrc
fi
if [[ $a = "N" || $a = "n"  ]]; then
    echo "Done!"
fi
