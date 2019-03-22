#!/bin/bash
# Lab9
# Seyedamin Seyedmahmoudian
# 040-813-340
# Section 310
# 2015-03-26
 

creader=n
while [ $creader != "Q"] && [ $creader != "q" ]
do
echo "A) Create a user account"
echo "B) Delete a user account"
echo "C) Change supplementary group for a user account "
echo "D) Change initial group for a user account"
echo "E) Change default login shell for a user account"
echo "F) Change account expiration date for a user account"
echo "Q) Quit"
read creader
sleep 3
if [ $creader = "A" ] || [ $creader = "a" ]
then
read -p "Username" username
read -p "User's home directory" directory
read -p "Default login shell" logshel
useradd -d $directory -m -s $logshel  $username
sleep 3
elif [ $creader = "B" ] || [ $creader = "b" ]
then
read -p "Username , caution you are about to delete all the files as well as all the directory inside th user home directory " username
userdel -r $username
sleep 3
elif [ $creader = "C" ] || [ $creader = "c" ]
then
read -p "Username" username
read -p "Group name" grpname
usermod -G $grpname $username
sleep 3
elif [ $creader = "D" ] || [ $creader = "d" ]
then
read -p "Username" $username
read -p "inital group" $inigroup
usermod -g $inigropu $username
sleep 3
elif [ $creader = "E" ] || [ $creader = "e" ]
then
read -p "Username" $username
read-p "Shell name" $shname
usermod -s $shname $username
sleep 3
elif [ $creader = "F" ] || [ $creader = "f" ]
then
read -p "Username" $username
read -p "expire date YYYY-MM-DD" $exdate
usermod -e $exdate $username
elif


done
