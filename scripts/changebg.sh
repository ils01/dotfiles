cd /home/ilya/Desktop/downloads/pics/wp/favoritez/
ls | sort -R | tail -n 1 | while read file ; do
	config_path="$HOME/.config/i3/config"
	n=222
	cmd="exec_always --no-startup-id feh --bg-scale $(readlink -f $file) \&"
	echo $file
	sed -i "${n}s@.*@${cmd}@" "$config_path"
	feh --bg-scale $file &
done
