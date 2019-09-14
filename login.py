#!/data/data/com.termux/files/usr/bin/env python

import getpass
import hashlib
import sys
import os

password = getpass.getpass()

filepass = open("/data/data/com.termux/files/usr/bin/.pass", "r")
filepass = filepass.read().split("\n")[0]

password = password.encode()
password = hashlib.sha1(password).hexdigest()

if password != filepass:
    print("Invalid password")
    os.system("exit")
else:
    os.system("direct-ubuntu")
    
