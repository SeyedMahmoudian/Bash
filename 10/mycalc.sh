#!/bin/bash
# Lab10
# Seyedamin Seyedmahmoudian
# Section 310
# 2015-04-02
# This is a simple calculator that will add or substract two number from each other
# the script will support two way to opperate its function first one is by accepting 
# no paramater and three paramater


add ()
{
((sum = $1+$2))
echo "The sum of $1 plus $2 equals" $sum 
}

sub (){
((sum = $1-$2))
echo "The subtract of $1 minus $2 equals" $sum 
}


menu1 ()
{
echo "C)Calculation"
echo "X)Exit"
}

menu2 ()
{
echo "please enter an integer number or x to exit " 

}

menu3 ()
{
echo "+) Add"
echo "-) Substract"
echo "X) Exit"

}

pfunction(){
if [ $2 = + ]
then
add $1 $3

elif [ $2 = - ]
then
sub $1 $3
fi
}

nfunction ()
{

creader=n
while [ $creader != "x" ] && [ $creader != "X" ]
do
menu1
read m1
if  [ $m1 = "x" ] || [ $m1 = "X" ]
then
	exit
elif [ $m1 = "C" ] || [ $m1 = "c" ]
then
	menu2
	read m21
	if [ $m21 = "X" ] || [ $m21 = "x" ]
	then
		exit
	else 
		menu3
		read m3

		if [ $m3 = + ]
		then
			menu2
			read m22
			add $m21 $m22
		elif [ $m3 = - ]
		then
			menu2
			read m22
			sub $m21 $m22
		fi
	fi
fi
done
}
if [ $# -eq 3 ]
then
pfunction $1 $2 $3
elif [ $# -eq 0 ]
then
nfunction
else

echo "you can not have more than 3 paramater or less than 3"
fi

