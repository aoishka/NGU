#!/bin/bash
get_size() {
	local path="$1"
	local size=$(du -h -s "$path" 2>/dev/null | cut -f1)
	echo $size
}

all_in_dir=$(ls -A -S)
for f_d in $all_in_dir; do
	echo -e "$(get_size "$f_d") \t  $f_d"
done

