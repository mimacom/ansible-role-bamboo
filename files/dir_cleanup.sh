CLEANUPDIR=/home/bambooagent/bamboo-agent-home/xml-data/build-dir/
CLEANUPDIR1=/home/bambooagent/.m2/repository
MAXAGE=+1

echo "  removing files from $CLEANUPDIR and $CLEANUPDIR1 older than $MAXAGE days from folders:"
find $CLEANUPDIR  -maxdepth 1 -type d -mtime $MAXAGE | xargs rm -rf -v 2>/dev/null
find $CLEANUPDIR1  -maxdepth 1 -type d -mtime $MAXAGE | xargs rm -rf -v 2>/dev/null
echo "  file cleanup done."


