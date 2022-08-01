#!/bin/bash -x

echo "WELCOME TO EMPLOYEE WAGE PROGRAM"

ispresent=1
randomcheck=$((RANDOM%2))

if [ $ispresent -eq $randomcheck ]
then
echo "Employee is present"

else
echo "Employee is absent"
fi

wageperhr=20
empfulldayhr=8

fulldaywage=$(( $wageperhr * $empfulldayhr ))
echo "Employee full day wage is $fulldaywage"

empPartTimehr=4

partTimewage=$(( $wageperhr * $empPartTimehr ))
echo "Employee part time wage is $partTimewage"

if [ $ispresent -eq $randomcheck ]
then
rateperhr=20
isfulltime=1
isparttime=2

empcheck=$((RANDOM%3))

case $empcheck in
$isfulltime)
        emphrs=8;;
$isparttime)
        emphrs=4;;
*)
        emphrs=0;;
esac

dailywage=$(( $rateperhr * $emphrs ))
echo "Employee wage is $dailywage"

else
echo "Employee wage is 0"
fi

