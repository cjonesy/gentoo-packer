#!/bin/bash

if [[ -z $SCRIPTS ]]
then
  SCRIPTS=.
fi

chmod +x $SCRIPTS/scripts/*.sh

for script in \
  partition   \
  stage3      \
  mounts      \
  resolv.conf \
  portage     \
  git         \
  ruby        \
  chef        \
  timezone    \
  fstab       \
  kernel      \
  grub        \
  $VM_TYPE    \
  network     \
  vagrant     \
  cleanup
do
  echo "------------------------------------------------------------------------"
  echo "Running $script.sh"
  echo "------------------------------------------------------------------------"
  "$SCRIPTS/scripts/$script.sh"
done

echo "All done."
