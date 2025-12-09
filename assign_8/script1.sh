#!/bin/bash

# Log file to store alerts
LOG_FILE="resource_monitor.log"

# Function to check CPU and memory usage
check_resources() {
    # Get CPU usage (user + system)
    CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
    # Get memory usage percentage
    MEM_USAGE=$(free | grep Mem | awk '{print $3/$2 * 100.0}')

    # Initialize alert flag
    ALERT_TRIGGERED=0

    # Check if CPU usage exceeds 80%
    if (( $(echo "$CPU_USAGE > 80" | bc -l) )); then
        echo "ALERT: High CPU usage detected: $CPU_USAGE%" | tee -a "$LOG_FILE"
        ALERT_TRIGGERED=1
    fi

    # Check if memory usage exceeds 90%
    if (( $(echo "$MEM_USAGE > 90" | bc -l) )); then
        echo "ALERT: High Memory usage detected: $MEM_USAGE%" | tee -a "$LOG_FILE"
        ALERT_TRIGGERED=1
    fi

    # Print normal status if no alert
    if [ "$ALERT_TRIGGERED" -eq 0 ]; then
        echo "CPU Usage: $CPU_USAGE%, Memory Usage: $MEM_USAGE% - Normal"
    fi
}

# Run the check every minute
while true; do
    check_resources
    sleep 60
done
