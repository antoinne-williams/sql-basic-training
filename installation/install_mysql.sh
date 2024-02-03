#!/bin/bash

# Variables
OS="$(cat /etc/os-release | grep ^PRETTY | cut -d "=" -f2 | tr -d '"')"
MYSQL_APT_CONFIG_PACKAGE="mysql-apt-config_0.8.29-1_all.deb"

# Functions
function typewriter
{
    text="$1"
    delay="$2"

    for ((i = 0; i < ${#text}; i++)); do
        echo -n "${text:$i:1}"
        sleep ${delay}
    done
    echo
    echo
}

function check_installation {

if [[ $(dpkg --list "$1" 2>/dev/null | wc -l) -gt 0 ]]; then
  echo -e "$1 is already installed. Skipping installation..."
else
  echo -e "$1 not installed. Beginning installation...\n"
  sudo apt update -y
  if [[ $1 == "mysql-server" ]]; then
    sudo apt install -y wget lsb-release
    if [[ ! -f /tmp/$MYSQL_APT_CONFIG_PACKAGE ]]; then
      wget https://dev.mysql.com/get/$MYSQL_APT_CONFIG_PACKAGE -P /tmp/
    fi
    sudo dpkg -i /tmp/mysql-apt-config*
    sudo apt update -y
  fi
  sudo apt install -y $1
fi

}


typewriter "Before we begin, please enter your first name..." .03

read trainee

typewriter "Hello $trainee! We will now begin the process of setting up your system with the prerequisites needed to install MySQL Server which is required for your SQL Training..." .01

typewriter "First, we will need to determine which Linux Distribution you are using. Checking..." .03

typewriter "Your Linux Distribution name and version are: $OS" .03

typewriter "Checking system for the GnuPG package..." .03

for i in gnupg mysql-server
do
  check_installation $i
done

sudo systemctl is-active --quiet mysql || sudo systemctl restart mysql

echo -e "\nMySQL is now installed, configured, and ready to use!"
