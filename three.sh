#Sets shell script as variable MinimumCollege Wage, which concatenates 
#wages.csv, then sorts based on the comma delimiter and based off the 4th 
#column, wages, and then cuts based on the comma delimiter for columns three
#and four, which are the years of school and wage, then only displays the data
#with 16 years of school, then looks for the value at the top, which is the 
#lowest wage for someone with 16 years of schooling or a college degree, then
#cuts the second value, which is their wage

MinimumCollegeWage=$(cat wages.csv | sort -t"," -k4 | cut -d"," -f 3,4 | grep -E 16 | head -n1 | cut -d"," -f 2)

#Sets shell script as variable MinimumHighSchoolWage, which concatenates
#wages.csv, then sorts based on the comma delimiter for columns three and 
#four, which are the years of school and wage, then only displays the data with 12 years of school, then looks for the value at the top, which is the
#lowest wage for someone with 12 years of schooling or a high school degree, 
#then cuts the second value, which is their wage

MinimumHighSchoolWage=$(cat wages.csv | sort -t"," -k4 | cut -d"," -f 3,4 | grep -E 12 | head -n1)

#Repeats the values obtained from MinimumCollegeWage and MinimumHighSchoolWage
#with a minus sign between them and calculates this value and outputs it

echo "$MinimumCollegeWage - $MinimumHighSchoolWage" | bc 

