# dotfiles
- My config files for i3-gaps, i3status and i3lock.
- My color schemes for tilix and slack.
- My zsh stuff.
- The Jupyter Notebook theme I use from [dunovank](https://github.com/dunovank/iPython-Notebook-Theme).

## To use my setups

My current setups are Ruby Love and Cyberpunk. Both folders have the same file structure, and you just need to copy the stuff to the right place. So here we go.

PS: I'm assuming you have i3-gaps, i3stats and tilix (if you want to use my terminal colorscheme) installed - and you probably should look through the i3 file and install the stuff you want to use.

`cd ruby-conf` or `cd cyberpunk`

`cp i3 ~/.config/i3/config`
`cp i3status ~/.config/i3status/config`

Now press `mod+r` to reload and see everything working since life is beautiful.

If you installed tilix:

`cp tilix.json ~/.config/tilix/schemes/gimme_a_nice_name.json`

And the theme will appear as an option in Profiles > Edit Profile > Color

Now some extra stuff, return to the parent directory

`cd ..`

And get your compton to turn on some nice shadows:

`cp compton.conf ~/.config/compton.conf`

You'll need to reload again, and also make sure you have compton installed.

To get a nice lock screen
`cp lock.sh i3lock ~/`
(I keep them in $HOME dir, and the bindings assume they are there, but feel free to move them to a smarter place)

And finally, if you want to install Oh-My-Zsh and use what I use,

`cp .zshrc ~/`
