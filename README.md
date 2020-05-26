# dotfiles
- My config files for i3-gaps, i3status and i3lock.
- My color schemes for tilix and slack.
- My zsh stuff.
- The Jupyter Notebook theme I use from [dunovank](https://github.com/dunovank/iPython-Notebook-Theme).

## To use my setups

PS: I'm assuming you have i3-gaps, i3stats and tilix (if you want to use my terminal colorscheme) installed - and you probably should look through the i3 file and install the stuff you want to use.

## General stuff

```sh
mv ~/.spacemacs ~/.spacemacs_bckp
mv ~/.config/compton.conf ~/.config/compton.conf_bckp
mv ~/.zshrc ~/zshrc_bckp

ls -s $DOTFILES/.spacemacs ~/.spacemacs
ln -s $DOTFILES/compton.conf ~/.config/compton.conf
ln -s $DOTFILES/.zshrc ~/.zshrc
```

## Theme specific stuff

```
mv ~/.config/i3/config ~/.config/i3/config_bckp
mv ~/.config/i3status/config ~/.config/i3status/config_bckp

ln -s $DOTFILES/theme-folder/i3 ~/.config/i3/config
ln -s $DOTFILES/theme-folder/i3status ~/.config/i3status/config
ln -s $DOTFILES/red-orange-pink/emacs-theme.el ~/.emacs.d/private/gimme-a-nice-name.el
```

Now press `mod+r` to reload and see everything working since life is beautiful.

If you installed tilix:

`cp tilix.json ~/.config/tilix/schemes/gimme_a_nice_name.json`

And the theme will appear as an option in Profiles > Edit Profile > Color

You'll need to reload again, and also make sure you have compton installed.

To get a nice lock screen
`cp lock.sh i3lock ~/`
(I keep them in $HOME dir, and the bindings assume they are there, but feel free to move them to a smarter place)
