if [[ -z "$1" ]]; then
	echo "setup.sh script_dir"
	exit -1
fi
script_dir=$1

test_dir=$script_dir/test_cases/mlock

c_file=$test_dir/call_mlock.c
test_file=$test_dir/test

gcc $c_file -o $test_file

echo "setup mlock success."
