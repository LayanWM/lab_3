#!/bin/bash
# Authors : Layan Makhtoum
# Date: 20/09/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!
#asking the user to enter the file name 
echo "enter the file name" 
#storing the file name
read fN
#asking the user to enter the regular expression
echo "enter a regular expression"
#store regular expression
read rE
#print the regular expression  from the file name 
grep $rE $fN
# count the number of the phones number in the file(regex_practice)
egrep -c "^[0-9]{3}-[0-9]{3}-[0-9]{4}$" "regex_practice.txt"
#count the number of emails  in the file (regex_practice)
egrep -c "^\b[a-zA-Z0-9.-]+@[a-zA-Z0-9.-]+.[a-zA-Z0-9.-]+\b$" "regex_practice.txt"
#print all the phone number start with 303(hhave area code of 303)
egrep -o "^303-[0-9]{3}-[0-9]{4}$" "regex_practice.txt"
#store all the emails from geocities.com  
grep "geocities.com" "regex_practice.txt">>email_results.txt

