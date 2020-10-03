* Basic data management

* swd
cd "C://Users/Lenovo/Desktop/stata_harvard/StataIntro" // absolute path
cd dataSets // Changing to a subdirectory of the parent directory (relative path)

* variable labels

/* Labelling and renaming */
  // Label variable inc "household income"
  label var inc "household income"

  // change the name 'educ' to 'education'
  rename educ education

  // you can search names and labels with 'lookfor' 
  lookfor household
  
/*define a value label for sex */
  label define mySexLabel 1 "Male" 2 "Female"
  /* assign our label set to the sex variable*/
  label val sex  mySexLabel  
  
  