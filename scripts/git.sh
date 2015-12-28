#!/bin/bash

# remove git's dependency on 50+ perl modules.
cat <<EOF >> /mnt/gentoo/etc/portage/package.use/git
# git with no dependency
dev-vcs/git -curl -perl -gpg -webdav
EOF

# install git
chroot /mnt/gentoo emerge dev-vcs/git

# install svn
chroot /mnt/gentoo emerge subversion
