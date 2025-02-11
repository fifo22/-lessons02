#!/bin/bash
#
timestamp=$(date +"%Y%m%d_%H%M%S")
file_path="/home/user/${timestamp}.txt"
touch $file_path

#Результат:
#fifo@fifo-VMware-Virtual-Platform:~$ sudo su
#[sudo] пароль для fifo: 
#root@fifo-VMware-Virtual-Platform:/home/fifo# ls /home/user
#root@fifo-VMware-Virtual-Platform:/home/fifo# systemctl daemon-reload
#root@fifo-VMware-Virtual-Platform:/home/fifo# systemctl enable test-service.service
#Created symlink /etc/systemd/system/multi-user.target.wants/test-service.service -> /etc/systemd/system/test-service.service.
#root@fifo-VMware-Virtual-Platform:/home/fifo# systemctl start test-service.service
#root@fifo-VMware-Virtual-Platform:/home/fifo# ls /home/user
#20250211_095304.txt  20250211_095305.txt
#root@fifo-VMware-Virtual-Platform:/home/fifo# systemctl status test-service.service
#× test-service.service - Test service
#     Loaded: loaded (/etc/systemd/system/test-service.service; enabled; preset: enabled)
#     Active: failed (Result: start-limit-hit) since Tue 2025-02-11 09:53:05 +03; 33s ago
#   Duration: 4ms
#    Process: 4552 ExecStart=/root/04.sh (code=exited, status=0/SUCCESS)
#   Main PID: 4552 (code=exited, status=0/SUCCESS)
#        CPU: 4ms
#
#фев 11 09:53:05 fifo-VMware-Virtual-Platform systemd[1]: test-service.service: Scheduled restart job, restart counter is at 5.
#фев 11 09:53:05 fifo-VMware-Virtual-Platform systemd[1]: test-service.service: Start request repeated too quickly.
#фев 11 09:53:05 fifo-VMware-Virtual-Platform systemd[1]: test-service.service: Failed with result 'start-limit-hit'.
#фев 11 09:53:05 fifo-VMware-Virtual-Platform systemd[1]: Failed to start test-service.service - Test service.
#root@fifo-VMware-Virtual-Platform:/home/fifo# 

#Только не понятно, почему фэйлы в статусе сервиса Active: failed и фев 11 09:53:05 fifo-VMware-Virtual-Platform systemd[1]: Failed to start test-service.service - Test service.
#сервис отрабатывает, новые файлы создаются

