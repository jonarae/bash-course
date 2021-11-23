#! /bin/bash

computername=`hostname`
echo "[using \`hostname\`]"
echo "Computer Name: $computername"
echo "------"

ipaddresses=$(ifconfig | grep -v inet6 | grep inet | awk '{print $2}' | grep -v 127)
echo "[using \$(ifconfig | grep -v inet6 | grep inet | awk '{print \$2}' | grep -v 127)]"
echo "IP Addresses: $ipaddresses"
echo "------"

echo "[using \`who|wc -l\`]"
echo "Number of sessions on this system: `who|wc -l`"
echo "------"

echo "[using \$(who | awk '{print \$1}')]"
echo "The users connected to this system: $(who | awk '{print $1}')"
echo "------"
