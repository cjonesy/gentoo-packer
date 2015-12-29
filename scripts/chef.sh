#!/bin/bash

# install Chef
chroot /mnt/gentoo /bin/bash << EOF
gem install chef --no-rdoc --no-ri
EOF

# Chef Omnibus
# https://gist.github.com/netshade/28800461038c924b74a1
chroot /mnt/gentoo /bin/bash << EOF
emerge -C perl-core/Module-Metadata
emerge -C perl-core/Parse-CPAN-Meta
emerge -C lang-dev/perl
emerge perl
emerge layman
echo "source /var/lib/layman/make.conf" >> /etc/portage/make.conf
echo "conf_type : make.conf" >> /etc/layman/layman.cfg
layman -o https://raw.github.com/lxmx/gentoo-overlay/master/overlay.xml -f -a lxmx
echo "app-admin/chef-omnibus ~amd64" >> /etc/portage/package.keywords
emerge app-admin/chef-omnibus
EOF
