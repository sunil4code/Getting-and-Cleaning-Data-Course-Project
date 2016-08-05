# Getting-and-Cleaning-Data-Course-Project
Final Project for the Coursera project "Getting and Cleaning Data Course Project"

Below are the steps i followed to complete the assignment
Step 1:

1) Read in the training data into data frame  variable "X_train"

2) Read in the training labels into data frame  variable "y_train"

3) Read in the training subject data into data frame  variable "subject_train"

4) Read in the testing data into data frame  variable "X_test"

5) Read in the testing labels into data frame  variable "y_test"

6) Read in the testing subject data into data frame  variable "subject_test"

7) Using cbind combine the training subject , labels and data set data frames into the 'training_data" data frame

8) Using cbind combine the testing subject , labels and data set data frames into the 'testing_data" data frame

9) Combine training data and testing data using rbind to get "all_data" data frame ("10299 obs. of  563 variables")

Step 2: Extract columns that are means and standard devaitions

From the features_info.txt file it is clear that variable names with "mean" in them are means ( mean(): Mean value ; meanFreq(): Weighted average of the frequency components to obtain a mean frequency ) So to get mean values we can grep for "mean"

For standard deviation according to the file the variable name has "std()" ( std(): Standard deviation) , so we can grep for "std()" to get standard devaition.  

10) Load the features files into r

11) Rename the variable names of "all_data" data frame taking care to name the first 2 variables as subject and activity respectively

12) Get the column names

13) Grep for "mean" and "std()" to get mean and standard deviation variables and store it in "filteredVars" making sure to include Subject and Activity as the first 2 columns

14) Using "filterdVars" get all mean and standard deviation columns and store it in New_all_data

Step 3: Using descriptive names for Activities

15) Load the activity_labels file into Activity_labels variable

16) Rename the column to "Activity" and "Activity Description"

17) Merge the data frames "New_all_data" and "Activity_labels" and assign it to New_all_data
** using str(New_all_data) we can see that first columns now is Actvity, second Subject and the very last column is the activity description. 

18) Reorder the columns and make Subject first column , Actvity the second followed by all other columns

Setp 4: Appropriately labels the data set with descriptive variable names.

This has already been done in step 11. All variables has descriptive names

Step 5:From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

19) Group the data by suject and activity and find the means of all data columns

20) Reanme the column1 as "Subject"

21) Reanme the column1 as "Activity Description"

22) Write the data into file.
