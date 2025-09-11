# 🐧 Linux Automation Project with Bash

This project demonstrates how to automate **common Linux system administration tasks** using **Bash scripting**.  
It includes scripts for **user management, file backup & restore, service monitoring**, and uses **cron jobs** for scheduling.  

---

## 🚀 Project Overview
- Automated **user creation** with password setup.  
- Created **backup & restore script** for files and directories.  
- Implemented **service monitoring** (checks if Nginx is running and restarts it if needed).  
- Configured **cron jobs** to run scripts on a schedule.  

---

## 🛠️ Skills Used
- **Linux (Amazon Linux 2 / Ubuntu / RHEL)**  
- **Bash Scripting**  
- **System Administration**  
- **Cron Jobs**  
- **Nginx (Service Monitoring Example)**  

---

## 📂 Project Structure
**linux-automation-project/**
```
├── user_creation.sh # Script for automating user creation
├── backup_restore.sh # Script for file backup and restore
├── service_monitor.sh # Script to monitor & restart Nginx
├── cron_jobs.txt # Example cron job entries
└── README.md # Project documentation
```

---

## ⚙️ Scripts & Usage

### 1️⃣ User Creation Script
```bash
bash user_creation.sh
```
- **Creates a new user with home directory and bash shell.**
- **Prompts for password setup.**

## 2️⃣ File Backup & Restore
```bash
service_monitor.sh
```
- **Checks if Nginx is running.**
- **If not running → automatically restarts it.**

## 4️⃣ Automating with Cron Jobs
**Add to crontab -e:**  
```bash
# Run backup every day at 2 AM
0 2 * * * /home/ec2-user/linux-automation-project/backup_restore.sh 1 >> /home/ec2-user/backup.log 2>&1

# Check Nginx every 5 minutes
*/5 * * * * /home/ec2-user/linux-automation-project/service_monitor.sh >> /home/ec2-user/service.log 2>&1
```
