* Exercise 3: Variable labels and value labels

* swd
cd "C://Users/Lenovo/Desktop/stata_harvard/StataIntro" // absolute path
cd dataSets // Changing to a subdirectory of the parent directory (relative path)

import delimited gss.csv, clear

describe
sum

************************
* renaming and labeling: 

// var1
rename v1 marital 
label var marital "marital status"

// var2
rename v2 age
label var age "age of respondent" 

// var3
rename v3 educ
label var educ "education"

// var4
rename v4 sex
label var sex "respondent's sex"

// var5
rename v5 inc
label var inc "household income"

// var6
rename v6 happy 
label var happy "general happiness"

// var7
rename v7 region
label var region "region of interview"

describe 
sum 

*******************************************
* Adding value labels to *marital* variable

// 1. def the label

label define marital_label 1 "married" 2 "widowed" 3 "divorced" 4 "separated" 5 "never married"  

tab marital

// 2. label val marital marital_label

label val marital marital_label

tab marital
