DEBUGFS=$(grep debugfs /proc/mounts | awk '{ print $2; }');
echo "echo 0 > $DEBUGFS/tracing/tracing_on"
echo 0 > $DEBUGFS/tracing/tracing_on

echo "echo 0 > $DEBUGFS/tracing/tracing_enabled"
echo 0 > $DEBUGFS/tracing/tracing_enabled
