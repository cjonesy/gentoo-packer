#!/bin/bash

cat << EOF >> /mnt/gentoo/etc/portage/make.conf
# use ruby 2.2
RUBY_TARGETS="ruby20 ruby21 ruby22"
EOF

cat << EOF >> /mnt/gentoo/etc/portage/package.accept_keywords
=dev-ruby/rdoc-4.2.1 ~amd64
=dev-ruby/minitest-5.8.3 ~amd64
=dev-ruby/rubygems-2.5.1 ~amd64
=dev-ruby/test-unit-3.1.5-r1 ~amd64
=dev-ruby/json-1.8.3 ~amd64
=dev-ruby/rake-10.4.2 ~amd64
=virtual/rubygems-11 ~amd64
=app-eselect/eselect-ruby-20141227 ~amd64
=dev-lang/ruby-2.2.4 ~amd64
=dev-ruby/racc-1.4.14 ~amd64
=dev-ruby/power_assert-0.2.6 ~amd64
EOF

chroot /mnt/gentoo /bin/bash << EOF
env-update && source /etc/profile
emerge --autounmask-write ruby:2.2
eselect ruby set ruby22
EOF
