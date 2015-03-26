NUM=0
TOTAL=100000
while test $NUM -lt $TOTAL 
	do
		echo "${NUM}th run"
		$*
		NUM=$(($NUM+1))
	done
