NUM=0
TOTAL=150000
while test $NUM -lt $TOTAL 
	do
		echo "${NUM}th run"
		$*
		NUM=$(($NUM+1))
	done
