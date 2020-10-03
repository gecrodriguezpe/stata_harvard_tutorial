* Exercise 2: Descriptive statistics

* swd
cd "C://Users/Lenovo/Desktop/stata_harvard/StataIntro" // absolute path
cd dataSets // Changing to a subdirectory of the parent directory (relative path)

* importing stata .dta file
use gss.dta

* analyze the dataset

* 1. Examine a few selected variables using the describe, sum and codebook commands

// describe age educ sex
// sum age educ sex
// codebook age educ sex

* 2. Tabulate the variable, "marital," with and without labels

tab marital
tab marital, nolabel

* 3. Summarize the variable, "income" by marital status

bysort marital: sum inc

* 4. Cross-tabulate marital with region

tab marital region

* 5. Summarize the variable happy for married individuals only

// bysort marital: sum inc if marital=="married" 
