# stuff

### installing needed packages
first install all the needed packages for the i3 config with:
```
Arch:
$: sudo pacman -S - < pkglist.txt

Debian: (remove xorg and xterm from list)
$: sudo apt-get install $(grep -vE "^\s*#" pkglist.txt  | tr "\n" " ")

p.s. if u have any other distro u silly
```

### installing fonts
make a fonts folder with this `mkdir ~/.fonts` and move `DejaVu Sans Mono for Powerline 8` to it

if you want you can get the fontawesome icons / fonts. important: follow documentation

### adding config
edit `~/.config/i3/config` and paste my config into that file

### making it yours
to stop errors and have an actually working config go and edit all the directories with my usr to yours

then change as many of the extra stuff as you want for your own applications and shit

if you start getting errors and can't debug, do yourself a favor and learn it yourself

these people made some incredible documentation with plenty of examples

or if your lazy watch the 'i3' and 'urxvt' playlists from code case



###### ps this is just for future me bc i make a lot of new distros.
