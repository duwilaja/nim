#!/bin/bash
#
# Program : remove_rrd.sh
# Usage   : remove_rrd.sh <filename>
# Descr   : remove rrd file, no <filename> remove all

base_dir='/var/www/zping'
rrd_dir="$base_dir/rrd"

f="$1.rrd"
if [ -z "$1" ]; then
	f="*.rrd"
fi

out=`rm $rrd_dir/$f`

retval=$?

if [ $retval -gt 0 ]
then
	echo "failed deleting $f retval $retval"
	exit 202
fi

echo "success deleting $f"

exit 0
