# first arg ($1) = directory
# second arg ($2) = file pattern
DEBT=$(find $1 -name $2 -exec grep "TODO\|HACK\|FIXME" {} \; | wc -l | sed 's/^ *//g')

# uncomment one of the following two lines:
# Option A: 
# this will just echo it to the screen
echo "Tech Debt: $DEBT"

# Option B:
# Send a metric to statsd from bash (see http://dev.nuclearrooster.com/2011/05/11/sending-metrics-to-statsd-from-bash/)
# UNCOMMENT THE BELOW
#echo "debt.hacks:$DEBT|g" | nc -w 1 -u 127.0.0.1 8125
