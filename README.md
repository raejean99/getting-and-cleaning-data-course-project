# getting-and-cleaning-data-course-project
Coursera/getting-and-cleaning-data-course-project/Week4/Assignment

# 
Assignment: Getting and Cleaning Data Course Project
https://www.coursera.org/learn/data-cleaning/peer/FIZtT/getting-and-cleaning-data-course-project

# 
The dataset includes the following files:

- 'README.md'

- 'run_analysis.R': The required scripts to complete the assignment. 

- 'CodeBook.md':  Describes the variables, the data.

- 'tidy_mean.txt': Independent tidy data set with the average of each variable for each activity and each subject.

# Descirption of run_analysis.R scripts

Background: 
1. Use correct work directory. 

2. Load library "reshape2".'

Steps:
1. Load 6 activity labels into R.
2. Load 561 features into R.
3. Grep only the "mean" and "std" related measurement. This step will require some manipulations on strings. 
   So first, the factor is converted to characters. Secondly, it searches for the rows which contains measurement matching regular
   Expressions  ".*mean.*|.*std.*".
4. Continue with string manipulations. It renames the feature names by removing "_" and "-()".
5. Load the 2947 rows from test data set. 
   Subset the data set by taking only the rows related to "mean" or "std".
   Combine the columns of subject, activity, and values.
6. Similarly, load the 2947 rows from train data set. 
   Subset the data set by taking only the rows related to "mean" or "std".
   Combine the columns of subject, activity, and values.
7. Combine the rows from test and train, assign the result to a variable named "merged".
8. Assign the column names to merged. Add "subject" and "activity" as the first 2 column names. 
9. Change the values in the "activity" column from 1,2,3,4,5,6 to their labels: WALKING,
   WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.
10. Reshape the measurement columns into rows. Using "feature" and "value" as the new column names.
11. Cast the mean values into data frame.
12. Write the tidy data set into a file named "tidy.txt".
13. Write the tidy mean data set into a file named "tidy_mean.txt".

Notes: 
======
- output files are using "\t" as new line character.

