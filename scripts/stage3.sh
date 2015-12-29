#!/bin/bash

base_url="http://distfiles.gentoo.org/releases/amd64/autobuilds/"
current_stage3=$(curl -s "${base_url}latest-stage3-amd64-nomultilib.txt" | grep -v "^#" | cut -f1 -d " ")

mount /dev/sda4 /mnt/gentoo

cd /mnt/gentoo
wget "${base_url}${current_stage3}"
tar xvjpf stage3-amd64-nomultilib-*.tar.bz2
rm -f stage3-amd64-nomultilib-*.tar.bz2
