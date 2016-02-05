
## VIM Setup

Following the method described here http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/


## Adding a plugin with Pathogen and git submodules 

```
    git submodule add https://github.com/vim-airline/vim-airline bundle/vim-airline
```


## Create symlinks:

```
    ln -s ~/myconf/vim/vimrc ~/.vimrc
    ln -s ~/myconf/vim ~/.vim
```
Make sure the Pathogen URL is set inside the vimrc (call pathogen#infect('~/myconf/vim/bundle/{}'))


## Instal Plugins

Switch to the `~/.vim` directory, and fetch submodules:

    cd ~/.vim
    git submodule init
    git submodule update
