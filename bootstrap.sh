#!/bin/sh -x

which pkg

if [ $? -ne 0 ]; then
  echo "pkgng is not installed!"
  pkg_add ./pkg.tbz

  echo "PACKAGESITE : http://pkgbeta.freebsd.org/freebsd-9-amd64/latest/" > /usr/local/etc/pkg.conf

  pkg update
  # Update pkgng itself
  pkg install -y pkg
  # Install rsync(1) so we don't have to fall back to tar(1)+scp(1) ever again
  pkg install -y rsync
  # Install puppet so we can get that up and running
  pkg install -y puppet
fi

puppet apply --modulepath=./modules --verbose manifests/site.pp
