# Pretty dotfiles : Aurore's

These are the base dotfiles I use when setting up a new environment. For private configuration I use `.local` files, as described in the [Local Settings section](https://github.com/auroredea/dotfiles#local-settings).

Inspiration and settings for Vim proudly inspired from [Vim for humans](https://vimebook.com/en).

## Installation

Just run the following command in your terminal.

```shell
sh -c "$(curl -fsSL \
  https://raw.githubusercontent.com/auroredea/dotfiles/master/system/ubuntu.sh)"
```

### What is set up?
* [Vim](http://www.vim.org/) as your core editor
* [Pathogen](https://github.com/tpope/vim-pathogen) as your core plugin manager for Vim, and some selected vim plugins (optional).
* [Zsh](http://www.zsh.org/) as your shell
* [Oh-my-zsh](http://ohmyz.sh/) as your zsh framework

## Local Settings
This configuration can be extended or overriden to suit user-specific
requirements. You can use my own [local settings](https://github.com/auroredea/dotfiles/tree/master/local). In order to accomplish that, just create and edit the following files:
* `~/.gitconfig.local`
* `~/.vimrc.local`
* `~/.aliases.local`
* `~/.zshrc.local`

If it already exists in your `$HOME`, each of these files will be automatically included.

## Key bindings
The set of key bindings that come as default with this package are specified in the [key bindings](https://github.com/auroredea/dotfiles/blob/master/key_bindings.md)

## Aknowledgments
* Directly inspired by [dotfiles'](https://github.com/ruiafonsopereira/dotfiles) Rui.

## Licence
See the [LICENCE](https://github.com/auroredea/dotfiles/blob/master/LICENCE.md) file for licence rights and limitations.
