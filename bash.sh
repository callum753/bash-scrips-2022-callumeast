#!/bin/sh

#user input 
echo hello, nice to meet you what your name 

read varname 

echo Its nice to meet you $varname, this is a program to install lamp and check the dictrory structer plus to check to see a programeis installed of not 
#LAMP install
for i in {3..1}
do
   echo "installing LAMP techonagle in: $1"
   sleep 1
done 
#will loop until it gets down to one then will ask user for the root paasword and install LAMP installed 


#LAMP techonagle 
sudo apt update 
sudo apt upgrade -y
sudo apt install apache2 -y
sudo systemctl status apache2
sudo apt install mariadb-server mariadb-client
sudo systemctl status mariadb
sudo mysql_secure_installation 
sudo apt install php-y
a2enmod php8.1 

#tree
apt install tree 
cd 
cd/home 
tree 
#will check the tree dicrory 

#if else to check if a program is installed 
while true 
do 
read -p "please enter to name of the programe you want to see if installed"
if pidof -qx "$REPLY"; then 
echo "that program is installed "
else 
echo "that program is not installed or spelled wrong "
fi 
done 
# the  Read will ask the user to input what programe they looking for 
# then line 40 will check it against the ID of the program that the user enterd 
# next line will output the first echo if the programm is installed 
# then if its not installed the program will output the 2nd echo 
# then the program will finish and exit 

