CLEANUPDIR=/tmp/

MAXAGE=+1

echo "  removing files from $CLEANUPDIR older than $MAXAGE days from folders:"
find $CLEANUPDIR  -maxdepth 1 -type d -mtime $MAXAGE | xargs rm -rf -v 2>/dev/null
echo "  file cleanup done."

