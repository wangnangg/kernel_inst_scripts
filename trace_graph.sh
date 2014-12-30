DEBUGFS=$(grep debugfs /proc/mounts | awk '{ print $2; }');
echo $$
echo > $DEBUGFS/tracing/trace
echo $$ > $DEBUGFS/tracing/set_ftrace_pid
echo function_graph > $DEBUGFS/tracing/current_tracer
echo 1 > $DEBUGFS/tracing/tracing_on
exec $*
echo 0 > $DEBUGFS/tracing/tracing_on
