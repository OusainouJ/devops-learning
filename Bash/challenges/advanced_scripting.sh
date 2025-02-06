#!/bin/bash

check_disk_space() {
    echo "Disk Space Usage:"
    df -h
}

show_uptime() {
    echo "System Uptime:"
    uptime
}

backup_arena() {
    backup_dir="Arena_Backups"
    timestamp=$(date +"%Y%m%d_%H%M%S")
    backup_name="Arena_$timestamp.tar.gz"

    # Create backup directory if it doesn't exist
    mkdir -p "$backup_dir"

    
    if [ -d "Arena" ]; then
        # Create a compressed backup of the Arena directory
        tar -czf "$backup_dir/$backup_name" Arena
        echo "Backup created: $backup_dir/$backup_name"

        
        ls -1t "$backup_dir" | tail -n +4 | while read -r file; do
            rm -f "$backup_dir/$file"
        done
        echo "Old backups cleaned, keeping only the last 3."
    else
        echo "Arena directory does not exist!"
    fi
}

parse_config() {
    config_file="settings.conf"

    if [ -f "$config_file" ]; then
        echo "Configuration Settings:"
        # Read the file line by line
        while IFS='=' read -r key value; do
        
            if [[ ! -z "$key" && ! "$key" =~ ^# ]]; then
                echo "$key = $value"
            fi
        done < "$config_file"
    else
        echo "Configuration file '$config_file' not found!"
    fi
}
while true; do
    echo "----------------------"
    echo "       MENU"
    echo "----------------------"
    echo "1) Check Disk Space"
    echo "2) Show System Uptime"
    echo "3) Backup Arena Directory"
    echo "4) Parse Configuration File (settings.conf)"
    echo "----------------------"
    read -p "Enter your choice: " choice

    case $choice in
        1) check_disk_space ;;
        2) show_uptime ;;
        3) backup_arena ;;
        4) parse_config ;;
    esac
    echo
done
