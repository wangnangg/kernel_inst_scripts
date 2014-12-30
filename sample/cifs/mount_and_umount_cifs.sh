while ! mount -t cifs -o username=huawei,password=123,sec=ntlmv2 //127.0.0.1/tobeshared /home/huawei/share
	do
        echo "error in mounting cifs"
        sleep 0.1
	done

while ! umount /home/huawei/share
	do
		echo "error in umount cifs"
		sleep 0.1
	done
