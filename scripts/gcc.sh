#!/bin/bash

# gcc must be upgraded to avoid this bug:
# https://bugs.gentoo.org/show_bug.cgi?id=553634
chroot /mnt/gentoo /bin/bash <<'EOF'
emerge gcc:4.9
gcc-config 2
source /etc/profile
EOF
