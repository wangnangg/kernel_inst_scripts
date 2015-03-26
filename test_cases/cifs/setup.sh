if [[ -z "$2" ]]; then
	echo "setup.sh script_dir username"
	exit -1
fi
script_dir=$1
username=$2

cifs_dir=$script_dir/test_cases/cifs
smb_conf=/etc/samba/smb.conf
echo "### Please set password as 123 ###"
smbpasswd -a $username

mkdir $cifs_dir/share_dir
mkdir $cifs_dir/remote_dir
if ! cat /etc/samba/smb.conf | grep aging_share; then
	echo "[aging_share]" >> $smb_conf
	echo "path = $cifs_dir/share_dir" >> $smb_conf
	echo "available = yes" >> $smb_conf
	echo "valid users = $username" >> $smb_conf
	echo "read only = no" >> $smb_conf
	echo "browseable = yes" >> $smb_conf
	echo "public = yes" >> $smb_conf
	echo "writable = yes" >> $smb_conf
fi

if ! testparm ; then
	echo "setup cifs failed."
	exit -1
fi
chkconfig smb on
chkconfig nmb on
service smb start && service smb restart

cifs_test_file=$cifs_dir/test
cifs_test_file_tmp=$cifs_dir/test.tmp
echo "USERNAME=$username" > $cifs_test_file_tmp
echo "REMOTE_DIR=$cifs_dir/remote_dir" >> $cifs_test_file_tmp
echo "SHARE_NAME=aging_share" >> $cifs_test_file_tmp
echo "PASSWORD=123" >> $cifs_test_file_tmp
cat $cifs_test_file_tmp $cifs_dir/test.template > $cifs_test_file
rm $cifs_test_file_tmp
chmod u+x $cifs_test_file
echo "setup cifs success."



