# This script explores a new package, 'imfr', which exists to Download Data 
# from the International Monetary Fund's Data API

# NOTE: As of 10 January, 2017, I haven't been able to get this package to work. I get this error whenever running things:

# Error: lexical error: invalid char in json text.
# <html xmlns="http://www.w3.org/
# (right here) ------^

# NOTE: I should try the same command from my office computer.


# install.packages("imfr") 
library(imfr)

real_ex <- imf_data(database_id = 'IFS', indicator = 'EREER_IX',
                    country = c('CN', 'GB'), freq = 'A',
                    start = 2013, end = current_year())

all_iso2c() # Data frame of 253 ISO two letter country codes 

imf_codelist("4", return_raw = TRUE, times = 3) # Retrieve the code list of codes 
# (codelist) for an individual IMF database.

imf_codes(codelist, return_raw = FALSE, times = 3) # Retrieve individual database codes

imf_data() # Download data from the IMF

imf_ids(return_raw = TRUE, times = 3) # Lists the IMF database IDs

# Note that the IFS id is '4' and that there are about 75 different databases 
# included here.

