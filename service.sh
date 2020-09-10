#!/system/bin/sh
# Written by Draco (tytydraco @ GitHub)

# Wait for boot to finish completely
while [[ `getprop sys.boot_completed` -ne 1 ]]
do
       sleep 1
done

# Sleep an additional 2m to ensure init is finished
sleep 120

charch -k -c "/usr/bin/env bash" << EOF
	curl -s https://raw.githubusercontent.com/tytydraco/softrc/master/softrc | bash -s start
EOF
