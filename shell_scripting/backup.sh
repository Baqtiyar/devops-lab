#!/bin/bash

<<Disclaimer
This script will take backups from source to target
In future, we will do a cronjob as well
Disclaimer


src_dir=/home/ec2-user/californiagit4/Scripting/Shell-Scripting
tgt_dir=/home/ec2-user/californiagit4/Scripting/Shell-Scripting/backups

backup_filename= "backup_$(date).tar.gz" 

echo "Backup Started"

echo "Backing up to $backup_filename..."

tar -czvf "${tgt_dir}/${backup_filename}" "$src_dir"

echo "Backup complete"
