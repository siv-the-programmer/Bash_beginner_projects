#!/bin/bash

# Weathersim a text based weather simulator
# Random Text is pulled from a .txt file using the <shuf -n 1 command>

# Clear screen
clear

#----------------Check-function-----------------
Check(){
shu=$(shuf -n 1 forecast.txt) # shuf → shuffle lines of input (randomize them).
                              # -n 1 → only output 1 line from that shuffled input.
echo "Today's weather is $shu" 
sleep 3
clear
}
#----------------Exit-function-----------------
exit_program(){
echo "Thank you for using the Program"
echo "Goodbye, Take care"
sleep 1
exit
}
#----------------Main----------------------
main(){
while true; do

echo """

        WEATHER SIMULATOR
                        by Sivario.B

        1) Check weather randomly
        2) Exit program

"""
echo "Selection press 1 or 2 >"
read Select

if [ "$Select" = "1" ]; then
Check
elif [ "$Select" = "2" ]; then
exit_program

else
   echo "incorrect selection"
   sleep 2
   clear
fi
done
}
main