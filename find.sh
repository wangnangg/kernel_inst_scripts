echo "candidate level 1"
if ! grep --color -f candidate /sys/kernel/debug/tracing/trace; then
        if (( $1 > 1 )); then
	        echo "candidate level 2"
                if ! grep --color -f candidate2 /sys/kernel/debug/tracing/trace; then
                        echo "Nothing Found"
                fi
        fi
fi

