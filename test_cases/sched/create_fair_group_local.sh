#echo 0 > /sys/kernel/debug/tracing/tracing_on
#create a dir for our cgroup
while ! mkdir ./cpu
	do
        	echo "error in mkdir cpu"
		rmdir ./cpu
		sleep 0.1	
	done
#mount a cgroup to share cpu
while ! mount -t cgroup -ocpu cpu ./cpu
	do
        	echo "error in mounting cgroup"
		sleep 0.1	
	done
#echo 1 > /sys/kernel/debug/tracing/tracing_on
#create a subgroup
while ! mkdir ./cpu/group1
	do
        	echo "error in creating group1"
		sleep 0.1	
	done
#echo 0 > /sys/kernel/debug/tracing/tracing_on
#we're done. Now roll back.
while ! rmdir ./cpu/group1
	do 
		echo "error in rmdir ./cpu/group1"
		sleep 0.1	
	done
while ! umount ./cpu 
	do
		echo "error in umount cpu"
		sleep 0.1
	done
while ! rmdir ./cpu
	do 
		echo "error in rmdir cpu"
		sleep 0.1
	done 
