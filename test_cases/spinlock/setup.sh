if [[ -z "$1" ]]; then
	echo "setup.sh script_dir"
	exit -1
fi
script_dir=$1

test_dir=$script_dir/test_cases/spinlock

c_file=$test_dir/spinlock.c
test_file=$test_dir/test
gcc $c_file -o $test_file

c_file=$test_dir/spinunlock.c
test_file=$test_dir/untest
gcc $c_file -o $test_file

echo "setup spinlock success."

