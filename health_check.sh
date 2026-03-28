#!/bin/bash
echo "---BRANCH REPORT ---"
date
echo ""
echo "1. DISK SPACE USAGE."
df -h | grep "/$"
echo ""
echo "2 ACTIVE NETWROK PORTS"
netstat -tuln | head -n 5
echo""
echo "3 TOP MEAMORY PROCESS"
ps aux --sort=-%mem | head -n 3
echo ""
echo "Checking DNS..." && cat /etc/resolv.conf
echo ""
echo "--- Network Security Diagnostics ---"
#1. Check internet Connectivity (Ping Google DNS)
if ping -c 1 8.8.8.8 &> /dev/null;then
   echo "[OK] Internet Connectivity: Online"
else
   echo "[ERROR] Internet Connectivity: Offline"
fi

#2. Check for open ports (Internal Security Scan)
# This mimics a basic 'netstat'to see what services are listening
echo "Active Listening Ports"
echo ""
echo "Report Complete"
echo""
echo "Bye"
