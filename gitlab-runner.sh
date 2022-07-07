#Installs and configures Gitlab Runner

sudo curl --output /usr/local/bin/gitlab-runner "https://gitlab-runner-downloads.s3.amazonaws.com/latest/binaries/gitlab-runner-darwin-arm64"
echo "Installing gitlab-runner..."

echo "Setting permissions..."
sudo chmod +x /usr/local/bin/gitlab-runner

echo "Final installation..."
cd ~
gitlab-runner install
gitlab-runner start

echo
echo "Installation is complete. Would you like to register the runner now?"
#input

read -r -t 10 -p 'Y/N ' a
if [[ $a = "Y" || $a = "y"  ]]; then
    gitlab-runner register
fi
if [[ $a = "N" || $a = "n"  ]]; then
    echo "Done!"
fi