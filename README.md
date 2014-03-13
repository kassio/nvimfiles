# vimfiles

[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/kassio/vimfiles/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

* Author: Kassio Borges <<kassioborgesm@gmail.com>>
* Since: 2011/02

<b>All this configurations was created and tested on mac & linux.</b>

## Download

        git clone git://github.com/kassio/vimfiles.git ~/.vim

## Setup

* If your vim version < 7.4 so you'll need the `.vimrc` in you $HOME

        ln -s $HOME/.vim/vimrc $HOME/.vimrc

* Install NeoBundle and all bundles:

	cd $HOME/.vim && ./setup

## Files you should to read

* vimrc         # Vim customizations
* neobundle.vim # Plugins list

## Plugins customizations

All the plugins customizations are located on `plugin` folder.

## Snippets

It's being used `neosnippets` and all my snippets are located on `snippets`
folder, the helper functions are located on `autoload/helper.vim`

## Vim with zsh(on Mac, at least)

In a sunny day I tried to run `ruby` from my vim with: `:!ruby %` and then I
figured out that the vim was using the wrong `ruby`.

[To fix it](https://coderwall.com/p/w7fnxa):

edit `/etc/zshenv` and comment it:

```console
# system-wide environment settings for zsh(1)
#if [ -x /usr/libexec/path_helper ]; then
  #eval `/usr/libexec/path_helper -s`
#fi
```
