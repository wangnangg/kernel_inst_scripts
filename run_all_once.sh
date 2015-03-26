for dir in $(ls ./test_cases)
do
    echo "running $dir"
    ./test_cases/$dir/test
done

dmesg | grep aging_trigger --color

