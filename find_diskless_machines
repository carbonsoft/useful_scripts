#!/bin/bash

while read tmp machine tmp; do
	while read disk; do
		[ ! -f "$disk" ] && echo $machine
	done <<< "$(virsh dumpxml $machine | egrep -o "/.*(.img|.qcow|.qcow2)")"
done <<< "$(virsh list --all | grep -A 10000 -- '---' | grep -v -- '---')" | sort -u
