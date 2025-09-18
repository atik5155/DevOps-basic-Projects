#!/bin/bash

# Script: service_monitor.sh
# Purpose: Check if Nginx is running, restart if stopped

SERVICE="nginx"

if systemctl is-active --quiet $SERVICE; then
    echo "$(date): $SERVICE is running"
else
    echo "$(date): $SERVICE is NOT running. Restarting..."
    sudo systemctl start $SERVICE
fi
