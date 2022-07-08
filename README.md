# Dotfiles

My dotfiles, destined for a machine running macOS with zShell, Ruby, and Python already installed. These are loosely based on the example by [Mathias](https://github.com/mathiasbynens/dotfiles).

Before running, be sure to give all files in this repo execute perms:

```bash
chmod -R a+x ./
```
Start with `system.sh` to make sure that XCode dev tools get installed.

## Software Checklist

The following applications need to be installed through traditional means.

- [ ] XCode
- [ ] VSCode
- [ ] Azure Data Studio
- [ ] GIMP
- [ ] Blender
- [ ] Godot
- [ ] SF Symbols
- [ ] Edge
- [ ] Firefox
- [ ] Chrome
- [ ] Docker

## Other Actions

- [ ] Create new .ssh keys
- [ ] Export bookmarks and reading list
- [ ] Set up calendar and email

### Download VSCode plugins

- [ ] Rest Client
- [ ] Code Spell Checker
- [ ] Markdown AutoTOC
- [ ] Markdown Checkboxes
- [ ] Markdown Preview Mermaid Support
- [ ] markdownlint

### VSCode misc

- [ ] Set up `zsh` as the integrated terminal by adding this line to settings:

    ```json
        {
            ...
            "terminal.integrated.shell.osx": "/bin/zsh",
            "terminal.integrated.fontFamily": "'Roboto Mono Light for Powerline', 'PowerlineSymbols'"
        }
    ```

### XCode

Under `Preferences > Accounts`, set up an account to match your AppleID.