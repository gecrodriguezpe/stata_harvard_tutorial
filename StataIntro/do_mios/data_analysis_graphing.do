***********************
* Inspecting data files

* swd
cd "C://Users/Lenovo/Desktop/stata_harvard/StataIntro" // absolute path
cd dataSets // Changing to a subdirectory of the parent directory (relative path)

***********************************
* Commands for inspecting a dataset
***********************************

use gss.dta, clear

* decribe data in memory or in file
describe educ region age

* summary statistics
sum educ region age

* describe data contents of a variable
codebook educ region age

* list value of variables 
// list region 

* cross tabulated variables (max. 2)
tab region sex

* view data in spreadsheet-like window
// browse educ region age


************************
* Basic graphic commands 
************************

/*  
For multiple 
lines
of comments
*/
  
/* Histograms */
  hist educ
  
/* scatterplots */
   twoway (scatter educ age)  
  
* Multiple scatter plots  in one chart  
graph matrix educ age inc

************************
* The "by" command 
************************

* By Processing
bysort sex: tab happy // tabulate happy separately for men and women

bysort marital: sum educ // summarize eudcation by marital status
