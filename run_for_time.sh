TIME_START=$(date +%s)
TOTAL_TIME=$1
CMD=${*:2}
TIME_FINISH=$(date +%s)
TIME_LEFT=$(($TOTAL_TIME - $TIME_FINISH + $TIME_START))
while [ $TIME_LEFT -gt 0  ]
do
    $CMD
    TIME_FINISH=$(date +%s)
    TIME_LEFT=$(($TOTAL_TIME - $TIME_FINISH + $TIME_START))
    echo $TIME_LEFT
done
