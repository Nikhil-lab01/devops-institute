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
echo "Report Complete"
echo "Bye"
