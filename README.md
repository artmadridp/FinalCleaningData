# FinalCleaningData
Final "Getting and cleaning data" project.

This project takes data from an experiment regarding wearable computing from the UCI Human Activity Recognition Using Smartphones dataset <a href> http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones </a href> and creates a tidy data set, fit for analysis, based on a certain set of parameters. It is all executed within one script, which is included in this repo ("run_analysis.R")

##Libraries used
The project uses the following additional libraries:
*LaF: A library used to manipulate large files. Used in particular for fixed-width-files in this project. Additional info:<a href> https://cran.r-project.org/web/packages/LaF/vignettes/LaF-manual.pdf </a href>
*plyr: A library that facilitates the application of the split-apply-combine pattern in R. Example tutoria: <a href> http://plyr.had.co.nz/09-user/ </a href>

## General flow of the project
The project itself consists of eight steps, executed in order, to generate the tidy data set of variable averages:
1. Read all necessary data
The largest files from source data (X_test and X_train) are fixed width files, with 561 columns of 16 characters each. This makes it challenging to read them in computers with low memory using read.fwf. LaF was used, as it is much faster and more memory efficient. All other files were read using read.delim
2. Create column for activity data label
Activity is tabulated using numbers 1-6. Creating an additional row that translates those numbers into their corresponding activities early on facilitates the binding of the full dataset later on
3. Bind all necessary data, creating one full dataset
rbind and cbind were used to maintain the original order and ensure the different files could fit into one, large dataset.
4. Add headers to full dataset
The headers were creating using data from the "features.txt" file, and adding three additional headers at the beginning (Subject, Activity number and Activity)
5. Extract columns that have relevant information
Since only columns that include a mean and a standard deviation were required, grep was used to extricate the relevant 66 rows. Note that some columns, which included the word "mean", were excluded purposefully as they referred to the weighted average of the frequency components, and not the arithmetic mean of the values, as was specified
6. Edit data labels
Data labels were edited to follow the principles laid out during lesson 1 of week 4, namely:
..1. All lower case when possible
..2. Descriptive (e.g. Diagnosis vs. Dx)
..3. Not duplicated
..4. Not have underscores or dots or white spaces
7. Create small dataset of averages
Using the ddply function from plyr, a smaller dataset was created that averaged every relevant variable by subject and activity type
8. Write text file
Finally, a text file was created to be uploaded into this repo ("tidydata.txt")
