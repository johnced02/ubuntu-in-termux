#!/data/data/com.termux/files/usr/bin/bash

clear

#TODO: hide input
read -p "Enter new password: " passone;
read -p "Repeat password: " passtwo;

if [ $passone = $passtwo ];
then
	touch /data/data/com.termux/files/usr/bin/.pass
	python -c "import hashlib; print(hashlib.sha1(b'$passone').hexdigest())" > /data/data/com.termux/files/usr/bin/.pass
	echo "Registered successfully"
	echo 'You can now start ubuntu using typing "root"'
elif [ $passone != $passtwo ];
then
	echo "Password doesn't match"
fi
