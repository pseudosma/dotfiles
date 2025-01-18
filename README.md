# Dotfiles

My dotfiles, destined for a machine running macOS. These are loosely based on the example by [Mathias](https://github.com/mathiasbynens/dotfiles) and tailored for my own iOS centric development needs. This repo also functions as a checklist for setting up a new machine.

> :warning: If you want to give these settings a try, you should fork this repository, review the code, and remove things you don’t want. Don’t blindly execute these scripts unless you know what that entails. Caveat Emptor, "with great power comes great responsibility", etc.

## Starting from Scratch

If this is a fresh install of macOS, you'll need to install Git, set up the user info and SSH keys to clone this repo.

- [ ] Open Terminal and install XCode Command Line Tools:

```bash
xcode-select --install
```

- [ ] If you haven't created it already, make a user in [GitHub](https://github.com).

- [ ] Using Terminal, add your user and email to the git config (replacing the last values on each command). This should match the user you created on GitHub:

```bash
git config --global user.name yourUserName
```

```bash
git config --global user.email yourEmailAddress
```

> :warning: You will need to add these values again if you run the `git.sh` script since it'll overwrite the git config file.

- [ ] Follow the [instructions](https://docs.github.com/en/authentication/connecting-to-github-with-ssh) on GitHub for creating SSH keys.

- [ ] Clone this repo to your Desktop folder.

- [ ] Before running, be sure to give all files in this repo execute perms:

```bash
chmod -R a+x ~/Desktop/dotFiles
```

- [ ] Begin executing the scripts, starting with `system.sh` and then `brew.sh`. After that the order does not matter.

## Software Checklist

The following applications need to be installed through traditional means.

- [ ] XCode
- [ ] VSCode
- [ ] pgAdmin
- [ ] GIMP
- [ ] Blender
- [ ] Edge
- [ ] Firefox
- [ ] Chrome
- [ ] Docker
- [ ] NodeJS

## Migration Actions

If you're migrating from another machine, be sure to take the following actions:

- [ ] Export bookmarks and reading list
- [ ] Set up calendar and email

### Download VSCode plugins

- [ ] Rest Client
- [ ] Code Spell Checker
- [ ] Markdown AutoTOC
- [ ] Markdown Checkboxes
- [ ] Markdown Preview Mermaid Support
- [ ] markdownlint
- [ ] SQLTools
- [ ] SQLTools PostgresSQL/Redshift Driver
- [ ] MongoDB

### VSCode Miscellaneous

- [ ] Set up `zsh` as the integrated terminal by adding this line to settings:

    ```json
        {
            ...
            "terminal.integrated.profiles.osx": {
                "zsh": {
                    "path": "zsh",
                },
            },
            "terminal.integrated.fontFamily": "'Roboto Mono Light for Powerline', 'PowerlineSymbols'"
        }
    ```

### XCode

- [ ] Under `Preferences > Accounts`, set up an account to match your AppleID.
