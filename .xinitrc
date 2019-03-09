# xrdb -merge ~/.Xresources

# merge .Xresources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# include colorscheme
[[ -f ~/.Xcolors ]] && xrdb -merge -I$HOME ~/.Xcolors

# should this be changed to a better command?
exec i3
# exec bspwm
