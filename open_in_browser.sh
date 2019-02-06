#!/bin/sh
# ...
# Figure out how to invoke the current user's browser.
# See: https://dwheeler.com/essays/open-files-urls.html
viewer=FAIL
for possibility in xdg-open gnome-open cygstart start open ; do
  if command -v "$possibility" >/dev/null 2>&1 ; then
    viewer="$possibility"
    break
  fi
done
if [ "$viewer" = FAIL ] ; then
  echo 'No viewer found.' >&2
  exit 1
fi

# Now $viewer is set, so we can use it.
"$viewer" "$1"
