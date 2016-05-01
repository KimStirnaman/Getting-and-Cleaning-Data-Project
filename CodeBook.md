#Code Book for Getting and Cleaning Data Project

##Source of Data
The data source of the project is:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Description of the data provided:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

##R-Script
"run_analysis.R" serves to extract all the data data provided, clean the data to provide useful 
column names, extract only the data on mean and standard deviation and merge the data into
a file called "merged.txt"

##Data Measurement information
Measurements based on type of "activity" the subject was performing.

Activities being:
Walking, Walking Upstairs, Walking Downstairs, Sitting, Standing, or Laying

measurements given as showing means and standard deviations:
subject activity tBodyAccMeanX tBodyAccMeanY tBodyAccMeanZ tBodyAccStdX tBodyAccStdY tBodyAccStdZ 
tGravityAccMeanX tGravityAccMeanY tGravityAccMeanZ tGravityAccStdX tGravityAccStdY tGravityAccStdZ 
tBodyAccJerkMeanX tBodyAccJerkMeanY tBodyAccJerkMeanZ tBodyAccJerkStdX tBodyAccJerkStdY tBodyAccJerkStdZ 
tBodyGyroMeanX tBodyGyroMeanY tBodyGyroMeanZ tBodyGyroStdX tBodyGyroStdY tBodyGyroStdZ tBodyGyroJerkMeanX 
tBodyGyroJerkMeanY tBodyGyroJerkMeanZ tBodyGyroJerkStdX tBodyGyroJerkStdY tBodyGyroJerkStdZ tBodyAccMagMean 
tBodyAccMagStd tGravityAccMagMean tGravityAccMagStd tBodyAccJerkMagMean tBodyAccJerkMagStd tBodyGyroMagMean 
tBodyGyroMagStd tBodyGyroJerkMagMean tBodyGyroJerkMagStd fBodyAccMeanX fBodyAccMeanY fBodyAccMeanZ fBodyAccStdX 
fBodyAccStdY fBodyAccStdZ fBodyAccMeanFreqX fBodyAccMeanFreqY fBodyAccMeanFreqZ fBodyAccJerkMeanX fBodyAccJerkMeanY 
fBodyAccJerkMeanZ fBodyAccJerkStdX fBodyAccJerkStdY fBodyAccJerkStdZ fBodyAccJerkMeanFreqX fBodyAccJerkMeanFreqY 
fBodyAccJerkMeanFreqZ fBodyGyroMeanX fBodyGyroMeanY fBodyGyroMeanZ fBodyGyroStdX fBodyGyroStdY fBodyGyroStdZ 
fBodyGyroMeanFreqX fBodyGyroMeanFreqY fBodyGyroMeanFreqZ fBodyAccMagMean fBodyAccMagStd fBodyAccMagMeanFreq 
fBodyBodyAccJerkMagMean fBodyBodyAccJerkMagStd fBodyBodyAccJerkMagMeanFreq fBodyBodyGyroMagMean fBodyBodyGyroMagStd 
fBodyBodyGyroMagMeanFreq fBodyBodyGyroJerkMagMean fBodyBodyGyroJerkMagStd fBodyBodyGyroJerkMagMeanFreq

