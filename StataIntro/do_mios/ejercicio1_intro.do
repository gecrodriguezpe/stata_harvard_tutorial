* Harvard do files 

* Use '*' to comment a line and '//' for in-line comments

* Make Stata say hello:
disp "Hello " "World!" // 'disp' is short for 'display'

disp "Hello" ///
     " World!"
	 
* change directory
cd "C://Users/Lenovo/Desktop/stata_harvard/StataIntro" // absolute path

cd dataSets // Changing to a subdirectory of the parent directory (relative path)

// open the gss.dta data set
use gss.dta, clear

// save data file:
save newgss.dta, replace // "replace" option means OK to overwrite existing file

* import data from a .csv file
import delimited gss.csv, clear

* save data to a .csv file
export delimited gss_new.csv, replace

* import/export SAS xport files
clear
import sasxport gss.xpt
export sasxport gss_new, replace

* import/export xlsx files
import excel gss.xlsx, clear
export excel newgss.xlsx, replace
