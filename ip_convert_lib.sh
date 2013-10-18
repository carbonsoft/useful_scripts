#!/bin/bash

# Author: Oleg Strizhechenko
# Description: library provides two function to convert ip address
#              from human-oriented view to digital and backward

ip2string() {
	a=$(($1>>24))
	b=$(($1-(a<<24)>>16))
	c=$((($1-(a<<24)-(b<<16))>>8))
	d=$((($1-(a<<24)-(b<<16))-(c<<8)))
	echo $a.$b.$c.$d
}


string2ip() {
	read a b c d <<< "$(echo ${1//./ })"
	echo $(( (a<<24) + (b<<16) + (c<<8) + d))       
}
