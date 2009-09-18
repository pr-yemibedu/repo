#!/usr/bin/env ruby
#
# Custom backup script
#

require 'yaml'
require 'net/ftp'
require 'pp'

def log s
  puts s
end

def s s
  s = "#{s} >> #{$log_path} 2>&1"
  log s
  system s
end

def start_log
  s "echo ---"
  s "echo `date`"  
end

def end_log
  s "echo ---"
  s "echo"
end

c = YAML::load(DATA)
timestamp = Time.now.strftime("%Y-%m-%d_%H.%M.%S")
$log_path = "#{c[:log_dir_path]}backup_#{timestamp}.log"
start_log

working = "#{c[:working]}_#{timestamp}"
file_name = "#{c[:target_name]}_#{timestamp}.tar.gz"
output_path = "#{c[:target_dir]}/#{file_name}"

# clean/create working directory
s "rm -fr #{working}"
s "mkdir --parents #{working}"

# copy target backup directories  to working directory
c[:directories].each do |path|
  s "cp -r --parents #{path} #{working}"
end

# copy target backup files  to working directory
c[:files].each do |path|
  s "cp -r --parents #{path} #{working}"
end

# create compressed backup archive
s "tar cvzf #{output_path} -C #{working} ."

# copy archive to other destination directories
c[:copyto].each do |path|
  s "cp #{output_path} #{path}/#{file_name}"
end

# clean up
s "rm -fr #{working}"

# ftp
s "echo Uploading backup archive to ftp://#{c[:ftp_host]}#{c[:ftp_dir]}/#{file_name}"
ftp = Net::FTP.new(c[:ftp_host], c[:ftp_user], c[:ftp_password])
files = ftp.chdir(c[:ftp_dir])
ftp.putbinaryfile(output_path, file_name, 1024)
ftp.close

end_log

# configuration settings below
__END__
---
:working: /tmp/backup
:target_dir: /var/backups
:target_name: backup
:output: /var/backups/backup.tar.gz
:log_dir_path: /var/log/backup/
:copyto:
  - /mnt/tricia/backups
  - /mnt/hgfs/storage01/backup/machines/ubuntu-server
:directories:
  - /etc
  - /home/notroot
  - /var/repos
  - /var/trac
  - /var/www/tw
  - /var/backups/mysql
  - /var/rails-apps/instiki-0.11.0/db
  - /var/rails-apps/solowiki/db
  - /var/rails-apps/typo/db
:files:
  - /var/backups/history
  - /var/backups/installed-packages.txt
:ftp_host: thepfeils.com
:ftp_user: thepfeil
:ftp_password: <password here>
:ftp_dir: /backups/ubuntu-server
