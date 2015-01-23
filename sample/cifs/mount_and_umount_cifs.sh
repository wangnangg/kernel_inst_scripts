while ! mount -t cifs -o username=zz78,password=123,sec=ntlmv2 //127.0.0.1/test_share /home/zz78/share
	do
        echo "error in mounting cifs"
        sleep 0.1
	done

while ! umount /home/zz78/share
	do
		echo "error in umount cifs"
		sleep 0.1
	done
