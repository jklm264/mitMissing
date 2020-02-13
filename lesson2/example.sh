#!/bin/bash

# $0 - program name
# $# - num of args
# $$ - pid
# $? - last execution's exit code

echo "Starting program at $(date)"

echo "Running program $0 with $# arguments with pid $$"

for file in "$@"; do
	grep foobar "$file" > /dev/null 2> /dev/null

	if [[ "$?" -ne 0 ]]; then # If last exit code is not 0 (success), assume fail and create new file
		echo "File $file does not have any foobar, adding one"
		echo "# foobar" >> "$file"
	fi
done
