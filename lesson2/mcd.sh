mcd () {
	mkdir -p "$1"
	cd "$_" || exit # This is a good error check!
}

# $shellcheck
