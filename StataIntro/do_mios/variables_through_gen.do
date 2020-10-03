* variables

* swd
cd "C://Users/Lenovo/Desktop/stata_harvard/StataIntro" // absolute path
cd dataSets // Changing to a subdirectory of the parent directory (relative path)

use gss.dta, clear

// create a new variable named mc_inc
  //   equal to inc minus the mean of inc
  gen mc_inc = inc - 15.37

  
/* the 'generate and replace' strategy */ 
  // generate a column of missings
  gen age_wealth = .
  // Next, start adding your qualifications
  replace age_wealth=1 if age<30 & inc < 10
  replace age_wealth=2 if age<30 & inc > 10
  replace age_wealth=3 if age>30 & inc < 10
  replace age_wealth=4 if age>30 & inc > 10

  // conditions can also be combined with "or"
  gen young=0
  replace young=1 if age_wealth==1 | age_wealth==2  
