DEBUGFS=$(grep debugfs /proc/mounts | awk '{ print $2; }');
echo "echo 0 > $DEBUGFS/tracing/tracing_on"
echo 0 > $DEBUGFS/tracing/tracing_on

echo "echo 0 > $DEBUGFS/tracing/tracing_enabled"
echo 0 > $DEBUGFS/tracing/tracing_enabled

echo "echo > $DEBUGFS/tracing/trace"
echo > $DEBUGFS/tracing/trace

echo "echo > $DEBUGFS/tracing/set_ftrace_pid"
echo > $DEBUGFS/tracing/set_ftrace_pid

echo "echo function > $DEBUGFS/tracing/current_tracer"
echo function > $DEBUGFS/tracing/current_tracer

echo "echo 1 > $DEBUGFS/tracing/tracing_enabled"
echo 1 > $DEBUGFS/tracing/tracing_enabled

echo "echo 1 > $DEBUGFS/tracing/tracing_on"
echo 1 > $DEBUGFS/tracing/tracing_on


