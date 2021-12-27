
function rcloneinteractivedir(){

	# Example Output without awk:
	#	-1	1877-09-11 03:32:37	1	DirName

	# Get available remotes
	cat ~/.config/rclone/rclone.conf | rg '^\[' | tr -d '[' | tr ']' ':' | fzf

	rclone ls $() | fzf

	# awk '{print $5}' | \ #  fzf #{print $5, $2, $3}

}

rcloneinteractivedir
rclone lsd $REMOTENAME: --max-depth 3 |  fzf --bind "enter:execute(rclone lsd $REMOTENAME: {})"
