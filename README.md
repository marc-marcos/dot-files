# dot-files

## vimrc
### Prerequisites
- curl
### Installation
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
- Now you can backup your old .vimrc if you like: ``mv ~/.vimrc ~/.oldVimrc``
- And move the new one to the .vimrc location: ``mv vimrc ~/.vimrc``
- Then get into ``vim`` and type the command ``:PlugInstall`` and wait for the commands to install.
Now vim is completelly setup besides YCM Completer

### YCM Completer
Install the requisites:
```
sudo apt install build-essential cmake python-dev pythone3-dev golang nodejs npm default-jre default-jdk
```

Compile and install YCM:
```
cd ~/.vim/plugged/YouCompleteMe
./install.py --all
```
When entering Vim you might be asked to restart the Ycm server. Do that by typing the command: ``:YcmServerRestart``.
Enjoy your customized version of vim.

### Vim usage
- `space + pv` Shows project tree 
- `space + u` Shows undo tree
- `:MarkdownPreview` Starts markdown live preview
- `:MarkdownPreviewStop` Stops the live preview
- `F9` Runs the file (if it's a Python file)

<hr>

This script has been tested only in Ubuntu, availability in other distros may be limited.
