echo "candidate level 1"
if ! grep --color -f candidate /sys/kernel/debug/tracing/available_filter_functions; then
	echo "Nothing Found"
fi

