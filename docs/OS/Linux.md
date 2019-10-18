---
id: Linux
title: Linux
sidebar_label: Linux
---

# Create Alias

## My Aliases

1. sudo nano ~/.bashrc
2. add path to the file
3. source ~/.bashrc

alias open="xdg-open"
OR
alias start="xdg-open"

alias end="sudo shutdown -h now"
alias desk="cd /home/andre/Desktop"
alias path="pwd"
alias open-conf="sudo nano ~/.bashrc"
alias save-conf="source ~/.bashrc"

## updatpee
| sudo apt-get update

| sudo apt-get upgrade

## Open Command Line
| Ctrl + Alt + T

## Shutdown

| sudo shutdown -h now

## Open File

| xdg-open filename

## Check System Information (Kernel)
| uname -a

## Ip Adresse
| ifconfig
- OR

| ip addr show
-  eth0	optional

## Check Disk Space /
| df -ah

## Check CPU Usage
| top	/ htop

- OR

| ps aux | grep processName	(eg. nginx)

## Services
| service serviceName start < serviceName >
- serviceName example: ssh, udev
- OR

| systemctl status serviceName

## Check for open Ports
| sudo netstat -tulpn

## Mounts (Check for hard drives)
| ls /mnt

| mount /dev/sda2 /mnt

| mount
- Check all

## Help

| man < command >

| man ps
- example for ps

#################################################

# Folder Permissions

## Give all Users access to Directory

    chmod -R 777 directory/


# Navigation and Files


| *ls*
- check for files in Path


| *mkdir directoryName*
- Make Directory

| *touch resume1.txt*
- Create txt file


| *rmdir*
- Removes empty Directory*

| *rm -r mydir*
- Removes full Directory	

| *rm fileName*
- Delete File

| *mv /filePath/fileName /newFilePath/fileName*
- Move File

| *cp /filePath/fileName /newFilePath/fileName*
- Copy File

| *cp -R /filePath/fileName /newFilePath/fileName*
- Copy whole Directory

| *sudo nano /filePath*
- Write File

#################################################

# Environmental Variable


## Show Variables:

    echo $PATH
    echo $NODE_PATHS

## Add something to Path Variable

export PATH=/home/andre/anaconda3/bin:$PATH

ODER

1. sudo nano ~/.bashrc
2. add path to the file
3. source ~/.bashrc


#################################################


| *sudo chmod -R 757 /filePath/file.txt*
- Grant Access to file

| *sudo service ssh start*
- Start ssh service


# Shell Script

- 
- 
- 

# nohup

- run nohup server? in the background
- TODO