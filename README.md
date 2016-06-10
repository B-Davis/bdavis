# bdavis (R package)

_________________________

I initially wrote this package to create a storage area for personal functions that I can autoload upon startup. I also wanted to learn how to write my own package (success!); now I can easily and cleanly incorporate personal functions into collaboritive projects.  

## Package download instructions
From R:
Install devtools if not previously installed: install.packages("devtools")
library(devtools)
install_github("B-Davis/bdavis")

## Content

This package includes a few custom functions that are subject to change:

1. scrape() # quick and dirty web scraping tool (kinda sucks)
2. ht() # first and last 10 lines of data frame/matrix (head/tail)
3. base.change() # converts number of any base (1-26) to same number in base of choice
4. %nin% # inverse of %in% (not in)
