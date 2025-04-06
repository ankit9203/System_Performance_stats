# System Performance Stats

A lightweight Bash script to monitor key system performance metrics includi>
## Features

- CPU usage reporting
- Memory and swap usage
- Disk usage summary
- Top 5 processes by CPU and memory
- Output saved to `system_health.log`

---

## Getting Started

### Prerequisites

- Linux system (Ubuntu, Debian, etc.)
- Bash shell

### Setup

1. Clone the repository:
   ```bash
   git clone git@github.com:ankit9203/System_Performance_stats.git
   cd System_Performance_stats

------

2. Make the file executable:
    ```bash    
   chmod +x sys_health.sh

------

3. Run the script
	 ```bash
	./sys_health.sh

------
## Output

Results are saved in a file named `system_health.log` in the current directory.

### Example Output (Text)

```
==== System Health Report ====
Date: 2025-04-05 22:30:00

CPU Usage: 14.3%
Memory Usage: 58.7%
Swap Usage: 12.4%

Disk Usage:
/dev/sda1        50G   25G   25G  50% /

Top 5 Processes by CPU:
  PID USER     %CPU COMMAND
  124 root     35.0 chrome

Top 5 Processes by Memory:
  PID USER     %MEM COMMAND
  234 root     12.2 java
```

Author: [@ankit9203](https://github.com/ankit9203)  

---  

**License**  
This project is open source and available under the [MIT License](LICENSE).  
