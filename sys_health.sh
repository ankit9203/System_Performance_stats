#!/bin/bash
CPU_usage(){
top -bn1 | grep "Cpu(s)" | awk '{usage=$2 +$4; printf "CPU usage= %.2f%%\n Nice = %.2f%%\n Idle = %.2f%%\n",usage, $6, $8 }'
}
Memory_usage(){
free  | awk '/Mem:/ {used=$3; total=$2; printf "Memory used = %.2f%%", (used/total)*100}'
echo -e "\n"
free  | awk '/Mem:/ {free=$4; total=$2; printf "Memory free = %.2f%%", (free/total)* 100}'
}
Disk_usage(){
df  | awk 'NR==2 {used=$3; total=$2; printf "Disk used = %.2f%%", (used/total)*100}'
echo -e "\n"
df  | awk 'NR==2 {free=$4; total=$2; printf "Disk free = %.2f%%", (free/total)* 100}'
}
CPU_tally(){
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6
}
Memory_tally(){
ps -eo pid,comm,%mem --sort=-%mem | head -n 6
}
uptime_funct(){
echo -e "\n\n\n----The device has been up for:"
uptime -p
}
log(){
echo -e "\n\n\n-----The logged users are:"
who
}
os(){
echo "System details are:"
cat /etc/os-release
echo -e "\n\n\n"
}
load(){
echo -e "\n\n\n---Load average is:"
uptime | awk -F'load average:' ' {print $2 }'
}

main(){
os

echo "------ System health status ------"
echo -e "\n\n------- CPU Usage -------"
CPU_usage
echo -e "\n\n-------- Memory usage -------"
Memory_usage
echo -e "\n\n-------- Disk usage ---------"
Disk_usage
echo -e  "\n\n------- Top 5 CPU usage-------"
CPU_tally
echo -e "\n\n------ Top 5 Memory Usage ------"
Memory_tally

uptime_funct

log


load

}
main | tee system_health.log





