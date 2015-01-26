USERNAME=zz78
PASSWORD=123
REMOTE_DIR=/home/zz78/kernel_inst_scripts/test_cases/cifs/remote_dir
SHARE_NAME=cifs_share
while ! mount -t cifs -o username=$USERNAME,password=$PASSWORD,sec=ntlmv2 //127.0.0.1/$SHARE_NAME $REMOTE_DIR
	do
        echo "error in mounting cifs"
        sleep 0.1
	done

while ! umount $REMOTE_DIR
	do
		echo "error in umount cifs"
		sleep 0.1
	done
