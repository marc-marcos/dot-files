# dot-files

## init.vim 
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

### Vim usage
- `F2` Shows project tree 
- `F3` Shows undo tree
- `:MarkdownPreview` Starts markdown live preview
- `:MarkdownPreviewStop` Stops the live preview
- `F9` Runs the file (if it's a Python file)
<hr>

This script has been tested only in Ubuntu, availability in other distros may be limited.
