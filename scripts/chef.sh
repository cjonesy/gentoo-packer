#!/bin/bash

# install Chef
chroot /mnt/gentoo /bin/bash << EOF
gem install chef --no-rdoc --no-ri
EOF
