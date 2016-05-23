## Code Book

##
Assignment: Getting and Cleaning Data Course Week 4 Project

https://www.coursera.org/learn/data-cleaning/peer/FIZtT/getting-and-cleaning-data-course-project

##
Original: Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

For each original record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

## This is the Code Book for the tidy_mean.txt file.

subject: the user ID of the volunteer users. ID is from 1 to 30.

activity: the type of activity performed when the corresponding measurements were taken. 

1 WALKING

2 WALKING_UPSTAIRS

3 WALKING_DOWNSTAIRS

4 SITTING

5 STANDING

6 LAYING 

feature: 79 feature related to "mean" and "std", selected out of 561 features. Some modification to the feature name has been done. Such as: "-" is removed from the result set. For instances,

 [1] tBodyAccmeanX   that is: tBodyAcc-mean()-X           
 [2] tBodyAccmeanY   that is: tBodyAcc-mean()-Y            
 [3] tBodyAccmeanZ   that is: tBodyAcc-mean()-Z            
 [4] tBodyAccstdX    that is: tBodyAcc-std()-X            
 [5] tBodyAccstdY    that is: tBodyAcc-std()-Y            
 [6] tBodyAccstdZ    that is: tBodyAcc-std()-Z   
 
 The rules apply to all the 79 feature names.
 
 [7] tGravityAccmeanX            
 [8] tGravityAccmeanY            
 [9] tGravityAccmeanZ            
[10] tGravityAccstdX             
[11] tGravityAccstdY             
[12] tGravityAccstdZ             
[13] tBodyAccJerkmeanX           
[14] tBodyAccJerkmeanY           
[15] tBodyAccJerkmeanZ           
[16] tBodyAccJerkstdX            
[17] tBodyAccJerkstdY            
[18] tBodyAccJerkstdZ            
[19] tBodyGyromeanX              
[20] tBodyGyromeanY              
[21] tBodyGyromeanZ              
[22] tBodyGyrostdX               
[23] tBodyGyrostdY               
[24] tBodyGyrostdZ               
[25] tBodyGyroJerkmeanX          
[26] tBodyGyroJerkmeanY          
[27] tBodyGyroJerkmeanZ          
[28] tBodyGyroJerkstdX           
[29] tBodyGyroJerkstdY           
[30] tBodyGyroJerkstdZ           
[31] tBodyAccMagmean             
[32] tBodyAccMagstd              
[33] tGravityAccMagmean          
[34] tGravityAccMagstd           
[35] tBodyAccJerkMagmean         
[36] tBodyAccJerkMagstd          
[37] tBodyGyroMagmean            
[38] tBodyGyroMagstd             
[39] tBodyGyroJerkMagmean        
[40] tBodyGyroJerkMagstd         
[41] fBodyAccmeanX               
[42] fBodyAccmeanY               
[43] fBodyAccmeanZ               
[44] fBodyAccstdX                
[45] fBodyAccstdY                
[46] fBodyAccstdZ                
[47] fBodyAccmeanFreqX           
[48] fBodyAccmeanFreqY           
[49] fBodyAccmeanFreqZ           
[50] fBodyAccJerkmeanX           
[51] fBodyAccJerkmeanY           
[52] fBodyAccJerkmeanZ           
[53] fBodyAccJerkstdX            
[54] fBodyAccJerkstdY            
[55] fBodyAccJerkstdZ            
[56] fBodyAccJerkmeanFreqX       
[57] fBodyAccJerkmeanFreqY       
[58] fBodyAccJerkmeanFreqZ       
[59] fBodyGyromeanX              
[60] fBodyGyromeanY              
[61] fBodyGyromeanZ              
[62] fBodyGyrostdX               
[63] fBodyGyrostdY               
[64] fBodyGyrostdZ               
[65] fBodyGyromeanFreqX          
[66] fBodyGyromeanFreqY          
[67] fBodyGyromeanFreqZ          
[68] fBodyAccMagmean             
[69] fBodyAccMagstd              
[70] fBodyAccMagmeanFreq         
[71] fBodyBodyAccJerkMagmean     
[72] fBodyBodyAccJerkMagstd      
[73] fBodyBodyAccJerkMagmeanFreq 
[74] fBodyBodyGyroMagmean        
[75] fBodyBodyGyroMagstd         
[76] fBodyBodyGyroMagmeanFreq    
[77] fBodyBodyGyroJerkMagmean    
[78] fBodyBodyGyroJerkMagstd     
[79] fBodyBodyGyroJerkMagmeanFreq

value: the average of each variable for each activity and each subject. 
