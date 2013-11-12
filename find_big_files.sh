#!/bin/bash

get_first_2() {
	du -s * 2>/dev/null | sort -nr | head -2 | awk '{print $2}'
}

cd /
for i in $(seq 0 3); do
	for j in $(seq 0 $i); do
		echo -n " "
	done
	dirs="$(get_first_2)"
	echo $dirs
	dir="$(echo "$dirs" | head -1)"
	cd $dir
done
