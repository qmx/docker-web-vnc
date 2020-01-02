#!/bin/sh

set -e

if [ -z "${VNC_PASSWORD}" ]; then
	echo  "VNC_PASSWORD missing"
	exit 1;
fi

echo "${VNC_PASSWORD}" | vncpasswd -f > /vncpassword

exec vncserver -PasswordFile /vncpassword -localhost no -geometry 1366x1024 -xstartup /usr/local/bin/start-firefox.sh -fg
