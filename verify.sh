echo "testing deactivation"
echo 0 > /sys/kernel/debug/$1
$2 $3 $4
dmesg | grep $1 | tail -n 1 
echo "testing activation"
echo 1 > /sys/kernel/debug/$1
$2 $3 $4
dmesg | grep $1 | tail -n 1 
