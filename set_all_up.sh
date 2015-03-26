if [ -z "$2" ]; then
    echo "set_all_up.sh script_dir username"
    exit -1
fi
for dir in $(ls ./test_cases)
do
    ./test_cases/$dir/setup.sh $1 $2
done

