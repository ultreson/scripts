#!/bin/bash
# Author : https://github.com/ultreson
# Creation Date : 2021-03-08
# this script requires a date as a parameter as $1


display_help() {
  echo "Usage:" >&2
  echo "  log-current-installed-packages.sh [fileName]"
  exit 1
}

savePackages() {
  save_path=$HOME'/software installers/install-logs/'
  log_extension='.list'
  final_save_path=$save_path
  final_save_path+=$1
  final_save_path+=$log_extension
  #apt list --manual-installed | grep -F \[installed\] 
  apt-mark showmanual > "${final_save_path}"
  echo "saved packages to \"${final_save_path}\""
}

if [ $# -eq 0 ]
  then
    echo "Error: No argument supplied"
    echo "  please supply date under the format yyyy-mm-dd"
    display_help
fi

savePackages $1

# cron * 12 * * * bash ~/scripts/vlog-current-installed-packages.sh $(date +%Y.%m.%d)
