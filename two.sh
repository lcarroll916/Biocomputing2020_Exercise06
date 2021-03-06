#1) Concatenates wages.csv, then sorts based on the comma delimiter and orders 
#from lowest to highest based on the 4th column, wages, then obtains the
#bottom value, which is the greatest wage, then cuts based on the comma 
#delimiter columns 1, 2, and 4 which is gender, years experience, and wage

cat wages.csv | sort -t"," -k4 | tail -n1 | cut -d"," -f 1,2,4

#2) Concatenates wages.csv, then sorts based on the comma delimiter and orders
#from lowest to highest based on the 4th column, wages, then obtains the top
#two values, which is the header and the lowest wage, then obtains the lowest of
#these two rows, which is the lowest wage, then cuts based on the comma 
#delimiter columns 1, 2, and 4 which is gender, years experience, and wage

cat wages.csv | sort -t"," -k4 | head -n2 | tail -n1 | cut -d"," -f 1, 2, 4

#3) Concatenates wages.csv, then sorts based on the comma delimiter and orders
#from lowest to highest based on the 4th column, wages, then obtains the 
#bottom 10 values, which are the top 10 highest wages, then finds which of the
#10 are females and displays their stats 

cat wages.csv | sort -t"," -k4 | tail -n10 | grep -w "female"

