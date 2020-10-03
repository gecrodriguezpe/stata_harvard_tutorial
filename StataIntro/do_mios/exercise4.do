* manipulating variables

* swd
cd "C://Users/Lenovo/Desktop/stata_harvard/StataIntro" // absolute path
cd dataSets // Changing to a subdirectory of the parent directory (relative path)

use gss.dta, clear

* First variable
gen age2 = age^2

* Second variable 
gen high_income = 0

replace high_income = 1 if inc > 15 

* third variable 
gen divorced_var = 0

//replace divorced_var = 1 if marital=="divorced" | marital=="separated" (generates some sort of error)
